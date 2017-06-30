package com.inspur.receivesend.rocketmq.syncVendItem;

import java.util.List;
import java.util.Map;

public interface SyncVendItemMapper {
	/**
	 * 插入商品信息
	 * 
	 * @param map
	 * @return
	 */
	public int insertDslVendItem(Map<?, ?> map);

	public int insertVendItemToJS(Map itemMap);

//	public int updVendItemToJS(Map itemMap);

	public int delVendItemToJS(Map itemMap);

	public List getDslVendItemByGS(Map map);

}
