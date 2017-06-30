/**
 * uuid工具类文件，该文件copy字V6项目
 */
package com.inspur.publicutils.tools;

import com.inspur.hsf.service.common.utils.UUIDGenerator;

/**
 * 
 * @作者:丁怀雷
 * @说明:生成唯一ID的工具类
 * @时间:2016年5月3日
 */
public class UUIDTool {

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：获取一个ID，长度为30
	 * @时间：2016年5月3日
	 */
	public static String getInnerId() {
		return getInnerIdByLength(30);
	}

	/**
	 * 
	 * @编码人：丁怀雷
	 * @版本：V1.0
	 * @说明：获取指定长度的ID
	 * @时间：2016年5月3日
	 */
	public static String getInnerIdByLength(int length) {
		UUIDGenerator uuid = new UUIDGenerator();
		return uuid.getNextSeqId(length).toString();
	}

}
