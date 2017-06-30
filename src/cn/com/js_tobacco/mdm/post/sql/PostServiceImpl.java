package cn.com.js_tobacco.mdm.post.sql;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("postService")
public class PostServiceImpl implements IPostService {
	@Autowired
	private PostMapper postMapper;
	
	public int insertPost(Map map) {
		return postMapper.insertPost(map);
	}

	public int updatePost(Map map) {
		return postMapper.updatePost(map);
	}

	public int deletePost(Map map) {
		return postMapper.deletePost(map);
	}

}
