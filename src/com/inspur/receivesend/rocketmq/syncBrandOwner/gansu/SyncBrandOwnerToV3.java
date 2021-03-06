package com.inspur.receivesend.rocketmq.syncBrandOwner.gansu;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.IndividTool;
import com.inspur.receivesend.rocketmq.PubTool;
import com.inspur.receivesend.rocketmq.syncBrandOwner.SyncBrandOwnerMapper;
import com.inspur.receivesend.rocketmq.syncItem.SyncItemMapper;
import com.inspur.receivesend.webservice.gansu.SyncMDMCall;

@Service("SyncBrandOwnerToV3")
public class SyncBrandOwnerToV3 {
	private static Log log = LogFactory.getLog(SyncBrandOwnerToV3.class);

	@Autowired
	private SyncBrandOwnerMapper syncBrandOwnerMapper;
	@Autowired
	private SyncItemMapper syncItemMapper;

	private static String TABLE = "MDM_SD_MANUFACTURER";

	public void syncBrandOwner(Map map) {

		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";

		// 商品信息
		Map itemMap = null;
		if ("insert".equals(method1)) {
			method = "crtManuFacturer";
			itemMap = syncBrandOwnerMapper.getDslBrandOwnerByGS(map);
		} else if ("update".equals(method1)) {
			method = "updManuFacturer";
			itemMap = syncBrandOwnerMapper.getDslBrandOwnerByGS(map);
		} else if ("delete".equals(method1)) {
			method = "delManuFacturer";
			itemMap = new HashMap();
			itemMap.put("MFR_ID", (String) map.get("BRDOWNER_ID"));
		}

		if (log.isDebugEnabled()) {
			log.debug("同步到甘肃的 品牌 信息为：" + itemMap);
		}
		String mainXml = PubTool.mapToXml(itemMap);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getGSXml(mainXml, TABLE);

		itemMap = null;
		mainXml = null;
		Map tmp = new HashMap();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "BRANDOWNER_GS");
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
			log.debug("传递 品牌拥有者 数据结束  ");
		}
	}

}
