package com.inspur.receivesend.webservice.beijing.synclicense;

import java.rmi.RemoteException;
import java.util.List;
import java.util.Map;

import javax.xml.namespace.QName;

import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.rpc.client.RPCServiceClient;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.inspur.lambo.plantform.service.support.idtable.IdProvider;
import com.inspur.publicutils.ServiceProcessLogUtils;
import com.inspur.publicutils.tools.PropertiesUtil;
import com.inspur.publicutils.tools.XMLTool;
import com.inspur.receivesend.webservice.beijing.synclicense.trans.ISyncLicenseService;

public class SyncYCCall implements Runnable {
	private static Log log = LogFactory.getLog(SyncYCCall.class);
	private String msg_id;// 日志ID
	private Object[] params;// 参数列表
	private String serviceNameSpace;// 服务命名空间
	private String serviceUrl;// 服务URL
	private String servicesMethod;// 服务方法
	private ISyncLicenseService syncLicenseService;
	
	public ISyncLicenseService getSyncLicenseService() {
		return syncLicenseService;
	}

	public void setSyncLicenseService(ISyncLicenseService syncLicenseService) {
		this.syncLicenseService = syncLicenseService;
	}

	public String getMsg_id() {
		return msg_id;
	}

	public void setMsg_id(String msg_id) {
		this.msg_id = msg_id;
	}

	public Object[] getParams() {
		return params;
	}

	public void setParams(Object[] params) {
		this.params = params;
	}

	public String getServiceNameSpace() {
		return serviceNameSpace;
	}

	public void setServiceNameSpace(String serviceNameSpace) {
		this.serviceNameSpace = serviceNameSpace;
	}

	public String getServiceUrl() {
		return serviceUrl;
	}

	public void setServiceUrl(String serviceUrl) {
		this.serviceUrl = serviceUrl;
	}

	public String getServicesMethod() {
		return servicesMethod;
	}

	public void setServicesMethod(String servicesMethod) {
		this.servicesMethod = servicesMethod;
	}

	@Override
	public void run() {
		if (log.isDebugEnabled()) {
			log.debug("--SyncMDMCall--run--start");
			log.debug("--SyncMDMCall--run--serviceNameSpace=" + getServiceNameSpace());
			log.debug("--SyncMDMCall--run--serviceUrl=" + getServiceUrl());
			log.debug("--SyncMDMCall--run--servicesMethod=" + getServicesMethod());
		}
		// 方法的参数值集合
		Object[] param = getParams();
		for (Object s : param) {
			log.debug("--SyncMDMCall--run--params=" + s);
		}
		String xml =param[0].toString();
		String returnStr = "";
		
		try {
			//将xml转成map
			Map<String, String> xmlMap = XMLTool.xmlToMap(xml, "BASE");
			//从数据库查询已知资料
			List list  = syncLicenseService.getCrmZmEnumRef();
			//将查询到的值放入ENUM中
			String callEnum[][] = new String[list.size()][3];
			if(list.size()>0){
				for(int i=0;i<list.size();i++){
					Map map = (Map) list.get(i);
					callEnum[i][0]=(String) map.get("DICT_ID");
					callEnum[i][1]=(String) map.get("ZM_DICT_KEY");
					callEnum[i][2]=(String) map.get("DICT_KEY");
				}
			}
			//利用另一个类里面的方法，来实现枚举值转换
			xmlMap = SyncLicense.dataToNewData(xmlMap,callEnum);
			//组装数据
			
			 //组装数据结构
			StringBuffer strBuf = new StringBuffer();
			strBuf.append("{\"HEAD\": {\"SOURCE\": \"\"},");
			strBuf.append("\"BODY\":{\"DATASET\":[{");
			String comId = "";
			String cregieId = "";
			if(xmlMap.get("ORG_CODE")!=null){
				comId = (String)xmlMap.get("ORG_CODE");
				Map organMap =syncLicenseService.getCrmZmOrganRef(comId);
				
				strBuf.append("\"COM_ID\":").append("\"").append(organMap.get("COM_ID")).append("\",");
				cregieId = (String) organMap.get("CREGIE_ID");
				strBuf.append("\"MREGIE_ID\":").append("\"").append(organMap.get("MREGIE_ID")).append("\",");
				strBuf.append("\"CREGIE_ID\":").append("\"").append(cregieId).append("\",");
			}
			//a)其中CUST_ID通过机构参数控制生成，有三种模式 1）和许可证号一致  2）根据业务流水号 LM_CUST_ID（全局流水） 生成 3）根据业务流水号LM_AREA_CUST_ID（县局流水） 生生成。
			String proCustId = (String)PropertiesUtil.init("dslservices.properties").get("custId");
			log.debug("proCustId:"+proCustId);
			String custId ="";			
			switch (Integer.parseInt(proCustId)){
				case 1:custId = xmlMap.get("OLD_LIC_NO");break;//湖南项目使用 
				case 2:custId = IdProvider.nextStringValueByOrganId("LM_CUST_ID", comId);break;
				case 3:custId =	IdProvider.nextStringValueByOrganId("LM_AREA_CUST_ID", cregieId);break;
				default: log.error("proCustId配置有误！");break;
			}			
			strBuf.append("\"CUST_ID\":").append("\"").append(custId).append("\",");
			
			strBuf.append("\"CUST_NAME\":").append("\"").append(xmlMap.get("COMPANY_NAME")).append("\",");
			strBuf.append("\"BUSI_LICENSE_START_DATE\":").append("\"").append((String)xmlMap.get("ACCREDI_DATE").replaceAll("-", "")).append("\",");
			strBuf.append("\"BUSI_LICENSE_AVAIL_DATE\":").append("\"").append((String)xmlMap.get("VALIDATE_END").replaceAll("-", "")).append("\",");
			strBuf.append("\"CUST_SHORT_NAME\":").append("\"").append(xmlMap.get("COMPANY_NAME")).append("\",");
			
			String nationCustCode = (String)PropertiesUtil.init("dslservices.properties").get("nationCustCode");
			String custCode="";
			log.debug("nationCustCode:"+nationCustCode);
			//b)NATION_CUST_CODE取许可证前7位+5位流水，流水号取LM_NATION_CUST_CODE（县局流水）。湖南直接使用许可证号
			switch (Integer.parseInt(nationCustCode)){
				case 1:custCode = xmlMap.get("LIC_NO");break;//湖南项目使用 
				case 2:custCode = xmlMap.get("LIC_NO").substring(0,7)+IdProvider.nextStringValueByOrganId("LM_NATION_CUST_CODE", cregieId);break;
				case 3:custId = IdProvider.nextStringValueByOrganId("LM_AREA_CUST_ID", cregieId);custCode = xmlMap.get("LIC_NO").substring(0,7)+custId.substring(custId.length()-4, custId.length());break;//广西项目使用
				default: log.error("nationCustCode配置有误！");break;
			}	
			strBuf.append("\"NATION_CUST_CODE\":").append("\"").append(custCode).append("\",");
			strBuf.append("\"LICENSE_CODE\":").append("\"").append(xmlMap.get("LIC_NO")).append("\",");
			strBuf.append("\"STATUS\":").append("\"").append(xmlMap.get("NOW_EFFECT_STATUS")).append("\",");		
			strBuf.append("\"MANAGER\":").append("\"").append(xmlMap.get("MANAGER_NAME")).append("\",");
			strBuf.append("\"MANAGER_TEL\":").append("\"").append(xmlMap.get("RETAIL_TEL")).append("\",");
			strBuf.append("\"BUSI_ADDR\":").append("\"").append(xmlMap.get("BUSINESS_ADDR")).append("\",");
			strBuf.append("\"COM_CHARA\":").append("\"").append(xmlMap.get("ECO_TYPE")).append("\",");
			strBuf.append("\"BASE_TYPE\":").append("\"").append(xmlMap.get("BIZ_FORMAT")).append("\",");
			strBuf.append("\"WORK_PORT\":").append("\"").append(xmlMap.get("AREA_TYPE")).append("\",");
			String space = "";
			if("insertLmCust".equals(getServicesMethod())){
				space = " ";
			}
			strBuf.append("\"CUST_SHORT_ID\":").append("\"").append(space).append("\",");
			strBuf.append("\"CHARTER_SCOPE\":").append("\"").append(space).append("\",");
			strBuf.append("\"IDENTITY_CARD_ID\":").append("\"").append(space).append("\",");
			strBuf.append("\"SALE_CENTER_ID\":").append("\"").append(space).append("\",");
			strBuf.append("\"SALE_DEPT_ID\":").append("\"").append(space).append("\",");
			strBuf.append("\"SALE_MGR_ID\":").append("\"").append(space).append("\",");
			strBuf.append("\"SLSMAN_ID\":").append("\"").append(space).append("\",");

			strBuf.append("\"SALE_SCOPE\":").append("\"").append(space).append("\",");
			strBuf.append("\"AREA_TYPE\":").append("\"").append(space).append("\",");
			strBuf.append("\"ORDER_WAY\":").append("\"").append(space).append("\",");
			strBuf.append("\"PAY_TYPE\":").append("\"").append(space).append("\",");
			strBuf.append("\"ORDER_TEL\":").append("\"").append(xmlMap.get("RETAIL_TEL")).append("\",");
			strBuf.append("\"OBTELNO\":").append("\"").append(xmlMap.get("EXT1")).append("\"");
			strBuf.append("}]}}");
			if (log.isDebugEnabled()) {
				log.debug("strbuf：" + strBuf);
			}	
			
			Object[] param2 = {strBuf.toString()};
			RPCServiceClient serviceClient = new RPCServiceClient();
			Options options = serviceClient.getOptions();

			// 调用服务的地址
			EndpointReference targetEPR = new EndpointReference(getServiceUrl());
			options.setTo(targetEPR);
			// 第二个参数为方法名
			QName namespace = new QName(getServiceNameSpace(), getServicesMethod());

			// 参数类型集合
			Class[] paramType = new Class[] { String.class, String.class, String.class, String.class };
			// Object[] b = serviceClient.invokeBlocking(namespace, param,
			// paramType);
			Object[] b = serviceClient.invokeBlocking(namespace, param2, paramType);
			returnStr = (String) b[0];
			if (log.isDebugEnabled()) {
				log.debug("调用营销中心接口返回的信息为：" + returnStr);
			}
			//调用第二次插入方法
//			if("insertLmCust".equals(getServicesMethod())){
//				namespace = new QName(getServiceNameSpace(), "insertSaleCust");
//				b = serviceClient.invokeBlocking(namespace, param2, paramType);
//				returnStr = (String) b[0];
//				if (log.isDebugEnabled()) {
//					log.debug("调用营销中心接口insertSaleCust方法返回的信息为：" + returnStr);
//				}
//			}
			// 调用第三方应用成功
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), ServiceProcessLogUtils.SERVICE_PROCESS_LOG_INFO,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_SUCCESS,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		} catch (RemoteException e) {
			if (log.isErrorEnabled()) {
				log.error("调用第三方webservice失败RemoteException：", e);
			}
			// 调用第三方应用失败
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		} catch (RuntimeException e) {
			if (log.isErrorEnabled()) {
				log.error("调用第三方webservice失败RuntimeException：", e);
			}
			// 调用第三方应用失败
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		} catch (Exception e) {
			if (log.isErrorEnabled()) {
				log.error("调用第三方webservice失败Exception：", e);
			}
			// 调用第三方应用失败
			ServiceProcessLogUtils.insertProcessLog(getMsg_id(), e.toString(),
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_RESULT_FALID,
					ServiceProcessLogUtils.SERVICE_PROCESS_LOG_NODE_SEND);
		}

		if (log.isDebugEnabled()) {
			log.debug("--SyncMDMCall--end");
		}
	}

}
