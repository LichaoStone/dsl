package com.inspur.receivesend.rocketmq.syncCust;

import java.util.Map;

/** 
 * 接受统一订货平台传过来的客户数据，记录日志，并分发到不同的项目调用不同的服务
 * @class ISyncCust.java
 * @author YUZH
 * @date 2016-7-11下午02:43:03
 */
public interface ISyncCust {
	/**
	 * 接收营销MQ推送的客户数据
	 * 
	 * @param json
	 * @return
	 */
	public void syncCust(Map map);
	
}
