package com.inspur.receivesend.rocketmq;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

//组织各项目个性化信息时用
public class IndividTool {
	private static Log log = LogFactory.getLog(IndividTool.class);

	public static String getCQXml(String mainXml, String modelId, String opType) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<BODY><INFO>");
		sb.append("<MODEL_ID>" + modelId + "</MODEL_ID>");
		sb.append("<OP_TYPE>" + opType + "</OP_TYPE>");
		sb.append("</INFO><" + modelId + ">");
		sb.append(mainXml);
		sb.append("</" + modelId + "></BODY>");

		return sb.toString();

	}

	public static String getGSXml(String mainXml, String table) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"gb2312\"?>");
		sb.append("<DATASETS><" + table);
		sb.append(">");
		sb.append(mainXml);
		sb.append("</" + table + "></DATASETS>");

		return sb.toString();
	}

}
