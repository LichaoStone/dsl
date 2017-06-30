package com.inspur.receivesend.rocketmq.syncBrandOwner.jiangsu;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.syncBrandOwner.SyncBrandOwnerMapper;

@Service("SyncBrdOwnerToV6BySql")
public class SyncBrdOwnerToV6BySql {
	private static Log log = LogFactory.getLog(SyncBrdOwnerToV6BySql.class);

	@Autowired
	private SyncBrandOwnerMapper syncBrandOwnerMapper;

	public void syncBrandOwner(Map map) {
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 品拥有者数据开始   map= " + map);
		}
		String method1 = (String) map.get("METHOD");
		Map itemMap = syncBrandOwnerMapper.getBrdOwnerByJS(map);
		if (null != itemMap && !itemMap.isEmpty()) {
			int opType = 0;
			if ("insert".equals(method1)) {
				opType = syncBrandOwnerMapper.insertBrdOwnerToJS(itemMap);
			} else if ("update".equals(method1)) {
				opType = syncBrandOwnerMapper.updBrdOwnerToJS(itemMap);
			} else if ("delete".equals(method1)) {
				opType = syncBrandOwnerMapper.delBrdOwnerToJS(itemMap);
			}
		} else {
			log.debug("查询到的品拥有者为空，请检查数据");
		}
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 品牌拥有者数据结束  ");
		}
	}

}
