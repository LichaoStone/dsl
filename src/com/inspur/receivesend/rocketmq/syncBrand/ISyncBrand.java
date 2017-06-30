package com.inspur.receivesend.rocketmq.syncBrand;

import java.util.Map;

/**
 * 
 * @author sunshj
 * @date 20160527
 * @description 接受统一订货平台传过来的商品数据，记录日志，并分发到不同的项目调用不同的服务
 * 
 */
public interface ISyncBrand {
	/**
	 * 接收营销MQ推送数据：Brand
	 * 
	 * @param json
	 * @return
	 */
	public void syncBrand(Map map);
}
