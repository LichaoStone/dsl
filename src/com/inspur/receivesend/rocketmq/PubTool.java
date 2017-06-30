package com.inspur.receivesend.rocketmq;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.codehaus.jackson.map.ObjectMapper;

public class PubTool {
	private static Log log = LogFactory.getLog(PubTool.class);

	/**
	 * 将格式为{"name":"12342","wu":"999","peng":"gogogo"}的字符串重新转换为Map对象
	 * 
	 * @param str
	 * @return
	 */
	public static Map<String, String> getMapByJsonStr(String jsonStr) {
		Map<String, String> map = new HashMap<String, String>();
		if (null == jsonStr || "".equals(jsonStr) || "null".equals(jsonStr)
				|| !jsonStr.endsWith("\"}"))
			return null;
		String sb = jsonStr.substring(2, jsonStr.length() - 2);
		String[] name = sb.split("\\\",\\\"");
		String[] nn = null;
		for (int i = 0; i < name.length; i++) {
			nn = name[i].split("\\\":\\\"");
			map.put(nn[0], nn[1]);
		}
		return map;
	}

	/**
	 * 将格式为 { "Result": true, "Msg": "取商品信息成功!", "Code":
	 * "返回的状态编码,字符类型，如000标示成功，999标示失败", "ItemInfo": { "ITEM_ID": "商品编码",
	 * "ITEM_NAME": "商品名称", "SHORT_NAME": "商品简称", } } 的字符串重新转换为Map对象
	 * 
	 * @param str
	 * @return
	 */
	public static Map getMap(String jsonStr) {
		Map returnMap = new HashMap();
		if (null == jsonStr || jsonStr.trim().equals("")) {
			return returnMap;
		}
		try {
			ObjectMapper om = new ObjectMapper();
			return om.readValue(jsonStr, Map.class);

		} catch (IOException e) {
			log.error("json转换为对象的时候出现异常。" + e.toString());
			e.printStackTrace();
		}
		return returnMap;
	}

	public static String mapToXml(Map map) {
		StringBuffer sb = new StringBuffer("");
		if (null != map && !map.isEmpty()) {
			Iterator it = map.entrySet().iterator();
			Map.Entry key;
			int i = 0;
			while (it.hasNext()) {
				key = (Map.Entry) it.next();
				Object keys = key.getKey();
				String name = (String) keys;
				if (null != name && !"".equals(name)) {
					name = name.toLowerCase();
				}
				Object keysValue = key.getValue();
//				if (i != 0 && i % 3 == 0) {
//					sb.append("/n");
//				}
				sb.append("<");
				sb.append(name.toUpperCase());
				sb.append(">");
				sb.append(null==keysValue?"":keysValue);
				sb.append("</");
				sb.append(name.toUpperCase());
				sb.append(">");
				i++;
			}
		}
		return sb.toString();
	}

	public String mapToString(Map map) {
		StringBuffer sb = new StringBuffer();
		Iterator it = map.entrySet().iterator();
		Map.Entry key;
		while (it.hasNext()) {
			key = (Map.Entry) it.next();
			Object keys = key.getKey();
			String name = (String) keys;
			if (null != name && !"".equals(name)) {
				name = name.toLowerCase();
			}
			Object keysValue = key.getValue();
			sb.append(name).append("='").append(keysValue).append("' ");
		}
		return sb.toString();
	}
}
