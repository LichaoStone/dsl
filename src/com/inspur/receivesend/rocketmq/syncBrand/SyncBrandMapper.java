package com.inspur.receivesend.rocketmq.syncBrand;

import java.util.Map;

public interface SyncBrandMapper {
	/**
	 * 插入商品信息
	 * 
	 * @param map
	 * @return
	 */
	public int insertDslBrand(Map<?, ?> map);

	// 甘肃--查询商品信息
	public Map getDslBrandByGS(Map<?, ?> map);

	public Map getPlmBrandByJS(Map map);

	public int insertPlmBrandToJS(Map itemMap);

	public int updPlmBrandToJS(Map itemMap);

	public int delPlmBrandToJS(Map itemMap);

}
