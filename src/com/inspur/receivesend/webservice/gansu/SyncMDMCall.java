package com.inspur.receivesend.webservice.gansu;

import java.rmi.RemoteException;

import javax.xml.namespace.QName;

import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.rpc.client.RPCServiceClient;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.publicutils.ServiceProcessLogUtils;

public class SyncMDMCall implements Runnable {
	private static Log log = LogFactory.getLog(SyncMDMCall.class);
	private String msg_id;// 日志ID
	private Object[] params;// 参数列表
	private String serviceNameSpace;// 服务命名空间
	private String serviceUrl;// 服务URL
	private String servicesMethod;// 服务方法

	public String getMsg_id() {
		return msg_id;
	}

	public void setMsg_id(String msg_id) {
		this.msg_id = msg_id;
	}

	public Object[] getParams() {
		return params;
	}

	public void setParams(Object[] params) {
		this.params = params;
	}

	public String getServiceNameSpace() {
		return serviceNameSpace;
	}

	public void setServiceNameSpace(String serviceNameSpace) {
		this.serviceNameSpace = serviceNameSpace;
	}

	public String getServiceUrl() {
		return serviceUrl;
	}

	public void setServiceUrl(String serviceUrl) {
		this.serviceUrl = serviceUrl;
	}

	public String getServicesMethod() {
		return servicesMethod;
	}

	public void setServicesMethod(String servicesMethod) {
		this.servicesMethod = servicesMethod;
	}
	@Override
	public void run() {
		if (log.isDebugEnabled()) {
			log.debug("--SyncMDMCall--run--start");
			log.debug("--SyncMDMCall--run--serviceNameSpace=" + getServiceNameSpace());
			log.debug("--SyncMDMCall--run--serviceUrl=" + getServiceUrl());
			log.debug("--SyncMDMCall--run--servicesMethod=" + getServicesMethod());
		}
		// 方法的参数值集合
		Object[] param =getParams();
		for(Object s:param){
			log.debug("--SyncMDMCall--run--params=" + s);
		}
		String returnStr = "";
		try {

			RPCServiceClient serviceClient = new RPCServiceClient();
			Options options = serviceClient.getOptions();

			// 调用服务的地址
			EndpointReference targetEPR = new EndpointReference(getServiceUrl());
			options.setTo(targetEPR);
			// 第二个参数为方法名
			QName namespace = new QName(getServiceNameSpace(),
					getServicesMethod());

			// 参数类型集合
			Class[] paramType = new Class[] { String.class, String.class,
					String.class,String.class  };
			Object[] b = serviceClient.invokeBlocking(namespace, param,
					paramType);
			returnStr = (String) b[0];
			if (log.isDebugEnabled()) {
				log.debug("调用主数据接口返回的信息为：" + returnStr);
			}

			// 调用第三方应用成功
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		} catch (RemoteException e) {
			if (log.isErrorEnabled()) {
				log.error("调用第三方webservice失败RemoteException：", e);
			}
			// 调用第三方应用失败
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		} catch (RuntimeException e) {
			if (log.isErrorEnabled()) {
				log.error("调用第三方webservice失败RuntimeException：", e);
			}
			// 调用第三方应用失败
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		} catch (Exception e) {
			if (log.isErrorEnabled()) {
				log.error("调用第三方webservice失败Exception：", e);
			}
			// 调用第三方应用失败
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		}

		if (log.isDebugEnabled()) {
			log.debug("--SyncMDMCall--end");
		}
	}
}
