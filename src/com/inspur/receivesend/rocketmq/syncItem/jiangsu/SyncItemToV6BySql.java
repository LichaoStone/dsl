package com.inspur.receivesend.rocketmq.syncItem.jiangsu;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.syncItem.SyncItemMapper;

@Service("SyncItemToV6BySql")
public class SyncItemToV6BySql {
	private static Log log = LogFactory.getLog(SyncItemToV6BySql.class);

	@Autowired
	private SyncItemMapper syncItemMapper;

	public void syncItem(Map map) throws Exception {
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 商品数据开始   map= " + map);
		}
		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		Map itemMap = syncItemMapper.getPlmItemByJS(map);
		if (null != itemMap && !itemMap.isEmpty()) {
			int opType = 0;
			if ("insert".equals(method1)) {
				opType = syncItemMapper.insertPlmItemToJS(itemMap);
			} else if ("update".equals(method1)) {
				opType = syncItemMapper.updPlmItemToJS(itemMap);
			} else if ("delete".equals(method1)) {
				opType = syncItemMapper.updPlmItemToJS(itemMap);
			}
		} else {
			log.debug("查询到的商品为空，请检查数据");
		}

		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 商品数据结束  ");
		}
	}
}
