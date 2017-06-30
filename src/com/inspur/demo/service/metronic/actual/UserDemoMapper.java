package com.inspur.demo.service.metronic.actual;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author: sun_zhen
 * @date 2015年9月10日 下午1:50:47
 */
public interface UserDemoMapper {
	
	/**
	 * 功能：获取所有用户
	 * @author 孙振	2014年8月27日 下午13:38
	 * @return
	 */
	public List findAllUser(Map map);
	/**
	 * 功能：通过用户ID查询用户信息
	 * @author 孙振	2014年7月29日 下午17:28
	 * @param userId
	 * @return
	 */
	public Map findUserByUserId(String userId);
	/**
	 * 功能：通过用户名查询用户信息
	 * @author 郑斌	2014年7月22日 上午11:51:09
	 * @param userName
	 * @return
	 */
	public Map findUserByUserName(String userName);
	
	/**
	 * 功能：通过邮箱查询用户信息
	 * @author 郑斌	2014年7月22日 上午11:51:01
	 * @param email
	 * @return
	 */
	public Map findUserByUserEmail(String email);
	
	/**
	 * 功能：新增一个用户
	 * @param map
	 * @return
	 */
	public int insertUser(Map map);
	
	/**
	 * 功能：获取领域组列表
	 * @param map
	 * @return
	 */
	public List getGroupList();
	
	/**
	 * 功能：修改一个用户
	 * @param map
	 * @return
	 */
	public int updateUser(Map map);
	/**
	 * 功能：重置密码
	 * @param map
	 * @return
	 */
	public int resetPassword(Map map);
	
	/**
	 * 删除用户
	 * @author: sun_zhen
	 * @date 2015年9月1日 下午8:08:11
	 */
	public void deleteUser(String userId);
	
	/**
	 * 获取用户密码
	 */
	public Map getPasswordByUserId(String userId) ;
	
	
	/**
	 * 获取第三方应用密钥
	 * @author: sun_zhen
	 * @date 2015年9月22日 下午3:48:22
	 */
	public Map getThirdAppById(String appId);
	
}
