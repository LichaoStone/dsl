package cn.com.js_tobacco.mdm.employee.sql;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("employeeService")
public class EmployeeServiceImpl implements IEmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;

	public int insertEmployee(Map map) {
		return employeeMapper.insertEmployee(map);
	}

	public int updateEmployee(Map map) {
		return employeeMapper.updateEmployee(map);
	}

	public int deleteEmployee(Map map) {
		return employeeMapper.deleteEmployee(map);
	}
	

}
