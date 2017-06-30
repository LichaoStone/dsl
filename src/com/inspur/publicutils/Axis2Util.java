/**
 * 
 */
package com.inspur.publicutils;

import javax.xml.namespace.QName;

import org.apache.axis2.AxisFault;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.rpc.client.RPCServiceClient;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Axis2客户端调用工具类
 * 
 * @作者 栗超
 * @时间 2016年7月5日 上午11:43:17
 * @说明
 * @修改
 */
public class Axis2Util {
	private static Log log = LogFactory.getLog(Axis2Util.class);

	/**
	 * 
	 * @作者 栗超
	 * @时间 2016年7月5日 上午11:47:39
	 * @说明
	 * @修改
	 * @param serviceNameSpace
	 *            服务命名空间
	 * @param serviceUrl
	 *            服务URL
	 * @param servicesMethod
	 *            服务方法
	 * @param params
	 *            参数列表（少于等于5个，且都为String类型）
	 * @return
	 */
	public static Object invoke(String serviceNameSpace, String serviceUrl, String servicesMethod, Object[] params) {
		if (log.isDebugEnabled()) {
			log.debug("--Axis2Util--invoke--start");
			log.debug("--Axis2Util--invoke--serviceNameSpace=" + serviceNameSpace);
			log.debug("--Axis2Util--invoke--serviceUrl=" + serviceUrl);
			log.debug("--Axis2Util--invoke--servicesMethod=" + servicesMethod);
			for (Object s : params) {
				log.debug("--Axis2Util--invoke--params=" + s);
			}
		}
		Object returnObj = null;
		RPCServiceClient  serviceClient = null;
		try {
			serviceClient= new RPCServiceClient();
			Options options = serviceClient.getOptions();
			// 调用服务的地址
			EndpointReference targetEPR = new EndpointReference(serviceUrl);
			options.setTo(targetEPR);
			// 第二个参数为方法名
			QName namespace = new QName(serviceNameSpace, servicesMethod);
			// 参数类型集合
			Class[] paramType = null;
			if (params.length == 1) {
				paramType = new Class[] { String.class };
			} else if (params.length == 2) {
				paramType = new Class[] { String.class, String.class };
			} else if (params.length == 3) {
				paramType = new Class[] { String.class, String.class, String.class };
			} else if (params.length == 4) {
				paramType = new Class[] { String.class, String.class, String.class, String.class };
			} else if (params.length == 5) {
				paramType = new Class[] { String.class, String.class, String.class, String.class, String.class };
			} else {
				throw new RuntimeException("参数不能多于五个，且必须为String类型");
			}
			Object[] b = serviceClient.invokeBlocking(namespace, params, paramType);
			returnObj = (Object) b[0];
		} catch (AxisFault e) {
			e.printStackTrace();
		}finally{
			try {
				serviceClient.cleanupTransport();//每次调用后释放连接
			} catch (AxisFault e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (log.isDebugEnabled()) {
			log.debug("--Axis2Util--invoke--returnObj=" + returnObj);
			log.debug("--Axis2Util--invoke--end");
		}
		return returnObj;
	}
}
