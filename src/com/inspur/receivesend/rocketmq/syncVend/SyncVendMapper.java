package com.inspur.receivesend.rocketmq.syncVend;

import java.util.Map;

public interface SyncVendMapper {
	/**
	 * 插入商品信息
	 * 
	 * @param map
	 * @return
	 */
	public int insertDslVend(Map<?, ?> map);

	// 甘肃--查询商品信息
	public Map getDslVendByGS(Map<?, ?> map);

	public Map getVendByJS(Map map);

	public int insertVendToJS(Map itemMap);

	public int updVendToJS(Map itemMap);

}
