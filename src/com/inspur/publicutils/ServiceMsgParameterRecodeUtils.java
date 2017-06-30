/**
 * 原始消息记录参数类文件
 */
package com.inspur.publicutils;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.lambo.framework.util.SpringContextUtil;
import com.inspur.publicutils.sql.IPublicUtilsService;
import com.inspur.publicutils.tools.UUIDTool;

/**
 * 
 * @作者:丁怀雷
 * @说明:原始消息记录参数类
 * @时间:2016年5月3日
 */
public class ServiceMsgParameterRecodeUtils {
	
	private static Log log = LogFactory.getLog(ServiceMsgParameterRecodeUtils.class);
	private static IPublicUtilsService publicUtilsService=(IPublicUtilsService) SpringContextUtil.getBean("publicUtilService");

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：新增参数
	 * @param msg_id 消息ID：与头表一致
	 * @param msg_para_name 参数名
	 * @param msg_para_value 参数值
	 * @时间：2016年5月3日
	 */
	public static boolean insertMsgParameterRecode(String msg_id,String msg_para_name,String msg_para_value) {
		if (log.isDebugEnabled()) {
			log.debug("-ServiceMsgParameterRecodeUtils--insertMsgParameterRecode--start");
			log.debug("-ServiceMsgParameterRecodeUtils--insertMsgParameterRecode--msg_id="+msg_id);
			log.debug("-ServiceMsgParameterRecodeUtils--insertMsgParameterRecode--msg_para_name="+msg_para_name);
			log.debug("-ServiceMsgParameterRecodeUtils--insertMsgParameterRecode--msg_para_value="+msg_para_value);
		}
		boolean resFlag = false;
		// 组织日志明细表（DSL_MSG_PARAMETER）数据
        Map<String, String> map=new HashMap<String, String>();
        String para_id=UUIDTool.getInnerId();
        map.put("PARA_ID",para_id);
        map.put("MSG_ID", msg_id);
        map.put("MSG_PARA_NAME", msg_para_name);
        map.put("MSG_PARA_VALUE", msg_para_value);
       
        int flag=0; 
        try {
        	  flag=publicUtilsService.insertMsgParameterRecode(map);
		} catch (Exception e) {
			log.error("插入日志行表出错："+e);
		}
       
        
        if (flag==1) {
        	resFlag=true;
		}
        
        if (log.isDebugEnabled()) {
        	log.debug("-ServiceMsgParameterRecodeUtils--insertMsgParameterRecode--resFlag="+resFlag);
        	log.debug("-ServiceMsgParameterRecodeUtils--insertMsgParameterRecode--end=");
        }
        
		return resFlag;
	}
	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：更新参数
	 * @时间：2016年5月3日
	 * @修改人：
	 */
	public static boolean updateMsgParameterRecode() {
		boolean resFlag = false;
		// 这里面写插入逻辑
        
		return resFlag;
	}
	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：删除参数
	 * @时间：2016年5月3日
	 * @修改人：
	 */
	public static boolean deleteMsgParameterRecode() {
		boolean resFlag = false;
		// 这里面写插入逻辑

		return resFlag;
	}
}
