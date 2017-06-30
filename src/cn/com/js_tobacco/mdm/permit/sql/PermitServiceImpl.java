package cn.com.js_tobacco.mdm.permit.sql;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("permitService")
public class PermitServiceImpl implements IPermitService {
	@Autowired
	private PermitMapper permitMapper;
	
	public int insertCust(Map map) {
		return permitMapper.insertCust(map);
	}

	public int updateCust(Map map) {
		return permitMapper.updateCust(map);
	}

	public int deleteCust(Map map) {
		return permitMapper.deleteCust(map);
	}

}
