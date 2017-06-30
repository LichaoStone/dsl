/**
 * 该文件用于RocketMq消息
 */
package com.inspur.publicutils;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.lambo.framework.mq.AsynchronousCall;
import com.inspur.lambo.framework.mq.AsynchronousCallException;

/**
 * 
 * @作者:栗超
 * @说明:该文件用于RocketMq消息
 * @时间:2016年5月3日
 * @修改人:丁怀雷
 */
public  class RocketMqServiceUtils{
	private static Log log = LogFactory.getLog(RocketMqServiceUtils.class);
		/**
		 * 
		 * @方法名:invokRocketMqService
		 * @输入参数:moduleId:被调用服务所在组件的名称;beanId:被调用服务的beanId;methodName:被调用服务的方法名称;map:被调用服务的参数数组;
		 * @返回类型:String
		 * @创建人:丁怀雷
		 * @创建时间:2016-5-9
		 * @说明:
		 * @备注:
		 * @版本编号:v1.0
		 *
	     */
	public  static Map<String,String> invokRocketMqService(String moduleId,String beanId,String methodName,Map<String,String> map) throws AsynchronousCallException{
		if (log.isDebugEnabled()) {
			log.debug("--RocketMqServiceUtils--invokRocketMqService--start");
			log.debug("--RocketMqServiceUtils--invokRocketMqService--moduleId="+moduleId);
			log.debug("--RocketMqServiceUtils--invokRocketMqService--beanId="+beanId);
			log.debug("--RocketMqServiceUtils--invokRocketMqService--methodName="+methodName);
			log.debug("--RocketMqServiceUtils--invokRocketMqService--map="+map);
		}
		
		Object[] args = new Object[]{map};
		Map<String,String> result = AsynchronousCall.call(moduleId,beanId,methodName,args);
		log.debug("--RocketMqServiceUtils--invokRocketMqService--end");
		return result;
	}
}
