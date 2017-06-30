package com.inspur.receivesend.rocketmq.syncCust;

import java.util.Map;

public interface SyncCustMapper {
	/**
	 * 插入客户信息
	 * @param map
	 * @return
	 */
	public int insertDslCoCust(Map<?, ?> map);
	
	public int insertDslCrmCust(Map<?, ?> map);
	
	public int insertDslCscCust(Map<?, ?> map);
	
	public int insertDslLdmCust(Map<?, ?> map);
	
	public int insertDslLdmCustDist(Map<?, ?> map);

	// 甘肃--查询客户信息
	public Map getDslRmCustInGS(Map map);
	
	public Map getDslRmCustOtherInGS(Map<?, ?> map);

	public Map getDslRmCustNewInGS(Map map);
	
	public Map getDslRmCustOtherNewInGS(Map<?, ?> map);
	
	public Map getDslCcCcustInGS(Map map);
	
	public Map getDslSdCustDistInGS(Map map);
	
	public Map getServerInfo(Map tmp);
}
