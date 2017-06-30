package cn.com.js_tobacco.mdm.cust.sql;

import java.util.List;
import java.util.Map;
/**
 * 功能：用户相关service
 */
public interface ICustService {
	public int insertCust(Map map);
	public int updateCust(Map map);
	public int deleteCust(Map map);
}
