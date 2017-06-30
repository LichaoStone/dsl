/**
 * 时间工具类文件
 */
package com.inspur.publicutils.tools;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 
 * @作者:丁怀雷
 * @说明:时间工具类
 * @时间:2016年5月3日
 */
public class DateTool {

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：获取当前系统时间 返回  格林治时间，例如：1462267385432      直接复制V6
	 * @时间：2016年5月3日
	 */
	public static long getCurrentTimeMillis() {
		return System.currentTimeMillis();
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：将格林治时间转换成指定格式的字符串，从V6中复制的代码
	 * @时间：2016年5月3日
	 */
	public static String getCurrentTimeMillisAsString(long ctm, String format) {
		Date date = new Date(ctm);
		SimpleDateFormat df = new SimpleDateFormat(format);
		return df.format(date);
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：获取当前系统时间 返回 yyyyMMddHHmmssS 从V6中复制的代码
	 * @时间：2016年5月3日
	 */
	public static String getCurrentTimeMillisAsString() {
		long currTimeM = getCurrentTimeMillis();
		return getCurrentTimeMillisAsString(currTimeM, "yyyyMMddHHmmss");
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：获取当前时间，参数为：想要的格式字符串   
	 * @时间：2016年5月3日
	 */
	public static String getCurrentTimeByFormat(String format) {
		long currTimeM = getCurrentTimeMillis();
		return getCurrentTimeMillisAsString(currTimeM, format);
	}
	
	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：测试方法入口
	 * @时间：2016年5月3日
	 */
	public static void main(String[] args) {
		System.out.println(DateTool.getCurrentTimeMillis());
	}
}
