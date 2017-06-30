package com.inspur.receivesend.rocketmq.syncItemCom.gansu;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.syncItem.SyncItemMapper;
import com.inspur.receivesend.rocketmq.syncItemCom.SyncItemComMapper;
import com.inspur.receivesend.webservice.gansu.SyncMDMCall;

@Service("SyncItemPriToV3")
public class SyncItemPriToV3 {
	private static Log log = LogFactory.getLog(SyncItemPriToV3.class);

	@Autowired
	private SyncItemComMapper syncItemComMapper;
	@Autowired
	private SyncItemMapper syncItemMapper;

	public void syncItemPri(Map map) {

		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";
		if ("insert".equals(method1)) {
			method = "crtItemPri";
		} else if ("update".equals(method1)) {
			method = "updItemPri";
		} else if ("delete".equals(method1)) {
			// 如果是删除公司商品，则价格表不做任何变动
			return;
		}

		// 商品信息
		Map itemMap = syncItemComMapper.getDslItemPriByGS(map);
		if (log.isDebugEnabled()) {
			log.debug("同步到甘肃的公司商品价格信息为：" + itemMap);
		}
		String inXml = mapToXml(itemMap);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的价格 数据信息   inXml=" + inXml);
		}

		itemMap = null;
		Map<String, String> tmp = new HashMap<String, String>();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "ITEM_PRI_GS");
		Map tmp1 = syncItemMapper.getServerInfo(tmp);
		if (null == tmp1 || tmp1.isEmpty()) {
			log.error("调用服务失败，没有维护服务" + tmp + "！");
		}
		String serverUrl = (String) tmp1.get("SERVER_URL");
		String nameSpace = (String) tmp1.get("NAME_SPACE");
		if (log.isDebugEnabled()) {
			log.debug("组织数据完成，开始调用接口，接口相关信息为：" + tmp1);
		}

		SyncMDMCall sc = new SyncMDMCall();
		Object[] objects = new Object[] { inXml, "SYS", "CMS", "MDM_SD_ITEM_PRI" };
		sc.setMsg_id(msgId);
		sc.setServiceNameSpace(nameSpace);
		sc.setServicesMethod(method);
		sc.setServiceUrl(serverUrl);
		sc.setParams(objects);
		(new Thread(sc)).start();

		if (log.isDebugEnabled()) {
			log.debug("传递公司商品数据结束  ");
		}
	}

	// PRICE_PUH 工商调拨价
	// PRICE_TRN 商商调拨价格
	// PRICE_TRADE 批发价格
	// PRICE_RETAIL 建议零售价
	// PRICE_REBATE 折扣价
	private String mapToXml(Map itemMap) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"gb2312\"?>");
		sb.append("<DATASETS><DATASET>");
		if (null != itemMap && !itemMap.isEmpty()) {
			// 01:采购价格,02:调拨价格,03:批发价格,04:零售价,05:折扣价,

			String comId = (String) itemMap.get("COM_ID");
			String itemId = (String) itemMap.get("ITEM_ID");
			String str;
			str = itemMap.get("PRICE_PUH").toString();
			sb.append(getPriXml(comId, itemId, "01", str));

			str = itemMap.get("PRICE_TRN").toString();
			sb.append(getPriXml(comId, itemId, "02", str));

			str = itemMap.get("PRICE_TRADE").toString();
			sb.append(getPriXml(comId, itemId, "03", str));

			str = itemMap.get("PRICE_RETAIL").toString();
			sb.append(getPriXml(comId, itemId, "04", str));

		}
		sb.append("</DATASET></DATASETS>");
		return sb.toString();
	}

	private String getPriXml(String comId, String itemId, String priType,
			String pri) {
		StringBuffer sb = new StringBuffer();
		sb.append("<MDM_SD_ITEM_PRI>");
		sb.append("<COM_ID>" + comId + "</COM_ID>");
		sb.append("<ITEM_ID>" + itemId + "</ITEM_ID>");
		sb.append("<PRI_TYPE>" + priType + "</PRI_TYPE>");
		sb.append("<PRI>" + pri + "</PRI>");
		sb.append("<IS_MRB>1</IS_MRB>");
		sb.append("</MDM_SD_ITEM_PRI>");

		return sb.toString();
	}
}
