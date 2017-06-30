package cn.com.js_tobacco.mdm.post.sql;
import java.util.Map;

/**
 * 功能：用户相关service
 */
public interface IPostService {
	public int insertPost(Map map);
	public int updatePost(Map map);
	public int deletePost(Map map);
}
