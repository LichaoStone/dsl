package cn.com.js_tobacco.mdm.position.sql;

import java.util.List;
import java.util.Map;

/**
 * 功能：用户相关service
 */
public interface IPositionService {
	public int insertPosition(Map map);
	public int updatePosition(Map map);
	public int deletePosition(Map map);
}
