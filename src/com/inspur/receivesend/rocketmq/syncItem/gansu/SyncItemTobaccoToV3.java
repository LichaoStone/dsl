package com.inspur.receivesend.rocketmq.syncItem.gansu;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.IndividTool;
import com.inspur.receivesend.rocketmq.PubTool;
import com.inspur.receivesend.rocketmq.syncItem.SyncItemMapper;
import com.inspur.receivesend.webservice.gansu.SyncMDMCall;

@Service("SyncItemTobaccoToV3")
public class SyncItemTobaccoToV3 {
	private static Log log = LogFactory.getLog(SyncItemTobaccoToV3.class);

	@Autowired
	private SyncItemMapper syncItemMapper;

	private static String TABLE = "MDM_SD_ITEM_TOBACCO";

	public void syncItemTobacco(Map map) throws Exception {

		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";
		if ("insert".equals(method1)) {
			method = "crtItemTobacco";
		} else if ("update".equals(method1)) {
			method = "updItemTobacco";
		} else if ("delete".equals(method1)) {
			method = "delItemTobacco";
		}

		// 商品信息
		Map itemMap = syncItemMapper.getDslItemTobaccoByGS(map);
		if (log.isDebugEnabled()) {
			log.debug("同步到甘肃sd_item_tobacco的信息为：" + itemMap);
		}
		String mainXml = PubTool.mapToXml(itemMap);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getGSXml(mainXml, TABLE);

		itemMap = null;
		mainXml = null;
		Map<String, String> tmp = new HashMap<String, String>();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "ITEM_TOBACCO_GS");
		Map tmp1 = syncItemMapper.getServerInfo(tmp);
		if (null == tmp1 || tmp1.isEmpty()) {
			log.error("调用服务失败，没有维护服务" + tmp + "！");
		}
		String serverUrl = (String) tmp1.get("SERVER_URL");
		String nameSpace = (String) tmp1.get("NAME_SPACE");
		if (log.isDebugEnabled()) {
			log.debug("组织数据完成，开始调用接口，接口相关信息为：" +tmp1);
		}

		try {
			SyncMDMCall sc = new SyncMDMCall();
			Object[] objects = new Object[] { inXml, "SYS", "CMS", TABLE };
			sc.setMsg_id(msgId);
			sc.setServiceNameSpace(nameSpace);
			sc.setServicesMethod(method);
			sc.setServiceUrl(serverUrl);
			sc.setParams(objects);
			(new Thread(sc)).start();
		} catch (Exception e) {
			// 处理失败
			if (log.isErrorEnabled()) {
				log.error("处理失败：" + e);
			}
			throw new Exception("调用甘肃主数据服务接口出错，请联系系统管理员！" + e);
		}
		if (log.isDebugEnabled()) {
			log.debug("传递商品数据结束  ");
		}
	}

}
