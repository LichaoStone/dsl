package com.inspur.receivesend.webservice.beijing.synccust;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.dom4j.DocumentException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;
import com.inspur.businesscore.custcore.rocketmq.RocketMqServiceCore;
import com.inspur.publicutils.MsgLogsUtils;
import com.inspur.publicutils.ServiceProcessLogUtils;
import com.inspur.publicutils.beans.MsgRecodeBean;
import com.inspur.publicutils.tools.UUIDTool;
import com.inspur.publicutils.tools.XMLTool;
import com.inspur.receivesend.webservice.beijing.synccust.trans.ISyncCustRmService;
/**
 * 北京专卖证照数据与营销系统接口中间层
 * 
 * @author lichao_rj 
 * @日期 【2016-04-27】
 * @修改
 */
@Component("syncCustRmWebService")
public class SyncCustRm  implements ISyncCustRm{
	
	private static Log log = LogFactory.getLog(SyncCustRm.class);
	
	@Autowired
    private ISyncCustRmService syncCustRmService;
	
	/**
	 * 同步零售户信息：新增、修改、删除（非物理删除，只修改字段状态）
	 * @param xml
	 * @return 
	 * @throws ClassNotFoundException 
	 * @throws NoSuchMethodException 
	 * @throws SecurityException 
	 */
	public String syncCustRm(String xml) {
			if (log.isDebugEnabled()) {
				log.debug("--SyncCust--syncCust--start");
				log.debug("--SyncCust--syncCust--xml="+xml);
			}
            
			//组织参数
			Map<String, String> paraMap=new HashMap<String, String>();
			paraMap.put("xml",xml);
			
			MsgRecodeBean msgRecodeBean=new MsgRecodeBean();
			//插入原始日志,并更改日志状态为正在处理
			MsgLogsUtils.insertMsgLogs(msgRecodeBean.get_MSG_ID(),"DSL_CUST_RM","syncCustRm","xml",paraMap);		
			
			JSONObject resultJsonObject = new JSONObject();
		try {
			    Map<String, String> map = XMLTool.xmlToMap(xml,"CUSTOMER");
				map.put("BUSINESS_ID", UUIDTool.getInnerId());
				map.put("MSG_ID", msgRecodeBean.get_MSG_ID());
				
				Map<String,String> nodeMap=XMLTool.xmlToMap(xml,"INFO");
				String OP_TYPE=(String) nodeMap.get("OP_TYPE");
				
				
				//解析成功
				MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),MsgLogsUtils.SERVICE_MSG_SATUS_RESOLVE_SUCESS,OP_TYPE);
				ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS, MsgLogsUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);
				
			 try {
					//根据OP_TYPE标志位判断插入、更新操作
					if ("UPDATE".equals(OP_TYPE)||"DELETE".equals(OP_TYPE)) {
						syncCustRmService.updateDslCust(map);
					}else if ("INSERT".equals(OP_TYPE)) {
						syncCustRmService.insertDslCust(map);
					}else {
						if (log.isDebugEnabled()) {
						log.debug("OP_TYPE字段缺失或非INSERT、UPDATE和DELETE...");
						}
						throw new RuntimeException("OP_TYPE字段缺失或非INSERT、UPDATE和DELETE...");
					}
					
				} catch (Exception e1) {
					//处理失败，组织返回数据
					resultJsonObject.put("result", "-1");
					resultJsonObject.put("message",e1.toString()); 
					
					//处理失败
					MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(), MsgLogsUtils.SERVICE_MSG_SATUS_DEAL_FALID);
					ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(), e1.toString(),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID, ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SAVE);
				    if(log.isErrorEnabled()){
				    	log.error("处理失败："+e1);
				    }
					return resultJsonObject.toString();
					
				}	
			     
				//处理完成
				MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(), MsgLogsUtils.SERVICE_MSG_SATUS_DEAL_SUCCESS);
				ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS, ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SAVE);
				
				//成功，组织返回数据
				String cust_id=(String) map.get("CUST_ID");
				resultJsonObject.put("result", "0");
				resultJsonObject.put("message", "同步零售户信息成功！");
				resultJsonObject.put("cust_id", cust_id);
				
				//开线程   调用第三方服务
				//RocketMqServiceUtils.AsyncCall(msgRecodeBean.get_MSG_ID(),"dsl",AsynchronousImplementSample.class.getName(),"callSampleMethod",nodeMap);
				//RocketMqServiceUtils.AsyncCall(msgRecodeBean.get_MSG_ID(),"dsl","callSampleBean","callSampleMethod",map);
				//插入数据库
				RocketMqServiceCore rc = new RocketMqServiceCore();
				rc.setMap(map);
			   (new Thread(rc)).start();
		} catch (DocumentException e) {
				//解析失败
				MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(),MsgLogsUtils.SERVICE_MSG_SATUS_RESOLVE_FALID);
				ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),e.toString(),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID, ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);
				
				//失败，组织返回数据
				resultJsonObject.put("result", "-1");
				resultJsonObject.put("message", e.toString()); 
				if(log.isErrorEnabled()){
				log.error("解析失败："+e);
				}
			}
		
		    return resultJsonObject.toString();
	}

}
