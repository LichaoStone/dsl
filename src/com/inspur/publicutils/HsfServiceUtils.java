/**
 * 
 * @作者:丁怀雷
 *
 * @说明:调用高速服务的公共类文件
 */
package com.inspur.publicutils;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.lambo.framework.util.HsfUtil;

/**
 * 
 * @作者:丁怀雷
 * 
 * @说明:调用高速服务的公共类
 */
public class HsfServiceUtils {
	private static Log log = LogFactory.getLog(HsfServiceUtils.class);

	/**
	 * 
	 * @作者:丁怀雷
	 * @时间:20160509
	 * @说明:调用高速服务的工具类，请组织好相应的参数然后调用。serviceName:服务地址；methodName：方法名；args参数（Object数组）
	 */
	
	@SuppressWarnings("finally")
	public static Object invokHsfService(String serviceName, String methodName,
			Object[] args) {
		if (log.isDebugEnabled()) {
			log.debug("--HsfServiceUtils--invokHsfService:start invok hsf service!");
		}
		Object result = null;
		try {
			result = HsfUtil.invokeHsfService(serviceName, methodName, args);
		} catch (Throwable e) {
			if (log.isErrorEnabled()) {
				log.error("调用高速服务出现异常(invork hsf throws exception:)：", e);
			}
		} finally {
			if (log.isDebugEnabled()) {
				log.debug("--HsfServiceUtils--invokHsfService:end invok hsf service!");
			}
			return result;
		}
	} 
	
}
