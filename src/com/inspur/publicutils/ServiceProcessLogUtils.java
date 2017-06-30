	/**
	 * 日志记录类文件
	 */
package com.inspur.publicutils;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.lambo.framework.util.SpringContextUtil;
import com.inspur.publicutils.sql.IPublicUtilsService;
import com.inspur.publicutils.tools.DateTool;
import com.inspur.publicutils.tools.UUIDTool;

	/**
	 * 
	 * @作者:丁怀雷
	 * @说明:日志记录类
	 * @时间:2016年5月3日
	 */
public class ServiceProcessLogUtils {
	
	public static final String SERVICE_PROCESS_LOG_RESULT_FALID = "0"; //处理结果：失败
	public static final String SERVICE_PROCESS_LOG_RESULT_SUCCESS = "1"; //处理结果：成功
	
	public static final String SERVICE_PROCESS_LOG_NODE_RESOLVE = "1"; //解析过程节点
	public static final String SERVICE_PROCESS_LOG_NODE_SAVE = "2"; //存储数据库节点
	public static final String SERVICE_PROCESS_LOG_NODE_SEND = "3"; //发送消息／调用服务节点
	
	public static final String SERVICE_PROCESS_LOG_INFO = "000"; //日志信息，无错误信息
	
	
	
	private static IPublicUtilsService publicUtilService = (IPublicUtilsService)SpringContextUtil.getBean("publicUtilService");
	private static Log log = LogFactory.getLog(ServiceProcessLogUtils.class);
	
	
	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：新增日志,参数：消息ID、日志体、操作结果、日志产生的节点
	 * @时间：2016年5月3日
	 * @修改人：
	 */
	public static boolean insertProcessLog(String msgId,String logInfo,String logResult,String proNode) {
		
		boolean resFlag = false;
		try {
			Map<String, String> inserMap = new HashMap<String, String>();
			inserMap.put("LOG_ID", UUIDTool.getInnerId());
			inserMap.put("MSG_ID", msgId);
			inserMap.put("LOG_INFO", logInfo);
			inserMap.put("LOG_CREATE_TIME", DateTool.getCurrentTimeByFormat("yyyyMMdd HH:mm:ss"));
			inserMap.put("LOG_RESULT", logResult);
			inserMap.put("PRO_NODE", proNode);
			publicUtilService.insertProcessLog(inserMap);
		} catch (Exception e) {
			if (log.isErrorEnabled()) {
				log.error("记录日志的过程中出现严重错误：", e);
			}
		}
		
		return resFlag;
		
		}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：更新日志
	 * @时间：2016年5月3日
	 * @修改人：
	 */
	public static boolean updateProcessLog() {
		boolean resFlag = false;
		// 这里面写插入逻辑

		return resFlag;
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：删除日志
	 * @时间：2016年5月3日
	 * @修改人：
	 */
	public static boolean deleteProcessLog() {
		boolean resFlag = false;
		// 这里面写插入逻辑

		return resFlag;
	}
}
