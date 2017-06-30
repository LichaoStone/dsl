/**
 * 
 */
package com.inspur.receivesend.webservice.beijing.synclicense.trans;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 零售许可证信息变更同步 Service实现类
 * 
 * @作者 栗超
 * @时间 2016年6月8日 上午10:36:14
 * @说明
 * @修改
 */
@Service("syncLicenseService")
public class SyncLicenseServiceImpl implements ISyncLicenseService {
	@Autowired
	private SyncLicenseMapper syncLicenseMapper;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.inspur.receivesend.webservice.beijing.syncLicense.trans.
	 * ISyncLicenseService#insertDslLicense(java.util.Map)
	 */
	@Override
	public int insertDslLicense(Map<?, ?> map) {
		return syncLicenseMapper.insertDslLicense(map);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.inspur.receivesend.webservice.beijing.syncLicense.trans.
	 * ISyncLicenseService#updateDslLicense(java.util.Map)
	 */
	@Override
	public int updateDslLicense(Map<?, ?> map) {
		return syncLicenseMapper.updateDslLicense(map);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.inspur.receivesend.webservice.beijing.syncLicense.trans.
	 * ISyncLicenseService#deleteDslLicense(java.util.Map)
	 */
	@Override
	public int deleteDslLicense(Map<?, ?> map) {
		return syncLicenseMapper.deleteDslLicense(map);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.inspur.receivesend.webservice.beijing.synclicense.trans.
	 * ISyncLicenseService#findDslLicense(java.lang.String)
	 */
	@Override
	public boolean findDslLicense(String lic_no) {
		boolean returnFlag = false;
		int flag = syncLicenseMapper.findDslLicense(lic_no);
		if (flag == 0) {// 空，false
			returnFlag = false;
		} else {// 非空，true
			returnFlag = true;
		}
		return returnFlag;
	}

	
	    /* (非 Javadoc)
	    * 
	    * 
	    * @return
	    * @see com.inspur.receivesend.webservice.beijing.synclicense.trans.ISyncLicenseService#getCrmZmEnumRef()
	    */
	    
	@Override
	public List getCrmZmEnumRef() {
		// TODO Auto-generated method stub
		return syncLicenseMapper.getCrmZmEnumRef();
	}

	
	    /* (非 Javadoc)
	    * 
	    * 
	    * @param organCode
	    * @return
	    * @see com.inspur.receivesend.webservice.beijing.synclicense.trans.ISyncLicenseService#getCrmZmOrganRef(java.lang.String)
	    */
	    
	@Override
	public Map getCrmZmOrganRef(String organCode) {
		// TODO Auto-generated method stub
		return syncLicenseMapper.getCrmZmOrganRef(organCode);
	}

}
