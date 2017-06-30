package com.inspur.receivesend.rocketmq.syncCust.gansu;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.receivesend.rocketmq.IndividTool;
import com.inspur.receivesend.rocketmq.PubTool;
import com.inspur.receivesend.rocketmq.syncCust.SyncCustMapper;
import com.inspur.receivesend.webservice.gansu.SyncMDMCall;

@Service("SyncCustToV3")
public class SyncCustToV3 {
	private static Log log = LogFactory.getLog(SyncCustToV3.class);

	@Autowired
	private SyncCustMapper syncCustMapper;

	public void syncRmCust(Map map) {
		String TABLE1 = "MDM_RM_CUST";
		String TABLE2 = "MDM_RM_CUST_OTHER";
		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";

		// 商品信息
		Map custMap = null;
		Map otherMap = null;
		if ("insert".equals(method1)) {
			method = "crtCust";
			custMap = syncCustMapper.getDslRmCustNewInGS(map);
			otherMap = syncCustMapper.getDslRmCustOtherNewInGS(map);
		} else if ("update".equals(method1)) {
			method = "updCust";
			custMap = syncCustMapper.getDslRmCustInGS(map);
			otherMap = syncCustMapper.getDslRmCustOtherInGS(map);
		} else if ("delete".equals(method1)) {
			method = "updCust";
			custMap = syncCustMapper.getDslRmCustInGS(map);
			otherMap = syncCustMapper.getDslRmCustOtherInGS(map);
		}

		if (log.isDebugEnabled()) {
			log.debug("同步到甘肃的客户信息为：" + custMap+otherMap);
		}
		String mainXml1 = PubTool.mapToXml(custMap);
		String mainXml2 = PubTool.mapToXml(otherMap);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml1+"《--》"+mainXml2);
		}

		String inXml = getDoubleXml(mainXml1,mainXml2, TABLE1,TABLE2);

		Map tmp = new HashMap();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "RM_CUST_GS");
		Map tmp1 = syncCustMapper.getServerInfo(tmp);
		if (null == tmp1 || tmp1.isEmpty()) {
			log.error("调用服务失败，没有维护服务" + tmp + "！");
		}
		String serverUrl = (String) tmp1.get("SERVER_URL");
		String nameSpace = (String) tmp1.get("NAME_SPACE");
		if (log.isDebugEnabled()) {
			log.debug("组织数据完成，开始调用接口，接口相关信息为：" + tmp1);
		}

		SyncMDMCall sc = new SyncMDMCall();
		Object[] objects = new Object[] { inXml, "SYS", "CMS", TABLE1 };
		sc.setMsg_id(msgId);
		sc.setServiceNameSpace(nameSpace);
		sc.setServicesMethod(method);
		sc.setServiceUrl(serverUrl);
		sc.setParams(objects);
		(new Thread(sc)).start();

		if (log.isDebugEnabled()) {
			log.debug("传递客户数据结束  ");
		}
	}
	public void syncRmCustOther(Map map) {
		String TABLE = "MDM_RM_CUST_OTHER";
		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";
		// 商品信息
		Map custMap = null;
		if ("insert".equals(method1)) {
			method = "crtCustOther";
			custMap = syncCustMapper.getDslRmCustOtherInGS(map);
		} else if ("update".equals(method1)) {
			method = "updCustOther";
			custMap = syncCustMapper.getDslRmCustOtherInGS(map);
		} else if ("delete".equals(method1)) {
			method = "updCustOther";
			custMap = syncCustMapper.getDslRmCustOtherInGS(map);
		}

		if (log.isDebugEnabled()) {
			log.debug("同步到甘肃的客户信息为：" + custMap);
		}
		String mainXml = PubTool.mapToXml(custMap);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getGSXml(mainXml, TABLE);

		custMap = null;
		mainXml = null;
		Map tmp = new HashMap();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "RM_CUST_OTHER_GS");
		Map tmp1 = syncCustMapper.getServerInfo(tmp);
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
			log.debug("传递客户数据结束  ");
		}
	}
	public void syncCcCcust(Map map) {
		String TABLE = "MDM_CC_CCUST";
		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";
		// 商品信息
		Map custMap = null;
		if ("insert".equals(method1)) {
			method = "crtCcust";
			custMap = syncCustMapper.getDslCcCcustInGS(map);
		} else if ("update".equals(method1)) {
			method = "updCcust";
			custMap = syncCustMapper.getDslCcCcustInGS(map);
		} else if ("delete".equals(method1)) {
			method = "delCcust";
			custMap=new HashMap();
			custMap.put("CUST_ID", (String) map.get("CUST_ID"));
		}

		if (log.isDebugEnabled()) {
			log.debug("同步到甘肃的客户信息为：" + custMap);
		}
		String mainXml = PubTool.mapToXml(custMap);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getGSXml(mainXml, TABLE);

		custMap = null;
		mainXml = null;
		Map tmp = new HashMap();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "CC_CCUST_GS");
		Map tmp1 = syncCustMapper.getServerInfo(tmp);
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
			log.debug("传递客户数据结束  ");
		}
	}
	public void syncSdCustDist(Map map) {
		String TABLE = "MDM_SD_CUST_DIST";
		String msgId = (String) map.get("MSG_ID");
		String method1 = (String) map.get("METHOD");
		String method = "";
		// 商品信息
		Map custMap = null;
		if ("insert".equals(method1)) {
			method = "crtCustDist";
			custMap = syncCustMapper.getDslSdCustDistInGS(map);
		} else if ("update".equals(method1)) {
			method = "updCustDist";
			custMap = syncCustMapper.getDslSdCustDistInGS(map);
		} else if ("delete".equals(method1)) {
			method = "delCustDist";
			custMap=new HashMap();
			custMap.put("CUST_ID", (String) map.get("CUST_ID"));
		}

		if (log.isDebugEnabled()) {
			log.debug("同步到甘肃的客户信息为：" + custMap);
		}
		String mainXml = PubTool.mapToXml(custMap);
		if (log.isDebugEnabled()) {
			log.debug("调用甘肃接口的关键数据信息   mainXml=" + mainXml);
		}

		String inXml = IndividTool.getGSXml(mainXml, TABLE);

		custMap = null;
		mainXml = null;
		Map tmp = new HashMap();
		tmp.put("MODULE_ID", "MDM_SERVER_GS");
		tmp.put("SERVER_ID", "SD_CUST_DIST_GS");
		Map tmp1 = syncCustMapper.getServerInfo(tmp);
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
			log.debug("传递客户数据结束  ");
		}
	}
	public static String getDoubleXml(String mainXml1,String mainXml2, String table1, String table2) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"gb2312\"?>");
		sb.append("<DATASETS>");
		sb.append("<" + table1+">");
		sb.append(mainXml1);
		sb.append("</" + table1 + ">");
		sb.append("<" + table2+">");
		sb.append(mainXml2);
		sb.append("</" + table2 + ">");
		sb.append("</DATASETS>");
		return sb.toString();
	}
}
