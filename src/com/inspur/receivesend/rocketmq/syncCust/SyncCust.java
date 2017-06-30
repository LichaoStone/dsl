package com.inspur.receivesend.rocketmq.syncCust;

import java.util.HashMap;
import java.util.Iterator;
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
import com.inspur.receivesend.rocketmq.syncCust.gansu.SyncCustToV3;

/** 
 * 接收营销客户信息 MQ消费端
 * @class SyncCust.java
 * @author YUZH
 * @date 2016-7-11下午03:12:04
 */
@Component("dslCustInfo")
public class SyncCust implements ISyncCust {
	private static Log log = LogFactory.getLog(SyncCust.class);
	private static final Map<String, String> indexMap = new HashMap<String, String>(){{
		put("CoCust", "DSL_CO_CUST");
		put("CscCust", "DSL_CSC_CUST");
		put("CrmCust", "DSL_CRM_CUST");
		put("LdmCustDist", "DSL_LDM_CUST_DIST");
	}};
	@Autowired
	private SyncCustMapper syncCustMapper;
	@Autowired
	private SyncCustToV3 syncCustToV3;
	
	@AsynchronousCall
	public void syncCust(Map syncMap) {
		if (log.isDebugEnabled()) {
			log.debug("--SyncCust--syncCust--start  ，syncMap=" + syncMap);
		}
		String coStr = (String) syncMap.get("CoCustInfo");
		String crmStr = (String) syncMap.get("CrmCustInfo");
		String cscStr = (String) syncMap.get("CscCustInfo");
		String ldmStr = (String) syncMap.get("LdmCustDistInfo");
		String method = (String) syncMap.get("method");
		// 组织参数
		Map<String, String> paraMap = new HashMap<String, String>();
		paraMap.put("jsonStr", coStr);

		MsgRecodeBean msgRecodeBean = new MsgRecodeBean();
		// 插入原始日志,并更改日志状态为正在处理
		Iterator<String> it = indexMap.keySet().iterator();
    	while(it.hasNext()){
        	String key = (String) it.next();
        	String value = indexMap.get(key);
        	MsgLogsUtils.insertMsgLogs(msgRecodeBean.get_MSG_ID(), value,
    				method, "xml", paraMap);
    	}
		try {
			Map comap = PubTool.getMap(coStr);
			Map crmmap = PubTool.getMap(crmStr);
			Map cscmap = PubTool.getMap(cscStr);
			Map ldmmap = PubTool.getMap(ldmStr);
			if (log.isDebugEnabled()) {
				log.debug("解析json之后返回的map为：" + comap+crmmap+cscmap+ldmmap);
			}
			Map coCustMap = (Map) comap.get("CustInfo");
			Map crmCustMap = (Map) crmmap.get("CustInfo");
			Map cscCustMap = (Map) cscmap.get("CustInfo");
			Map ldmCustMap = (Map) ldmmap.get("CustInfo");
			if (log.isDebugEnabled()) {
				log.debug("解析json之后返回的客户信息为：" + coCustMap+crmCustMap+cscCustMap+ldmCustMap);
			}

			// 解析成功
			MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),
					MsgLogsUtils.SERVICE_MSG_SATUS_RESOLVE_SUCESS);
			ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,
					MsgLogsUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);
			try {
				// 把解析好的数据插入dsl表中
				coCustMap.put("MSG_ID", msgRecodeBean.get_MSG_ID());
				syncCustMapper.insertDslCoCust(coCustMap);
				crmCustMap.put("MSG_ID", msgRecodeBean.get_MSG_ID());
				syncCustMapper.insertDslCrmCust(crmCustMap);
				cscCustMap.put("MSG_ID", msgRecodeBean.get_MSG_ID());
				syncCustMapper.insertDslCscCust(cscCustMap);
				ldmCustMap.put("MSG_ID", msgRecodeBean.get_MSG_ID());
				syncCustMapper.insertDslLdmCustDist(ldmCustMap);
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

			// 接受MQ消息完成，开始根据不同的项目要求实现服务分发
			String project = RuleUtil.getRuleValue("DSL_TO_OTHER_SYS", "00");
			if (null == project)
				project = "";
			// String project = "toGSV3";
			if (log.isDebugEnabled()) {
				log.debug("插入log结束，开始进行分发调用   project=" + project);
			}
			Map<String, String> tmp = new HashMap<String, String>();
			tmp.put("MSG_ID", msgRecodeBean.get_MSG_ID());
			tmp.put("CUST_ID", (String) coCustMap.get("CUST_ID"));
			tmp.put("METHOD", method);

			// 开线程 调用第三方服务
			if ("toGSV3".equals(project)) {// 甘肃v3
				// 修改客户信息
				syncCustToV3.syncRmCust(tmp);
//				syncCustToV3.syncRmCustOther(tmp);
				syncCustToV3.syncCcCcust(tmp);
				syncCustToV3.syncSdCustDist(tmp);
			}else {
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
			log.debug("--SyncCust--syncCust--end");
		}
	}
}