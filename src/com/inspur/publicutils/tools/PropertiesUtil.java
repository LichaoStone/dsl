/**
 * 
 * @作者:丁怀雷
 * @说明:加载指定配置文件公共类文件
 * @时间:2016年5月9日
 */
package com.inspur.publicutils.tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 
 * @作者:丁怀雷
 * @说明:加载指定配置文件公共类
 * @时间:2016年5月9日
 */
public class PropertiesUtil {
	private static Log log = LogFactory.getLog(PropertiesUtil.class);

	@SuppressWarnings("finally")
	public static Properties init(String path) {
		Properties properties = new Properties();
		try {
			InputStream in = PropertiesUtil.class.getClassLoader().getResourceAsStream(path);
			if (in == null) {
				throw new RuntimeException("PropertiesUtil读取配置过程中" + path+ "文件找不到！");
			}
			properties.load(in);
		} catch (IOException e) {
			if(log.isErrorEnabled()){
			log.error("PropertiesUtil 加载" + path + "文件出错", e);
			}
		} finally {
			return properties;
		}
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：获取项目默认对应的配置文件中的值
	 * @时间：2016年5月9日
	 */
	public static String getDefaultPropertiesStringValue(String key) {
		return PropertiesUtil.init("dsl.properties").getProperty(key);
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：获取自定义配置文件中的值
	 * @时间：2016年5月9日
	 */
	public static String getCustomPropertiesStringValue(String path, String key) {
		return PropertiesUtil.init(path).getProperty(key);
	}
}
