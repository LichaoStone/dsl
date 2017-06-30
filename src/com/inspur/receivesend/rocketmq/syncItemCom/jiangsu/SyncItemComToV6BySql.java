package com.inspur.receivesend.rocketmq.syncItemCom.jiangsu;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.syncItemCom.SyncItemComMapper;

@Service("SyncItemComToV6BySql")
public class SyncItemComToV6BySql {
	private static Log log = LogFactory.getLog(SyncItemComToV6BySql.class);

	@Autowired
	private SyncItemComMapper syncItemComMapper;

	public void syncItemCom(Map map) {
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 公司商品数据开始   map= " + map);
		}
		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		Map itemMap = syncItemComMapper.getPlmItemComByJS(map);
		if (null != itemMap && !itemMap.isEmpty()) {
			int opType = 0;
			if ("insert".equals(method1)) {
				opType = syncItemComMapper.insertPlmItemComToJS(itemMap);
			} else if ("update".equals(method1)) {
				opType = syncItemComMapper.updPlmItemComToJS(itemMap);
			} else if ("delete".equals(method1)) {
				opType = syncItemComMapper.updPlmItemComToJS(itemMap);
			}
		} else {
			log.debug("查询到的商品为空，请检查数据");
		}
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 公司商品数据结束  ");
		}
	}

}
