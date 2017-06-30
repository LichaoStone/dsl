package com.inspur.receivesend.webservice.beijing.synccust.trans;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 北京同步零售户信息service实现类
 * @author lichao_rj
 * @时间 【2016-04-28】
 * @修改
 */
@Service("syncCustRmService")
public class SyncCustRmServiceImpl implements ISyncCustRmService{
	
	@Autowired
	private SyncCustRmMapper syncCustRmMapper;
	
	@Override
	public int insertDslCust(Map map) {
		return syncCustRmMapper.insertDslCust(map);
	}

	@Override
	public int  updateDslCust(Map map) {
		return syncCustRmMapper.updateDslCust(map);
	}

	@Override
	public List getDslCust(Map map) {
		return syncCustRmMapper.getDslCust(map);
	}

	@Override
	public int insertlogs(Map map) {
		return syncCustRmMapper.insertlogs(map);
	}
   
}
