package com.inspur.receivesend.rocketmq.syncBrandOwner;

import java.util.Map;

public interface SyncBrandOwnerMapper {
	/**
	 * 插入商品信息
	 * 
	 * @param map
	 * @return
	 */
	public int insertDslBrandOwner(Map<?, ?> map);

	// 甘肃--查询商品信息
	public Map getDslBrandOwnerByGS(Map<?, ?> map);

	public Map getBrdOwnerByJS(Map map);

	public int insertBrdOwnerToJS(Map map);

	public int updBrdOwnerToJS(Map map);

	public int delBrdOwnerToJS(Map map);

}
