package cn.com.js_tobacco.mdm.permit.sql;
import java.util.Map;

/**
 * 功能：用户相关service
 */
public interface IPermitService {
	public int insertCust(Map map);
	public int updateCust(Map map);
	public int deleteCust(Map map);
}
