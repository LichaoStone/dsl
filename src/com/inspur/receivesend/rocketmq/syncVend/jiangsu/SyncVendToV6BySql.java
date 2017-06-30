package com.inspur.receivesend.rocketmq.syncVend.jiangsu;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.syncVend.SyncVendMapper;

@Service("SyncVendToV6BySql")
public class SyncVendToV6BySql {
	private static Log log = LogFactory.getLog(SyncVendToV6BySql.class);

	@Autowired
	private SyncVendMapper syncVendMapper;

	public void syncVend(Map map) {
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 供应商数据开始  syncVend   map= " + map);
		}
		String method1 = (String) map.get("METHOD");
		Map itemMap = syncVendMapper.getVendByJS(map);
		if (null != itemMap && !itemMap.isEmpty()) {
			int opType = 0;
			if ("insert".equals(method1)) {
				opType = syncVendMapper.insertVendToJS(itemMap);
			} else if ("update".equals(method1)) {
				opType = syncVendMapper.updVendToJS(itemMap);
			} else if ("delete".equals(method1)) {
				opType = syncVendMapper.updVendToJS(itemMap);
			}
		} else {
			log.debug("查询到的供应商为空，请检查数据");
		}
		if (log.isDebugEnabled()) {
			log.debug("传递 江苏 供应商数据结束  ");
		}
	}

}
