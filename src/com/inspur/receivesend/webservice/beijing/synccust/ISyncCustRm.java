package com.inspur.receivesend.webservice.beijing.synccust;
/**
 * 北京专卖证照数据与营销系统接口中间层
 * 
 * @author lichao_rj 
 * @日期 【2016-04-27】
 * @version 1.0
 * @修改
 */
public interface ISyncCustRm {
	/**
	 * 同步零售户信息：新增、修改、删除（非物理删除，只修改字段状态）
	 * @param xml
	 * @return 
	 * @throws ClassNotFoundException 
	 * @throws NoSuchMethodException 
	 * @throws SecurityException 
	 */
   public String syncCustRm(String xml);
}
