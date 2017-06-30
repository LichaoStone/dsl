package cn.com.js_tobacco.mdm.job.sql;

import java.util.List;
import java.util.Map;

/**
 * mapper接口
 */
public interface JobMapper {
	public int insertJob(Map map);
	public int updateJob(Map map);
	public int deleteJob(Map map);
}
