package cn.com.js_tobacco.mdm.cust.sql;

import java.util.List;
import java.util.Map;

/**
 * mapper接口
 */
public interface CustMapper {
	public int insertCust(Map map);
	public int updateCust(Map map);
	public int deleteCust(Map map);
}
