package com.inspur.receivesend.rocketmq.syncVend.gansu;

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

@Service("SyncComVendToV3")
public class SyncComVendToV3 {
	private static Log log = LogFactory.getLog(SyncComVendToV3.class);

	@Autowired
	private SyncItemMapper syncItemMapper;

	private static String TABLE = "MDM_SRM_COM_VEND";

	public void syncComVend(Map map) {

		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		map.remove("METHOD");
		map.remove("MSG_ID");
		String method = "";

		if ("insert".equals(method1)) {
			method = "crtComVend";
		} else if ("update".equals(method1)) {
			method = "updComVend";
		} else if ("delete".equals(method1)) {
			method = "delComVend";
		}

		String mainXml = PubTool.mapToXml(map);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getGSXml(mainXml, TABLE);

		mainXml = null;
		Map<String, String> tmp = new HashMap<String, String>();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "COM_VEND_GS");
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
			log.debug("传递 供应商 数据结束  ");
		}
	}

}
