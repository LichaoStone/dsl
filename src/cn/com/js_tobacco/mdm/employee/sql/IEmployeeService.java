package cn.com.js_tobacco.mdm.employee.sql;

import java.util.List;
import java.util.Map;

/**
 * 功能：用户相关service
 */
public interface IEmployeeService {
	public int insertEmployee(Map map);
	public int updateEmployee(Map map);
	public int deleteEmployee(Map map);
}
