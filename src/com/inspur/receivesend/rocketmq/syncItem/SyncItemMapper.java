package com.inspur.receivesend.rocketmq.syncItem;

import java.util.Map;

public interface SyncItemMapper {
	/**
	 * 插入商品信息
	 * 
	 * @param map
	 * @return
	 */
	public int insertDslItem(Map<?, ?> map);

	// 甘肃--查询商品信息
	public Map getDslItemByGS(Map map);

	// 重庆--查询商品信息
	public Map findDslItemByCQ(Map<?, ?> map);

	public Map getServerInfo(Map tmp);

	public Map getDslItemTobaccoByGS(Map map);

	// 江苏v6-插入一条商品信息
	public int insertPlmItemToJS(Map<?, ?> map);

	// 江苏v6-修改商品信息
	public int updPlmItemToJS(Map<?, ?> map);

	public Map getPlmItemByJS(Map map);
}
