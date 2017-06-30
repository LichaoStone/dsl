package com.inspur.receivesend.rocketmq.syncItem.chongqing;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.IndividTool;
import com.inspur.receivesend.rocketmq.PubTool;
import com.inspur.receivesend.rocketmq.syncItem.SyncItemMapper;
import com.inspur.receivesend.webservice.chongqing.SyncMDMCall;

@Service("SyncItemToMDM")
public class SyncItemToMDM {
	private static Log log = LogFactory.getLog(SyncItemToMDM.class);

	@Autowired
	private SyncItemMapper syncItemMapper;

	private static String MODEL_ID = "ITEM";

	public void syncItem(Map map) throws Exception {

		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";
		String opType = "";
		if ("insert".equals(method1)) {
			method = "crtItem";
			opType = "INSERT";
		} else if ("update".equals(method1)) {
			method = "updItem";
			opType = "UPDATE";
		} else if ("delete".equals(method1)) {
			method = "delItem";
			opType = "UPDATE";
		}

		Map itemMap = syncItemMapper.findDslItemByCQ(map);
		if (log.isDebugEnabled()) {
			log.debug("同步到重庆的信息为：" + itemMap);
		}

		String mainXml = PubTool.mapToXml(itemMap);
		if (log.isDebugEnabled()) {
			log.debug("调用重庆接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getCQXml(mainXml, MODEL_ID, opType);

		itemMap = null;
		mainXml = null;
		Map tmp = new HashMap();
		tmp.put("MODULE_ID", "MDM_SERVER_CQ");
		tmp.put("SERVER_ID", "ITEM_CQ");

		Map tmp1 = syncItemMapper.getServerInfo(tmp);
		if (null == tmp1 || tmp1.isEmpty()) {
			log.error("调用服务失败，没有维护服务" + tmp + "！");
		}
		String serverUrl = (String) tmp1.get("SERVER_URL");
		String nameSpace = (String) tmp1.get("NAME_SPACE");
		if (log.isDebugEnabled()) {
			log.debug("组织数据完成，开始调用接口，接口相关信息为： " + tmp1);
		}

		try {
			SyncMDMCall sc = new SyncMDMCall();
			sc.setMsg_id(msgId);
			sc.setServiceUrl(serverUrl);
			sc.setServiceNameSpace(nameSpace);
			sc.setServicesMethod(method);
			sc.setInXml(inXml);
			(new Thread(sc)).start();
		} catch (Exception e) {
			// 处理失败
			if (log.isErrorEnabled()) {
				log.error("处理失败：" + e);
			}
			throw new Exception("调用重庆主数据服务接口出错，请联系系统管理员！" + e);
		}
	}
}
