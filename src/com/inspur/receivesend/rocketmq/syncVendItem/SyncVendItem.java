package com.inspur.receivesend.rocketmq.syncVendItem;

import java.util.HashMap;
import java.util.List;
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
import com.inspur.receivesend.rocketmq.syncVendItem.gansu.SyncComVendItemToV3;
import com.inspur.receivesend.rocketmq.syncVendItem.gansu.SyncVendItemToV3;
import com.inspur.receivesend.rocketmq.syncVendItem.jiangsu.SyncVendItemToV6BySql;

/**
 * 
 * @作者： sunshj
 * @时间：2016年6月2日
 * @说明： 接收营销品牌信息 MQ消费端
 * @修改：
 */
@Component("dslVendItem")
public class SyncVendItem implements ISyncVendItem {
	private static Log log = LogFactory.getLog(SyncVendItem.class);

	@Autowired
	private SyncVendItemMapper syncVendItemMapper;
	@Autowired
	private SyncVendItemToV3 syncVendItemToV3;
	@Autowired
	private SyncComVendItemToV3 syncComVendItemToV3;
	@Autowired
	private SyncVendItemToV6BySql syncVendItemToV6BySql;

	@AsynchronousCall
	public void syncVendItem(Map syncMap) {
		if (log.isDebugEnabled()) {
			log.debug("--syncVendItem--syncVendItem--start  ，syncMap="
					+ syncMap);
		}
		String jsonStr = (String) syncMap.get("vendItemInfo");
		String method = (String) syncMap.get("method");
		// 组织参数
		Map<String, String> paraMap = new HashMap<String, String>();
		paraMap.put("jsonStr", jsonStr);

		MsgRecodeBean msgRecodeBean = new MsgRecodeBean();
		// 插入原始日志,并更改日志状态为正在处理
		MsgLogsUtils.insertMsgLogs(msgRecodeBean.get_MSG_ID(), "DSL_VEND_ITEM",
				method, "xml", paraMap);

		try {
			Map map = PubTool.getMap(jsonStr);
			if (log.isDebugEnabled()) {
				log.debug("解析json之后返回的map为：" + map);
			}
			Map itemMap = (Map) map.get("VendItemInfo");
			if (log.isDebugEnabled()) {
				log.debug("解析json之后返回的 供应商 信息为：" + itemMap);
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
				String msgId=msgRecodeBean.get_MSG_ID();
				List list = (List) itemMap.get("listVendItemLine");
				String vendId = (String) itemMap.get("VEND_ID");
				String comIds = (String) itemMap.get("COM_IDS");
				if(null!=list&&!list.isEmpty()){
					Map tmp ;
					for(int i=0;i<list.size();i++){
						tmp=(Map)list.get(i);
//						log.debug("tmp=========="+tmp);
						tmp.put("MSG_ID", msgId);
//						tmp.put("VEND_ID", vendId);
						tmp.put("COM_IDS", comIds);
//						log.debug("tmp====11111111======"+tmp);
						
						syncVendItemMapper.insertDslVendItem(tmp);
					}
				}
				
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
				return;
			}

			// 接受Mq消息完成，开始根据不同的项目要求实现服务分发
			String project = RuleUtil.getRuleValue("DSL_TO_OTHER_SYS", "00");
			if (null == project)
				project = "";
			// String project = "toGSV3";
			if (log.isDebugEnabled()) {
				log.debug("插入log结束，SyncVendItem 开始进行分发调用   project=" + project);
			}
			Map tmp = new HashMap();
			String msgId = msgRecodeBean.get_MSG_ID();
			tmp.put("MSG_ID", msgId);
			tmp.put("VEND_ID", (String) itemMap.get("VEND_ID"));
			tmp.put("METHOD", method);

			// 开线程 调用第三方服务
			if ("toGSV3".equals(project)) {// 甘肃v3
				List itemList = syncVendItemMapper.getDslVendItemByGS(tmp);
				log.debug("itemList========="+itemList);
				// 修改供应商
				tmp.put("itemList", itemList);
				syncVendItemToV3.syncVendItem(tmp);
//				if(log.isDebugEnabled()){
//					log.debug("调用甘肃接口，插入供应商商品成功，开始调用公司供应商商品接口");
//				}
//
//				// 公司供应商
//				String comIds = (String) itemMap.get("COM_IDS");
//				String[] comId = comIds.split(",");
//				for (int i = 0; i < comId.length; i++) {
//					tmp.put("COM_ID", comId[i]);
//					syncComVendItemToV3.syncComVendItem(tmp);
//
//				}
			} else if ("toJSV6".equals(project)) {// 江苏v6
				syncVendItemToV6BySql.syncVendItem(tmp);
			} else {
				log.error("参数DSL_TO_OTHER_SYS设置不正确！");
			}
		} catch (Exception e) {
			// 解析失败
			MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),
					MsgLogsUtils.SERVICE_MSG_SATUS_DEAL_FALID);
			ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),
					e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);
			if (log.isErrorEnabled()) {
				log.error("解析失败：" + e);
			}
		}

		if (log.isDebugEnabled()) {
			log.debug("--syncVendItem--syncVendItem--end");
		}
	}
}