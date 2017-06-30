/**
 * 
 */
package com.inspur.receivesend.webservice.beijing.synclicense;

/**
 * 零售许可证信息变更同步 接口
 * 
 * @作者 栗超
 * @时间 2016年6月8日 上午10:20:25
 * @说明
 * @修改
 */
public interface ISyncLicense {
	/**
	 * 同步零售许可证信息：新增、修改、删除（非物理删除，只修改字段状态）
	 * 
	 * @作者 栗超
	 * @时间 2016年6月8日 下午1:29:21
	 * @说明
	 * @修改
	 * @param xml
	 * @return
	 */
	public String syncLicense(String xml);
}
