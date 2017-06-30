package com.inspur.receivesend.rocketmq.syncBrand.jiangsu;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.syncBrand.SyncBrandMapper;

@Service("SyncBrandToV6BySql")
public class SyncBrandToV6BySql {
	private static Log log = LogFactory.getLog(SyncBrandToV6BySql.class);

	@Autowired
	private SyncBrandMapper syncBrandMapper;

	public void syncBrand(Map map) {
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 品牌数据开始   map= " + map);
		}
		String method1 = (String) map.get("METHOD");
		Map itemMap = syncBrandMapper.getPlmBrandByJS(map);
		if (null != itemMap && !itemMap.isEmpty()) {
			int opType = 0;
			if ("insert".equals(method1)) {
				opType = syncBrandMapper.insertPlmBrandToJS(itemMap);
			} else if ("update".equals(method1)) {
				opType = syncBrandMapper.updPlmBrandToJS(itemMap);
			} else if ("delete".equals(method1)) {
				opType = syncBrandMapper.delPlmBrandToJS(itemMap);
			}
		} else {
			log.debug("查询到的商品为空，请检查数据");
		}
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 品牌数据结束  ");
		}
	}

}
