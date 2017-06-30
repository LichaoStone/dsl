package cn.com.js_tobacco.mdm.job.sql;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("jobService")
public class JobServiceImpl implements IJobService {
	@Autowired
	private JobMapper jobMapper;

	public int insertJob(Map map) {
		return jobMapper.insertJob(map);
	}

	public int updateJob(Map map) {
		return jobMapper.updateJob(map);
	}

	public int deleteJob(Map map) {
		return jobMapper.deleteJob(map);
	}
	
}
