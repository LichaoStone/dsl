package cn.com.js_tobacco.mdm.orgnization.sql;

import java.util.List;
import java.util.Map;

/**
 * 功能：用户相关service
 */
public interface IOrgnizationService {
	public int insertOrgnization(Map map);
	public int updateOrgnization(Map map);
	public int deleteOrgnization(Map map);
}
