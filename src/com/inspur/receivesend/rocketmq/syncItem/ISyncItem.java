package com.inspur.receivesend.rocketmq.syncItem;

import java.util.Map;

/**
 * 
 * @author sunshj
 * @date 20160519
 * @description 接受统一订货平台传过来的商品数据，记录日志，并分发到不同的项目调用不同的服务
 * 
 */
public interface ISyncItem {
	/**
	 * 接收营销MQ推送数据：商品Item
	 * 
	 * @param json
	 * @return
	 */
	public void syncItem(Map map);
}
