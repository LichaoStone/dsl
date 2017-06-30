package com.inspur.publicutils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/**
 * 营销与专卖数据同步服务类
 * @author lichao_rj
 * @时间 【2016年05月07日】
 * @修改
 */
public class MsgLogsUtils{
	private static Log log = LogFactory.getLog(MsgLogsUtils.class);
    
	public static final String SERVICE_MSG_ACTION_INIT = "init"; // 初始化
	public static final String SERVICE_MSG_ACTION_INSERT = "insert"; // 新增
	public static final String SERVICE_MSG_ACTION_UPDATE = "update"; // 更新
	public static final String SERVICE_MSG_ACTION_DELETE = "delete"; // 删除
    

	public static final String SERVICE_MSG_SATUS_WAIT_DEAL = "0";// 等待处理
	public static final String SERVICE_MSG_SATUS_START = "1";// 开始处理
	public static final String SERVICE_MSG_SATUS_RESOLVE_SUCESS = "2";// 解析成功
	public static final String SERVICE_MSG_SATUS_RESOLVE_FALID = "3";// 解析失败
	public static final String SERVICE_MSG_SATUS_DEAL_SUCCESS = "4";// 处理成功
	public static final String SERVICE_MSG_SATUS_DEAL_FALID = "5";// 处理失败
	public static final String SERVICE_MSG_SATUS_IGNORE = "6";// 忽略消息
	
	public static final String SERVICE_PROCESS_LOG_RESULT_FALID = "0"; //处理结果：失败
	public static final String SERVICE_PROCESS_LOG_RESULT_SUCCESS = "1"; //处理结果：成功
	
	public static final String SERVICE_PROCESS_LOG_NODE_RESOLVE = "1"; //解析过程节点
	public static final String SERVICE_PROCESS_LOG_NODE_SAVE = "2"; //存储数据库节点
	public static final String SERVICE_PROCESS_LOG_NODE_SEND = "3"; //发送消息／调用服务节点
	
	
	/**
	 * 插入原始日志
	 * @author lichao_rj
	 * @时间 【2016年05月07日】
	 * @说明
	 *     例如： ServiceUtils.insertMsgLogs("DSL_CUST_RM","syncCustRm","xml","xml",xml);
	 * @param msg_type 消息类型(表名)
	 * @param service_class 服务类
	 * @param service_para 服务参数（序列化map）
	 * @param msg_para_name 参数名 
	 * @param msg_para_value 参数值
	 * @return resFlag
	 * 
	 */
	@SuppressWarnings("rawtypes")
	public static boolean insertMsgLogs(String msg_id,String msg_type,String service_class,String service_para,Map<String, String> paraMap){
		 if (log.isDebugEnabled()) {
				log.debug("--MsgLogsUtils--insertMsgLogs--start");
				log.debug("--MsgLogsUtils--insertMsgLogs--msg_id="+msg_id);
				log.debug("--MsgLogsUtils--insertMsgLogs--msg_type="+msg_type);
				log.debug("--MsgLogsUtils--insertMsgLogs--service_class="+service_class);
				log.debug("--MsgLogsUtils--insertMsgLogs--service_para="+service_para);
				log.debug("--MsgLogsUtils--insertMsgLogs--paraMap="+paraMap);
			 }
		 
		boolean resFlag = false;
		/**********************  插入日志头表（DSL_MSG） ***********************************/
		
	    boolean msgRecordeFlag=ServiceMsgRecodeUtils.insertMsgRecode(msg_id,msg_type,SERVICE_MSG_ACTION_INIT,SERVICE_MSG_SATUS_WAIT_DEAL,service_class,service_para);
	    
	    /**********************   插入日志明细表（DSL_MSG_PARAMETER）  ***********************/
 	    
		Set entries=paraMap.entrySet();
        boolean msgParameterRecordeFlag=false;
        if (entries!=null) {
			Iterator iterator=entries.iterator();
			while(iterator.hasNext()){
				Map.Entry entry=(Entry) iterator.next();
				String key=(String) entry.getKey();
				String value=(String) entry.getValue();
				//插入日志行表
		        msgParameterRecordeFlag=ServiceMsgParameterRecodeUtils.insertMsgParameterRecode(msg_id,key,value);
			}
		}
	    
        boolean updateFlag=ServiceMsgRecodeUtils.updateMsgRecode(msg_id,SERVICE_MSG_SATUS_START,SERVICE_MSG_ACTION_INIT);
        
        if (msgRecordeFlag&&msgParameterRecordeFlag&&updateFlag) {
        	resFlag=true;
		}
        
        
	    if (log.isDebugEnabled()) {
			log.debug("--MsgLogsUtils--insertMsgLogs--msgRecordeFlag="+msgRecordeFlag);
			log.debug("--MsgLogsUtils--insertMsgLogs--msgParameterRecordeFlag="+msgParameterRecordeFlag);
			log.debug("--MsgLogsUtils--insertMsgLogs--resFlag="+resFlag);
			log.debug("--MsgLogsUtils--insertMsgLogs--end");
		}
        
		return resFlag;
		
	}
	
	/**
	 * 
	 * @param msg_id
	 * @param msg_status
	 * @param msg_action
	 * @return
	 */
	public static boolean updateMsgLogs(String msg_id,String msg_status,String msg_action){
		 if (log.isDebugEnabled()) {
				log.debug("--MsgLogsUtils--updateMsgLogs--start");
				log.debug("--MsgLogsUtils--updateMsgLogs--msg_id="+msg_id);
				log.debug("--MsgLogsUtils--updateMsgLogs--msg_status="+msg_status);
				log.debug("--MsgLogsUtils--updateMsgLogs--msg_action="+msg_action);
			 }
		 boolean resFlag = false;
		 
		// 这里面写插入逻辑
		Map<String, String> map=new HashMap<String, String>();
		map.put("MSG_ID", msg_id);
		map.put("MSG_STATUS", msg_status);
		map.put("MSG_ACTION", msg_action);
		
		boolean flag=false;
		if (msg_action.toLowerCase().equals(SERVICE_MSG_ACTION_INSERT)) {
			flag=ServiceMsgRecodeUtils.updateMsgRecode(msg_id, msg_status,SERVICE_MSG_ACTION_INSERT);
			map.put("MSG_ACTION",SERVICE_MSG_ACTION_INSERT);
		}else if(msg_action.toLowerCase().equals(SERVICE_MSG_ACTION_UPDATE)) {
			flag=ServiceMsgRecodeUtils.updateMsgRecode(msg_id, msg_status,SERVICE_MSG_ACTION_UPDATE);
			map.put("MSG_ACTION",SERVICE_MSG_ACTION_UPDATE);
		}else if (msg_action.toLowerCase().equals(SERVICE_MSG_ACTION_DELETE)) {
			flag=ServiceMsgRecodeUtils.updateMsgRecode(msg_id, msg_status,SERVICE_MSG_ACTION_DELETE);
			map.put("MSG_ACTION",SERVICE_MSG_ACTION_DELETE);
		}else {
			throw new RuntimeException("消息行为应该为：INSERT、UPDATE和DELETE");
		}
		
		
        log.debug("--MsgLogsUtils--updateMsgLogs--flag="+flag);
       
        if (flag) {
        	resFlag=true;
		}
        
        
        if (log.isDebugEnabled()) {
        	log.debug("--MsgLogsUtils--updateMsgLogs--resFlag="+resFlag);
     		log.debug("--MsgLogsUtils--updateMsgLogs--end");
     	}
		return resFlag;
		
	}
	
	
	/**
	 * 
	 * @param msg_id
	 * @param msg_status
	 * @param msg_action
	 * @return
	 */
	public static boolean updateMsgLogs(String msg_id,String msg_status){
		 if (log.isDebugEnabled()) {
				log.debug("--MsgLogsUtils--updateMsgLogs--start");
				log.debug("--MsgLogsUtils--updateMsgLogs--msg_id="+msg_id);
				log.debug("--MsgLogsUtils--updateMsgLogs--msg_status="+msg_status);
			 }
		 boolean resFlag = false;
		 
		// 这里面写插入逻辑
		Map<String, String> map=new HashMap<String, String>();
		map.put("MSG_ID", msg_id);
		map.put("MSG_STATUS", msg_status);
		
		boolean flag=ServiceMsgRecodeUtils.updateMsgRecode(msg_id, msg_status,null);
        
		if (flag) {
			resFlag=true;
		}
        
        if (log.isDebugEnabled()) {
        	log.debug("--MsgLogsUtils--updateMsgLogs--resFlag="+resFlag);
     		log.debug("--MsgLogsUtils--updateMsgLogs--end");
     	}
		return resFlag;
		
	}
	
}
