package cn.com.js_tobacco.mdm.employee.sql;

import java.util.List;
import java.util.Map;

/**
 * mapper接口
 */
public interface EmployeeMapper {
	public int insertEmployee(Map map);
	public int updateEmployee(Map map);
	public int deleteEmployee(Map map);
}
