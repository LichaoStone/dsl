package cn.com.js_tobacco.mdm.post.sql;

import java.util.Map;

/**
 * mapper接口
 */
public interface PostMapper {
	public int insertPost(Map map);
	public int updatePost(Map map);
	public int deletePost(Map map);
}
