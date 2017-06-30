package com.inspur.receivesend.rocketmq.syncItemCom;

import java.util.Map;

public interface SyncItemComMapper {
	/**
	 * 插入商品信息
	 * 
	 * @param map
	 * @return
	 */
	public int insertDslItemCom(Map<?, ?> map);

	// 甘肃--查询商品信息
	public Map getDslItemComByGS(Map<?, ?> map);

	// 甘肃--查询商品价格信息
	public Map getDslItemPriByGS(Map<?, ?> map);

	public Map getPlmItemComByJS(Map map);

	public int insertPlmItemComToJS(Map itemMap);

	public int updPlmItemComToJS(Map itemMap);

}
