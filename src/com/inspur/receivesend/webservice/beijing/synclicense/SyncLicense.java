/**
 * 
 */
package com.inspur.receivesend.webservice.beijing.synclicense;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import org.apache.axis2.AxisFault;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.dom4j.DocumentException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.inspur.publicutils.Axis2Util;
import com.inspur.publicutils.MsgLogsUtils;
import com.inspur.publicutils.ServiceProcessLogUtils;
import com.inspur.publicutils.beans.MsgRecodeBean;
import com.inspur.publicutils.tools.DateTool;
import com.inspur.publicutils.tools.PropertiesUtil;
import com.inspur.publicutils.tools.XMLTool;
import com.inspur.receivesend.webservice.beijing.synclicense.trans.ISyncLicenseService;

/**
 * 零售许可证信息变更同步 实现类
 * 
 * @作者 栗超
 * @时间 2016年6月8日 上午10:20:36
 * @说明
 * @修改
 */
@Component("syncLicenseWebService")
public class SyncLicense implements ISyncLicense {
	private static Log log = LogFactory.getLog(SyncLicense.class);
	@Autowired
	private ISyncLicenseService syncLicenseService;
	//对应的datacenter数据库存放内容
	private static String ENUM[][]={
			{"NOW_EFFECT_STATUS","2701","01"},
			{"NOW_EFFECT_STATUS","2702","01"},
			{"NOW_EFFECT_STATUS","2703","03"},
			{"NOW_EFFECT_STATUS","2705","04"},
			{"NOW_EFFECT_STATUS","2706","03"},
			{"SPECIAL_PERSON_GROUP","2401","00"},
			{"SPECIAL_PERSON_GROUP","2402","01"},
			{"SPECIAL_PERSON_GROUP","2403","02"},
			{"SPECIAL_PERSON_GROUP","2404","04"},
			{"SPECIAL_PERSON_GROUP","2405","05"},
			{"SPECIAL_PERSON_GROUP","2406","06"},
			{"SPECIAL_PERSON_GROUP","2407","90"},
			{"SPECIAL_PERSON_GROUP","2408","90"},
			{"BIZ_FORMAT","2901","Z"},
			{"BIZ_FORMAT","2902","B"},
			{"BIZ_FORMAT","2903","S"},
			{"BIZ_FORMAT","2904","N"},
			{"BIZ_FORMAT","2905","Y"},
			{"BIZ_FORMAT","2906","F"},
			{"BIZ_FORMAT","2907","Q"},
			{"AREA_TYPE","3001","C"},
			{"AREA_TYPE","3002","X"},
			{"ECO_TYPE","1401"," 05"},
			{"ECO_TYPE","1402"," 06"},
			{"ECO_TYPE","1403"," 07"},
			{"ECO_TYPE","1404"," 02"},
			{"ECO_TYPE","1405"," 01"},
			{"ECO_TYPE","1406"," 09"},
			{"ECO_TYPE","1407"," 04"},
			{"ECO_TYPE","1408"," 03"},
			{"ECO_TYPE","1409"," 08"},
			{"ECO_TYPE","1410"," 10"},
			{"GROUND_OWNERSHIP","2501","1"},
			{"GROUND_OWNERSHIP","2502","0"},
			{"GROUND_OWNERSHIP","2503","0"},
			{"GROUND_OWNERSHIP","2504","0"},
			{"GROUND_OWNERSHIP","2505","0"},
	};
	/*
	 * 
	 * @see com.inspur.receivesend.webservice.beijing.synclicense.ISyncLicense#
	 * syncLicense(java.lang.String)
	 */
	@Override
	public String syncLicense(String xml) {
		if (log.isDebugEnabled()) {
			log.debug("--SyncLicense--syncLicense--start");
			log.debug("--SyncLicense--syncLicense--xml=" + xml);
		}
		String XML_iso = null;
		String XML_GBK = null;
		// 转码 UTF-8-->GBK
		try {
			XML_iso = new String(xml.getBytes("UTF-8"), "iso-8859-1");
			XML_GBK = new String(XML_iso.getBytes("iso-8859-1"), "GBK");

			if (log.isDebugEnabled()) {
				log.debug("--syncLicense--xml_UTF8=" + XML_iso);
				log.debug("--syncLicense--xml_GBK=" + XML_GBK);
			}
		} catch (UnsupportedEncodingException e) {
			log.error("XML编码转换错误：", e);
			e.printStackTrace();
		}

		// 组织参数
		Map<String, String> paraMap = new HashMap<String, String>();
		paraMap.put("xml", XML_GBK);
		String tag = (String)PropertiesUtil.init("dslservices.properties").get("tag");
		MsgRecodeBean msgRecodeBean = new MsgRecodeBean();
		// 插入原始日志,并更改日志状态为正在处理
		MsgLogsUtils.insertMsgLogs(msgRecodeBean.get_MSG_ID(), "DSL_LICENSE", "syncLicense", "xml", paraMap);
		StringBuffer stringBuffer = new StringBuffer();
		try {
			// 开始解析XML
			Map<String, String> map = XMLTool.xmlToMap(xml, "BASE");
			map.put("MSG_ID", msgRecodeBean.get_MSG_ID());

			Map<String, String> nodeMap = XMLTool.xmlToMap(xml, "BODY");
			String ACTION = (String) nodeMap.get("ACTION");
			if ("I".equals(ACTION)) {
				ACTION = "insert";
			} else if ("U".equals(ACTION)) {
				ACTION = "update";
			} else if ("D".equals(ACTION)) {
				ACTION = "delete";
			}

			// 解析成功
			MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(), MsgLogsUtils.SERVICE_MSG_SATUS_RESOLVE_SUCESS,
					ACTION);
			ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,
					MsgLogsUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);
			Map<String, String> mapp = XMLTool.xmlToMap(xml, "HEAD");

			// 组织返回串
			stringBuffer = getStringBuffer(mapp);
			try {
				// 根据OP_TYPE标志位判断插入、更新操作
				if ("insert".equals(ACTION)) {
					syncLicenseService.insertDslLicense(map);
					if("true".equals(tag)){
						insertLogMDM(ACTION, xml);
					}
				} else if ("update".equals(ACTION)) {

					if (syncLicenseService.findDslLicense(map.get("LIC_NO"))) {// 非空，true,可以修改，否则错误
						syncLicenseService.updateDslLicense(map);
						if("true".equals(tag)){
							insertLogMDM(ACTION, xml);
						}
					} else {// 不存在则插入
						syncLicenseService.insertDslLicense(map);
						if("true".equals(tag)){
							insertLogMDM(ACTION, xml);
						}
					}

				} else if ("delete".equals(ACTION)) {
					syncLicenseService.updateDslLicense(map);
					if("true".equals(tag)){
						insertLogMDM(ACTION, xml);
					}
				} else {
					if (log.isDebugEnabled()) {
						log.debug("<ROW ACTION=?>中ACTION字段缺失或非I、U和D...");
					}
					throw new RuntimeException("<ROW ACTION=?>中ACTION字段缺失或非I、U和D...");
				}

			} catch (Exception e1) {

				// 处理失败，组织返回数据
				stringBuffer.append("<BODY>").append("<ROW>").append("<DATACODE>").append(map.get("LIC_NO"))
						.append("</DATACODE>");
				stringBuffer.append("<STATUSCODE>").append("540").append("</STATUSCODE>");
				stringBuffer.append("<STATUSDESC>").append("数据库处理失败：" + e1.toString()).append("</STATUSDESC>");
				stringBuffer.append("</ROW>").append("</BODY>");
				stringBuffer.append("</BDMDATAEXCHANGERESULT>");

				// 处理失败
				MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(), MsgLogsUtils.SERVICE_MSG_SATUS_DEAL_FALID);
				ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(), e1.toString(),
						ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
						ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SAVE);
				if (log.isErrorEnabled()) {
					log.error("数据库操作失败：" + e1);
				}

				return stringBuffer.toString();

			}

			// 处理完成
			MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(), MsgLogsUtils.SERVICE_MSG_SATUS_DEAL_SUCCESS);
			ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SAVE);

			// 成功，组织返回数据
			stringBuffer.append("<BODY>").append("<ROW>").append("<DATACODE>").append(map.get("LIC_NO"))
					.append("</DATACODE>");
			stringBuffer.append("<STATUSCODE>").append("200").append("</STATUSCODE>");
			stringBuffer.append("<STATUSDESC>").append("同步零售户许可证信息成功！").append("</STATUSDESC>");
			stringBuffer.append("</ROW>").append("</BODY>");
			stringBuffer.append("</BDMDATAEXCHANGERESULT>");

			// ************开启新线程，发送MQ消息给营销系统************START
			SyncYCCall sc = new SyncYCCall();
			Object[] objects = new Object[] { xml };
			String IP = (String) PropertiesUtil.init("dslservices.properties").get("IP");
			String serviceUrl = "http://" + IP + "/crm/axis/NATION_CUST_SYNC_SERVICE"; // 需要修改项目IP
			String servicesMethod = "";
			if ("insert".equals(ACTION)) {
				servicesMethod = "insertLmCust";
			} else if ("update".equals(ACTION)) {
				servicesMethod = "updateCust";
			} else if ("delete".equals(ACTION)) {
				servicesMethod = "";
			}
			sc.setMsg_id(msgRecodeBean.get_MSG_ID());
			sc.setServiceNameSpace("http://loushang.ws");
			sc.setServicesMethod(servicesMethod);
			sc.setServiceUrl(serviceUrl);
			sc.setSyncLicenseService(syncLicenseService);
			sc.setParams(objects);
			(new Thread(sc)).start();		
			// ************结束新线程，发送MQ消息给营销系统************END

		} catch (DocumentException e) {
			// 解析失败
			MsgLogsUtils.updateMsgLogs(msgRecodeBean.get_MSG_ID(), MsgLogsUtils.SERVICE_MSG_SATUS_RESOLVE_FALID);
			ServiceProcessLogUtils.insertProcessLog(msgRecodeBean.get_MSG_ID(), e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_RESOLVE);

			// 解析失败，组织返回数据
			stringBuffer.append("<BODY>").append("<ROW>").append("<DATACODE>").append("解析失败").append("</DATACODE>");
			stringBuffer.append("<STATUSCODE>").append("510").append("</STATUSCODE>");
			stringBuffer.append("<STATUSDESC>").append("解析失败：" + e.toString()).append("</STATUSDESC>");
			stringBuffer.append("</ROW>").append("</BODY>");
			stringBuffer.append("</BDMDATAEXCHANGERESULT>");

			if (log.isErrorEnabled()) {
				log.error("解析失败：" + e);
			}
		}

		return stringBuffer.toString();
	}

	/**
	 * 组织返回信息串 成功
	 * 
	 * @作者 栗超
	 * @时间 2016年6月11日 下午9:51:28
	 * @说明
	 * @修改
	 * @param nodeMaps
	 * @return
	 */
	public static StringBuffer getStringBuffer(Map nodeMap) {
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("<?xml version =\"1.0\" encoding=\"UTF-8\"?>").append("<BDMDATAEXCHANGERESULT>")
				.append("<HEAD>");
		stringBuffer.append("<MSGID>").append(nodeMap.get("MSGID")).append("</MSGID>");
		stringBuffer.append("<MSGCODE>").append(nodeMap.get("MSGCODE")).append("</MSGCODE>");
		stringBuffer.append("<CREATETIME>").append(DateTool.getCurrentTimeMillisAsString()).append("</CREATETIME>");
		stringBuffer.append("<VERIFYCODE>").append("200").append("</VERIFYCODE>");
		stringBuffer.append("<VERIFYDESC>").append("同步零售户许可证信息").append("</VERIFYDESC>");
		stringBuffer.append("</HEAD>");

		return stringBuffer;
	}
/**
 * 
    * @Title: dataToNewData
    * @Description:将数据转换成与datacenter枚举项对应的
	* @author: zhaixinhua
    * @date: 2016年8月5日
    * @version: V1.0 
	* @update:
 */
	@SuppressWarnings("unused")
	protected static Map<String,String> dataToNewData(Map<String,String> colMap,String ENUM[][]){	
		if(log.isDebugEnabled()){
			log.debug("SyncLicense.dataToNewData() is starting!");
		}
		if(log.isDebugEnabled()){
			log.debug("colMapOld:"+colMap);
		}
		for(int i=0;i<ENUM.length;i++){
			if(null != colMap && ENUM[i][1].equals( colMap.get(ENUM[i][0]) )){
				colMap.put(ENUM[i][0], ENUM[i][2]);
			}
		}
		if(log.isDebugEnabled()){
			log.debug("colMapNew:"+colMap);
		}
		if(log.isDebugEnabled()){
			log.debug("SyncLicense.dataToNewData() is starting!");
		}
		return colMap;
	}
	/**
	 * 调用主数据web服务,往主数据中插入日志
	 * 
	 * @throws DocumentException
	 * @throws AxisFault
	 * 
	 * @作者 栗超
	 * @时间 2016年7月5日 下午3:18:05
	 * @说明
	 * @修改
	 */
	public static void insertLogMDM(String action, String xml) throws DocumentException, AxisFault {
		// 调用主数据web服务，写入主数据日志
		// MDM_CUSTOMER
		Map<String, String> xmlMap = XMLTool.xmlToMap(xml, "BASE");
		xmlMap = dataToNewData(xmlMap,ENUM);
		//Map<String, Object> xmlToMap = new HashMap<String, Object>();
		xmlMap.put("CUST_ID", xmlMap.get("LIC_NO"));
		xmlMap.put("LICENSE_CODE", xmlMap.get("LIC_NO"));
		xmlMap.put("CUST_NAME", xmlMap.get("COMPANY_NAME"));
		 xmlMap.put("COM_ID", "LJ0000000000316");
		 xmlMap.put("CREGIE_ID", xmlMap.get("ORG_CODE"));
		 xmlMap.put("STATUS", xmlMap.get("NOW_EFFECT_STATUS"));
		 xmlMap.put("LICE_STATUS", xmlMap.get("IS_VALIDATE"));
		 xmlMap.put("LICE_BORN_DATE", xmlMap.get("VALIDATE_START"));
		 xmlMap.put("LICE_AVAIL_DATE", xmlMap.get("VALIDATE_END"));
		 xmlMap.put("LICE_ISSUE_DATE", xmlMap.get("ISSUE_DATE"));
		 xmlMap.put("MANAGER", xmlMap.get("MANAGER_NAME"));
		 xmlMap.put("MANAGER_ID_CARD", xmlMap.get("IDCARD"));
		 xmlMap.put("REG_FUND", xmlMap.get("REGISTERED_CAPITAL"));
		 xmlMap.put("MANAGER_TEL", xmlMap.get("RETAIL_TEL"));
		 xmlMap.put("MANAGER_SEX", "");
		 xmlMap.put("BUSI_ADDR", xmlMap.get("BUSINESS_ADDR"));
		 xmlMap.put("BUSI_ZIP",  "");
		 xmlMap.put("COM_CHARA", xmlMap.get("ECO_TYPE"));
		 xmlMap.put("CHARTER_SCOPE",  "");
		 xmlMap.put("COR_EMP_AMT","");
		 xmlMap.put("ALL_BUSI_AREA", xmlMap.get("BIZ_AREA"));
		 xmlMap.put("MANAGER_NATIVE",  "");
		 xmlMap.put("MANAGER_ID_ADDR",  "");
		 xmlMap.put("MANAGER_HANDTEL", xmlMap.get("RETAIL_TEL"));
		 xmlMap.put("EMAIL",  "");
		 xmlMap.put("SPECIAL_TYPE", xmlMap.get("SPECIAL_PERSON_GROUP"));
		 xmlMap.put("BUSI_LICENSE_ID", xmlMap.get("INDU_COMM_BUSINESS_LICENCE_NUMBER"));
		 xmlMap.put("BUSI_LICENSE_START_DATE", "");
		 xmlMap.put("BUSI_LICENSE_AVAIL_DATE",  "");
		 xmlMap.put("BUSI_AREA_PART", xmlMap.get("GROUND_OWNERSHIP"));
		 xmlMap.put("BUSI_ADDR_BEGIN_DATE", xmlMap.get("LEASE_TIMELIMIT_START"));
		 xmlMap.put("BUSI_ADDR_AVAIL_DATE", xmlMap.get("LEASE_TIMELIMIT_END"));
		 xmlMap.put("SUPPLY_CATEGORY",  "");
		 xmlMap.put("GEOGRAPHY_ENVIRONMENT",  "");
		 xmlMap.put("ORDER_TEL", xmlMap.get("RETAIL_TEL"));
		 xmlMap.put("WORK_PORT", xmlMap.get("AREA_TYPE"));
		 xmlMap.put("BASE_TYPE", xmlMap.get("BIZ_FORMAT"));
		 xmlMap.put("IS_SEFL_CUST",  "");
		 xmlMap.put("HARDSHIP_TYPE", "");
		 xmlMap.put("AREA_TYPE", "");
		 xmlMap.put("RUT_ID",  "");
		 xmlMap.put("LONGITUDE", "");
		// xmlMap.put("LATITUDE",  "");

		if (log.isDebugEnabled()) {
			log.debug("--SyncLicense--insertLogMDM--xmlMap=" + xmlMap);
		}
		String newXML = XMLTool.mapToXml(xmlMap, "CUSTOMER");
		if (log.isDebugEnabled()) {
			log.debug("--SyncLicense--insertLogMDM--newXML=" + newXML);
		}

		Object[] params = { newXML, "ETL", "DSL" };
		String serviceNameSpace = "http://loushang.ws";
		String IP = (String) PropertiesUtil.init("dslservices.properties").get("IP");
		String serviceUrl = "http://" + IP + "/datacenter/services/MDM_MDS_INF_Customer"; // 需要修改项目IP
		String servicesMethod = "";
		if ("insert".equals(action)) {
			servicesMethod = "crtCustomer";
		} else if ("update".equals(action)) {
			servicesMethod = "crtCustomer";
		} else if ("delete".equals(action)) {
			servicesMethod = "";
		}
		if (log.isDebugEnabled()) {
			log.debug("--SyncLicense--insertLogMDM--serviceUrl=" + serviceUrl);
			log.debug("--SyncLicense--insertLogMDM--action=" + action);
			log.debug("--SyncLicense--insertLogMDM--servicesMethod=" + servicesMethod);
		}
		Object returnStr = Axis2Util.invoke(serviceNameSpace, serviceUrl, servicesMethod, params);
		if (log.isDebugEnabled()) {
			log.debug("--SyncLicense--insertLogMDM--returnStr=" + returnStr);
		}
	}

}
