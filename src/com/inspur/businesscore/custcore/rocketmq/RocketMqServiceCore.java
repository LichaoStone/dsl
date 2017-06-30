package com.inspur.businesscore.custcore.rocketmq;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.lambo.framework.mq.AsynchronousCallException;
import com.inspur.lambo.framework.mq.AsynchronousStatus;
import com.inspur.publicutils.RocketMqServiceUtils;
import com.inspur.publicutils.ServiceProcessLogUtils;

/**
 * 
 * @作者:丁怀雷
 *
 * @说明:营销同步cust核心业务类
 */
public class RocketMqServiceCore implements Runnable {
	private static Log log = LogFactory.getLog(RocketMqServiceCore.class);
	// 传入多线程参数：threadCustMap 插入数据Map集合；threadMsgId 日志ID
	private static Map<String, String> map;
	private static String msg_id;
	private static String moduleId;
	private static String beanId;
	private static String methodName;

	public  Map<String, String> getMap() {
		return map;
	}

	public  void setMap(Map<String, String> map) {
		RocketMqServiceCore.map = map;
	}

	public  String getMsg_id() {
		return msg_id;
	}

	public  void setMsg_id(String msg_id) {
		RocketMqServiceCore.msg_id = msg_id;
	}

	public  String getModuleId() {
		return moduleId;
	}

	public  void setModuleId(String moduleId) {
		RocketMqServiceCore.moduleId = moduleId;
	}

	public  String getBeanId() {
		return beanId;
	}

	public  void setBeanId(String beanId) {
		RocketMqServiceCore.beanId = beanId;
	}

	public  String getMethodName() {
		return methodName;
	}

	public  void setMethodName(String methodName) {
		RocketMqServiceCore.methodName = methodName;
	}

	@Override
	public void run() {
		if (log.isDebugEnabled()) {
			log.debug("--RocketMqServiceCore--run--start");
		}
		boolean flag = false;
		// 异步调用开始，首先构造参数集合
		Map<String, String> result = null;
		try {
			// 调用静态方法发送异步服务调用请求
			result = RocketMqServiceUtils.invokRocketMqService(moduleId, beanId, methodName, map);

			if (result.get(AsynchronousStatus.STATUS).equals(AsynchronousStatus.CALL_SUCCESS)) {
				// 调用第三方应用成功
				ServiceProcessLogUtils.insertProcessLog(getMsg_id(),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
			}
		} catch (AsynchronousCallException e) {
			// 调用第三方应用失败
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), e.toString(),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
			if(log.isErrorEnabled()){
				log.error("调用服务发送MQ出错：", e);
			}
		}
		if (log.isDebugEnabled()) {
			log.debug("--SyncCustRm--发送MQ线程--flag=" + flag);
			log.debug("--RocketMqServiceUtils--AsyncCall--end");
			log.debug("--RocketMqServiceUtils--AsyncCall--调用服务返回结果："+ result.get(AsynchronousStatus.STATUS).equals(AsynchronousStatus.CALL_SUCCESS));
			log.debug("--RocketMqServiceCore--run--end");
		}
	}
}
