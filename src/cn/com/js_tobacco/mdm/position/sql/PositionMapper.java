package cn.com.js_tobacco.mdm.position.sql;

import java.util.List;
import java.util.Map;

/**
 * mapper接口
 */
public interface PositionMapper {
	public int insertPosition(Map map);
	public int updatePosition(Map map);
	public int deletePosition(Map map);
}
