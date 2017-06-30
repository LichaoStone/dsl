/**
 * 该文件用于解析Axis2版本的 web服务
 */
package com.inspur.publicutils;

import java.net.MalformedURLException;
import java.rmi.RemoteException;

import javax.xml.namespace.QName;
import javax.xml.rpc.ServiceException;

import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


/**
 * 
 * @作者:丁怀雷
 * @说明:该文件用于解析Axis2版本的 web服务
 * @时间:2016年5月3日
 */
public  class Axis2WebServiceUtils {
	private static Log log = LogFactory.getLog(Axis2WebServiceUtils.class);
	/**
	 * 
		 * @方法名:invokeAxis2Service
		 * @输入参数:serviceNameSpace:服务命名空间;serviceUrl:服务URL;servicesMethod:服务方法;params:参数列表
		 * @返回类型:Object
		 * @创建人:丁怀雷
		 * @创建时间:2016-5-9
		 * @说明:
		 * @备注:
		 * @版本编号:v1.0
		 *
	 */
	public static Object invokeAxis2Service(String serviceNameSpace,
			String serviceUrl, String servicesMethod, Object[] params)
			throws ServiceException, RemoteException, MalformedURLException {
		if (log.isDebugEnabled()) {
			log.debug("--invokeAxis1Service--invokeAxis2Service:start invok axis2 service!");
		}
		Service service = new Service();
		Call call = (Call) service.createCall();
		call.setTargetEndpointAddress(new java.net.URL(serviceUrl));
		call.setOperationName(new QName(serviceNameSpace, servicesMethod));
		Object retObj = call.invoke(params);
		if (log.isDebugEnabled()) {
			log.debug("--invokeAxis1Service--invokeAxis2Service:end invok axis2 service!");
		}
		return retObj;
	}
}
