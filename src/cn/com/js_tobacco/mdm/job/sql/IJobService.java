package cn.com.js_tobacco.mdm.job.sql;

import java.util.List;
import java.util.Map;

/**
 * 功能：用户相关service
 */
public interface IJobService {
	public int insertJob(Map map);
	public int updateJob(Map map);
	public int deleteJob(Map map);
}
