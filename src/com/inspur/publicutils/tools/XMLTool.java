package com.inspur.publicutils.tools;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

public class XMLTool {
	private static Log log = LogFactory.getLog(XMLTool.class);

	/**
	 * @param apyXml
	 *            传入数据，以xml格式定义
	 * @param rootNode
	 *            根节点
	 * @param msg_id
	 *            日志ID
	 * @return
	 * @throws DocumentException
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static Map<String, String> xmlToMap(String apyXml, String rootNode) throws DocumentException {
		if (log.isDebugEnabled()) {
			log.debug("--XMLTool--xmlToMap--start");
			log.debug("--XMLTool--apyXml=" + apyXml);
			log.debug("--XMLTool--rootNode=" + rootNode);
		}
		StringBuffer sb = new StringBuffer();
		sb.append("//").append(rootNode);
		Document doc = null;
		Map attrMap = new HashMap();

		doc = DocumentHelper.parseText(apyXml);
		if (log.isDebugEnabled()) {
			log.debug("--XMLTool--xmlToMap--doc=" + doc);
		}
		List nodeList = doc.selectNodes(sb.toString());
		if (log.isDebugEnabled()) {
			log.debug("--XMLTool--xmlToMap--nodeList=" + nodeList);
		}
		Element nodeElement = (Element) nodeList.get(0);
		if (log.isDebugEnabled()) {
			log.debug("--XMLTool--xmlToMap--nodeElement=" + nodeElement);
		}
		List elementList = nodeElement.elements();
		if (log.isDebugEnabled()) {
			log.debug("--XMLTool--xmlToMap--elementList=" + elementList);
		}
		for (int i = 0; i < elementList.size(); i++) {
			Element attrEt = (Element) elementList.get(i);
			//String ACTION = attrEt.attributeValue("ACTION");
			attrMap.put(attrEt.getName(), attrEt.getText() == null ? "" : attrEt.getText().trim());
			//attrMap.put("ACTION", ACTION);
		}

		if (log.isDebugEnabled()) {
			log.debug("--XMLTool--attrMap=" + attrMap);
			log.debug("--XMLTool--xmlToMap--end");
		}
		return attrMap;
	}

	/**
	 * Map转换为XML格式
	 * 
	 * @作者 栗超
	 * @时间 2016年6月8日 下午2:24:31
	 * @说明
	 * @修改
	 * @param map
	 * @param rootNode
	 *            xml跟节点
	 * @return
	 */
	public static String mapToXml(Map map, String rootNode) {
		StringBuffer sb = new StringBuffer("");
		sb.append("<?xml version =\"1.0\" encoding=\"UTF-8\"?>").append("<").append(rootNode).append(">");

		if (null != map && !map.isEmpty()) {
			Iterator it = map.entrySet().iterator();
			Map.Entry key;
			int i = 0;
			while (it.hasNext()) {
				key = (Map.Entry) it.next();
				Object keys = key.getKey();
				String name = (String) keys;
				if (null != name && !"".equals(name)) {
					name = name.toUpperCase();
				}
				Object keysValue = key.getValue();
				// if (i != 0 && i % 3 == 0) {
				// sb.append("/n");
				// }
				sb.append("<");
				sb.append(name);
				sb.append(">");
				sb.append(keysValue);
				sb.append("</");
				sb.append(name);
				sb.append(">");
				i++;
			}
		}
		sb.append("</").append(rootNode).append(">");
		return sb.toString();
	}

	public static void main(String[] args) {
		StringBuffer xml = new StringBuffer();
		xml.append("<?xml version=\"1.0\" encoding=\"utf-8\"?><root><themeBar>").append("<appId>消息ID</appId><themeColor>消息编码</themeColor><headerColor>111</headerColor>")
				.append("</themeBar><titleBar><position>11</position><title>董信超</title><style>picText</style></titleBar></root>");
		Map<String, String> map = new HashMap<String, String>();
		try {
			map = xmlToMap(xml.toString(), "themeBar");
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		System.out.println(xml);
		System.out.println(map);
	}
}
