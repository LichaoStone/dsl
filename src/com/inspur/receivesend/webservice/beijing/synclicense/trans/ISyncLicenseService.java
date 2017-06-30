/**
 * 
 */
package com.inspur.receivesend.webservice.beijing.synclicense.trans;

import java.util.List;
import java.util.Map;

/**
 * 零售许可证信息变更同步 Service接口
 * 
 * @作者 栗超
 * @时间 2016年6月8日 上午10:35:50
 * @说明
 * @修改
 */
public interface ISyncLicenseService {
	/**
	 * 插入 一条 零售户许可证变更信息
	 * 
	 * @作者 栗超
	 * @时间 2016年6月8日 下午1:21:40
	 * @说明
	 * @修改
	 * @param map
	 * @return
	 */
	public int insertDslLicense(Map<?, ?> map);

	/**
	 * 修改 一条 零售户许可证变更信息
	 * 
	 * @作者 栗超
	 * @时间 2016年6月8日 下午1:22:45
	 * @说明
	 * @修改
	 * @param map
	 * @return
	 */
	public int updateDslLicense(Map<?, ?> map);

	/**
	 * 删除 一条 零售户许可证变更信息
	 * 
	 * @作者 栗超
	 * @时间 2016年6月8日 下午1:22:50
	 * @说明
	 * @修改
	 * @param map
	 * @return
	 */
	public int deleteDslLicense(Map<?, ?> map);

	/**
	 * 查询 一条 零售户许可证变更信息
	 * 
	 * @作者 栗超
	 * @时间 2016年6月8日 下午1:22:50
	 * @说明
	 * @修改
	 * @param map
	 * @return
	 */
	public boolean findDslLicense(String lic_no);
	
	/**
	 * 
	    * @Title: getCrmZmEnumRef
	    * @Description:获取所有的枚举对照表信息
		* @author: zhaixinhua
	    * @date: 2016年8月18日
	    * @version: V1.0 
		* @update:
	 */
	public List getCrmZmEnumRef();
	/**
	 * 
	    * @Title: getCrmZmOrganRef
	    * @Description:获取组织机构
		* @author: zhaixinhua
	    * @date: 2016年8月18日
	    * @version: V1.0 
		* @update:
	 */
	public Map getCrmZmOrganRef(String organCode);

}
