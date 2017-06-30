/**
 * 该文件中用于记录原始消息
 */
package com.inspur.publicutils;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.loushang.util.DateTool;

import com.inspur.lambo.framework.util.SpringContextUtil;
import com.inspur.publicutils.sql.IPublicUtilsService;

/**
 * @作者:丁怀雷
 * @说明:用于记录原始消息的类
 * @时间:2016年5月3日
 */
public class ServiceMsgRecodeUtils {
	private static Log log = LogFactory.getLog(ServiceMsgRecodeUtils.class);
	private static IPublicUtilsService publicUtilsService=(IPublicUtilsService) SpringContextUtil.getBean("publicUtilService");

	
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
    
	
	/**
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：新增日志头表
	 *    例如：
	 *     insertMsgRecode(UUIDTool.getInnerId(),"DSL_CUST_RM", "初始化",ServiceMsgRecodeUtils.SERVICE_MSG_SATUS_WAIT_DEAL,"syncCustRm","ceshi");
	 * @param msg_id 唯一标识UUID
	 * @param msg_type 消息类型（要修改的表名）
	 * @param msg_action 消息行为：insert、update、delete
	 * @param msg_status 状态：0、1、2、3、4、5、6
	 * @param service_class 服务类
	 * @param service_para 服务参数（序列化map）
	 * @时间：2016年5月3日
	 * @修改人：
	 */
	public static boolean insertMsgRecode(String msg_id,String msg_type,String msg_action,String msg_status,String service_class,String service_para) {
	     if (log.isDebugEnabled()) {
			log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--start");
			log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--msg_id="+msg_id);
			log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--msg_type="+msg_type);
			log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--msg_action="+msg_action);
			log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--service_class="+service_class);
			log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--service_para="+service_para);
		 }
		boolean resFlag = false;
		// 组织日志主表（DSL_MSG）数据
        Map<String, String> map=new HashMap<String, String>();
        map.put("MSG_ID",msg_id);
        map.put("MSG_TYPE", msg_type);
        map.put("MSG_ACTION", msg_action);
        map.put("MSG_CREATE_TIME", DateTool.getCurrentDateTime());
        map.put("MSG_SATUS", msg_status);
        map.put("SERVICE_CLASS", service_class);
        map.put("SERVICE_PARA", service_para);
       
        int flag=0;
        try {
        	flag=publicUtilsService.insertMsgRecode(map);
		} catch (Exception e) {
			log.error("插入日志头表时出错："+e);
		}
       
        
        log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--flag="+flag);
        
        if (flag==1) {
        	resFlag=true;
		}
        
        if (log.isDebugEnabled()) {
        	log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--resFlag="+resFlag);
     		log.debug("--ServiceMsgRecodeUtils--insertMsgRecode--end");
     	}
		return resFlag;
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：修改日志头表
	 *    例如：
	 *       ServiceMsgRecodeUtils.updateMsgRecode(msg_id,ServiceMsgRecodeUtils.SERVICE_MSG_SATUS_START)
	 * @param msg_id 唯一标识UUID
	 * @param msg_status 状态：0、1、2、3、4、5、6
	 * @时间：2016年5月3日
	 */
	public static boolean updateMsgRecode(String msg_id,String msg_status,String msg_action) {
		if (log.isDebugEnabled()) {
			log.debug("-ServiceMsgParameterRecodeUtils--updateMsgRecode--start");
			log.debug("-ServiceMsgParameterRecodeUtils--updateMsgRecode--msg_id="+msg_id);
			log.debug("-ServiceMsgParameterRecodeUtils--updateMsgRecode--msg_status="+msg_status);
			log.debug("-ServiceMsgParameterRecodeUtils--updateMsgRecode--msg_action="+msg_action);
		}
		boolean resFlag = false;
		// 这里面写插入逻辑
		Map<String, String> map=new HashMap<String, String>();
		map.put("MSG_ID", msg_id);
		map.put("MSG_STATUS", msg_status);
		map.put("MSG_ACTION", msg_action);
		
		int flag=0;
		try {
			 flag=publicUtilsService.updateMsgRecode(map);
		} catch (Exception e) {
			log.error("修改日志头表日志出错："+e);
		}
        
        
        log.debug("--ServiceMsgRecodeUtils--updateMsgRecode--flag="+flag);
        
        if (flag==1) {
        	resFlag=true;
		}
        
        if (log.isDebugEnabled()) {
        	log.debug("--ServiceMsgRecodeUtils--updateMsgRecode--resFlag="+resFlag);
     		log.debug("--ServiceMsgRecodeUtils--updateMsgRecode--end");
     	}
		return resFlag;
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：删除
	 * @时间：2016年5月3日
	 * @修改人：
	 */
	public static boolean deleteMsgRecode() {
		boolean resFlag = false;
		// 这里面写插入逻辑

		return resFlag;
	}
    
}
