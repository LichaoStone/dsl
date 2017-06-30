package cn.com.js_tobacco.mdm.orgnization.sql;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("orgnization")
public class OrgnizationServiceImpl implements IOrgnizationService {
	@Autowired
	private OrgnizationMapper orgnizationMapper;
	
	public int insertOrgnization(Map map) {
		return orgnizationMapper.insertOrgnization(map);
	}

	public int updateOrgnization(Map map) {
		return orgnizationMapper.updateOrgnization(map);
	}

	public int deleteOrgnization(Map map) {
		return orgnizationMapper.deleteOrgnization(map);
	}

}
