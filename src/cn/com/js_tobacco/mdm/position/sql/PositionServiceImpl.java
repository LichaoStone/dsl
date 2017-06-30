package cn.com.js_tobacco.mdm.position.sql;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("positionService")
public class PositionServiceImpl implements IPositionService {
	@Autowired
	private PositionMapper positionMapper;
	
	public int insertPosition(Map map) {
		return positionMapper.insertPosition(map);
	}

	public int updatePosition(Map map) {
		return positionMapper.insertPosition(map);
	}

	public int deletePosition(Map map) {
		return positionMapper.deletePosition(map);
	}

}
