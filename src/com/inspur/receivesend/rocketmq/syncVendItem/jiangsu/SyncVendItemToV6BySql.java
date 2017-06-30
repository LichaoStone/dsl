package com.inspur.receivesend.rocketmq.syncVendItem.jiangsu;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.syncVendItem.SyncVendItemMapper;

@Service("SyncVendItemToV6BySql")
public class SyncVendItemToV6BySql {
	private static Log log = LogFactory.getLog(SyncVendItemToV6BySql.class);

	@Autowired
	private SyncVendItemMapper syncVendItemMapper;

	public void syncVendItem(Map map) {
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 供应商商品数据开始  syncVendItem   map= " + map);
		}
		String method1 = (String) map.get("METHOD");
		if (null != map && !map.isEmpty()) {
			int opType = 0;
//			if ("insert".equals(method1)) {
//				opType = syncVendItemMapper.insertVendItemToJS(map);
//			} else if ("update".equals(method1)) {
////				opType = syncVendItemMapper.updVendItemToJS(map);
//			} else if ("delete".equals(method1)) {
//				opType = syncVendItemMapper.delVendItemToJS(map);
//			}
			//修改为先删后插
			syncVendItemMapper.delVendItemToJS(map);
			syncVendItemMapper.insertVendItemToJS(map);
		} else {
			log.debug("查询到的供应商为空，请检查数据");
		}
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 供应商商品 数据结束  ");
		}
	}

}
