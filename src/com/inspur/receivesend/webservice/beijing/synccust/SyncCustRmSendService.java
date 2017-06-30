package com.inspur.receivesend.webservice.beijing.synccust;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.businesscore.custcore.rocketmq.RocketMqServiceCore;
import com.inspur.publicutils.RocketMqServiceUtils;
import com.inspur.publicutils.ServiceProcessLogUtils;
import com.inspur.webservice.common.ICommonService;
import com.v6.base.asynchronous.AsynchronousCallException;
import com.v6.base.asynchronous.AsynchronousStatus;

public class SyncCustRmSendService implements ICommonService {
	private static Log log = LogFactory.getLog(RocketMqServiceCore.class);
	@Override
	public Map<?, ?> invok(Map<?, ?> tmap) {
		// 异步调用开始，首先构造参数集合
				Map<String, String> result = null;
				try {
					// 调用静态方法发送异步服务调用请求
					result = RocketMqServiceUtils.invokRocketMqService((String)tmap.get(""), (String)tmap.get(""), (String)tmap.get(""), (Map)tmap.get(""));

					if (result.get(AsynchronousStatus.STATUS).equals(AsynchronousStatus.CALL_SUCCESS)) {
						// 调用第三方应用成功
						ServiceProcessLogUtils.insertProcessLog((String)tmap.get(""),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
					}
				} catch (AsynchronousCallException e) {
					// 调用第三方应用失败
					ServiceProcessLogUtils.insertProcessLog((String)tmap.get(""), e.toString(),ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
					if(log.isErrorEnabled()){
						log.error("调用服务发送MQ出错：", e);
					}
				}
		return tmap;
	}

}
