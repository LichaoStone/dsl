package com.inspur.receivesend.rocketmq.syncVendItem.gansu;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.IndividTool;
import com.inspur.receivesend.rocketmq.PubTool;
import com.inspur.receivesend.rocketmq.syncItem.SyncItemMapper;
import com.inspur.receivesend.webservice.gansu.SyncMDMCall;

@Service("SyncVendItemToV3")
public class SyncVendItemToV3 {
	private static Log log = LogFactory.getLog(SyncVendItemToV3.class);

	@Autowired
	private SyncItemMapper syncItemMapper;

	private static String TABLE = "MDM_SRM_VEND_ITEM";

	public void syncVendItem(Map map) {

		String msgId = (String) map.get("MSG_ID");
		List list = (List) map.get("itemList");
		String method = "crtVendItem";//主数据的逻辑是先删后插，所以都调用一个接口吧
		StringBuffer mainXml = new StringBuffer("");

		if (null != list && !list.isEmpty()) {
			Map tmp;
			for (int i = 0; i < list.size(); i++) {
				tmp = (Map) list.get(i);
				mainXml.append("<MDM_SRM_VEND_ITEM>");
				mainXml.append(PubTool.mapToXml(tmp));
				mainXml.append("</MDM_SRM_VEND_ITEM>");

			}
		}
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getGSXml(mainXml.toString(), "DATASET");

		mainXml = null;
		Map<String, String> tmp = new HashMap<String, String>();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "VEND_ITEM_GS");
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
		Object[] objects = new Object[] { inXml, "SYS", "CMS", TABLE };
		sc.setMsg_id(msgId);
		sc.setServiceNameSpace(nameSpace);
		sc.setServicesMethod(method);
		sc.setServiceUrl(serverUrl);
		sc.setParams(objects);
		(new Thread(sc)).start();

		if (log.isDebugEnabled()) {
			log.debug("传递 供应商商品 数据结束  ");
		}
	}

}
