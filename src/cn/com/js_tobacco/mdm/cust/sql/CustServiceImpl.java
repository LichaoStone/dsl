package cn.com.js_tobacco.mdm.cust.sql;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("custService")
public class CustServiceImpl implements ICustService {
	@Autowired
	private CustMapper custMapper;

	public int insertCust(Map map) {
		return custMapper.insertCust(map);
	}
	public int updateCust(Map map) {
		return custMapper.updateCust(map);
	}
	public int deleteCust(Map map) {
		return custMapper.deleteCust(map);
	}


}
