package com.inspur.receivesend.rocketmq.syncBrandOwner;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.inspur.lambo.framework.aspect.annotation.AsynchronousCall;
import com.inspur.lambo.plantform.service.support.rule.RuleUtil;
import com.inspur.publicutils.MsgLogsUtils;
import com.inspur.publicutils.ServiceProcessLogUtils;
import com.inspur.publicutils.beans.MsgRecodeBean;
import com.inspur.receivesend.rocketmq.PubTool;
import com.inspur.receivesend.rocketmq.syncBrandOwner.gansu.SyncBrandOwnerToV3;
import com.inspur.receivesend.rocketmq.syncBrandOwner.jiangsu.SyncBrdOwnerToV6BySql;

/**
 * 
 * @作者： sunshj
 * @时间：2016年5月27日
 * @说明： 接收营销品牌拥有者信息 MQ消费端
 * @修改：
 */
@Component("dslBrandOwner")
public class SyncBrandOwner implements ISyncBrandOwner {
	private static Log log = LogFactory.getLog(SyncBrandOwner.class);

	@Autowired
	private SyncBrandOwnerMapper syncBrandOwnerMapper;
	@Autowired
	private SyncBrandOwnerToV3 syncBrandOwnerToV3;
	@Autowired
	private SyncBrdOwnerToV6BySql syncBrdOwnerToV6BySql;

	@AsynchronousCall
	public void syncBrandOwner(Map syncMap) {
		if (log.isDebugEnabled()) {
			log.debug("--syncBrandOwner--syncBrandOwner--start  ，syncMap="
					+ syncMap);
		}
		String jsonStr = (String) syncMap.get("brandOwnerInfo");
		String method = (String) syncMap.get("method");
		// 组织参数
		Map<String, String> paraMap = new HashMap<String, String>();
		paraMap.put("jsonStr", jsonStr);

		MsgRecodeBean msgRecodeBean = new MsgRecodeBean();
		// 插入原始日志,并更改日志状态为正在处理
		MsgLogsUtils.insertMsgLogs(msgRecodeBean.get_MSG_ID(),
				"DSL_BRANDOWNER", method, "xml", paraMap);

		try {
			Map map = PubTool.getMap(jsonStr);
			if (log.isDebugEnabled()) {
				log.debug("解析json之后返回的map为：" + map);
			}
			Map itemMap = (Map) map.get("BrandOwnerInfo");
			if (log.isDebugEnabled()) {
				log.debug("解析json之后返回的 品牌拥有者 信息为：" + itemMap);
			}

			// 解析成功
			MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),
					MsgLogsUtils.SERVICE_MSG_SATUS_RESOLVE_SUCESS);
			ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,
					MsgLogsUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);
			try {
				// 把解析好的数据插入dsl_item表中
				itemMap.put("MSG_ID", msgRecodeBean.get_MSG_ID());
				syncBrandOwnerMapper.insertDslBrandOwner(itemMap);
				// 处理完成
				MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),
						MsgLogsUtils.SERVICE_MSG_SATUS_DEAL_SUCCESS);
				ServiceProcessLogUtils
						.insertProcessLog(
								msgRecodeBean.get_MSG_ID(),
								ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,
								ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,
								ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SAVE);
			} catch (Exception e) {
				// 处理失败
				MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),
						MsgLogsUtils.SERVICE_MSG_SATUS_DEAL_FALID);
				ServiceProcessLogUtils
						.insertProcessLog(
								msgRecodeBean.get_MSG_ID(),
								e.toString(),
								ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
								ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SAVE);
				if (log.isErrorEnabled()) {
					log.error("处理失败：" + e);
				}
			}

			// 接受Mq消息完成，开始根据不同的项目要求实现服务分发
			String project = RuleUtil.getRuleValue("DSL_TO_OTHER_SYS", "00");
			if (null == project)
				project = "";
			// String project = "toGSV3";
			if (log.isDebugEnabled()) {
				log.debug("插入log结束，开始进行分发调用   project=" + project);
			}
			Map<String, String> tmp = new HashMap();
			tmp.put("MSG_ID", msgRecodeBean.get_MSG_ID());
			tmp.put("BRDOWNER_ID", (String) itemMap.get("BRDOWNER_ID"));
			tmp.put("METHOD", method);

			// 开线程 调用第三方服务
			if ("toGSV3".equals(project)) {// 甘肃v3
				// 修改公司商品
				syncBrandOwnerToV3.syncBrandOwner(tmp);
			} else if ("toJSV6".equals(project)) {// 江苏v6
				syncBrdOwnerToV6BySql.syncBrandOwner(tmp);
			} else {
				log.error("参数DSL_TO_OTHER_SYS设置不正确！");
			}

		} catch (Exception e) {
			// 解析失败
			MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),
					MsgLogsUtils.SERVICE_MSG_SATUS_RESOLVE_FALID);
			ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),
					e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);
			if (log.isErrorEnabled()) {
				log.error("解析失败：" + e);
			}
		}

		if (log.isDebugEnabled()) {
			log.debug("--syncBrandOwner--syncBrandOwner--end");
		}
	}
}