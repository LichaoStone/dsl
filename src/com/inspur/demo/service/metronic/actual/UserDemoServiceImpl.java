package com.inspur.demo.service.metronic.actual;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.lambo.framework.aspect.annotation.DataSource;
import com.inspur.lambo.framework.aspect.annotation.PaginationService;

@Service("userDemoService")
public class UserDemoServiceImpl implements IUserDemoService {
	@Autowired
	private UserDemoMapper userDemoMapper;
	
	/**
	 * 功能：获取所有用户
	 * @author 孙振	2014年8月27日 下午13:38
	 * @return
	 */
	@PaginationService
	public List findAllUser(Map map){
		return userDemoMapper.findAllUser(map);
	}
	/**
	 * 功能：通过用户ID查询用户信息
	 * @author 孙振	2014年7月29日 下午17:28
	 * @param userId
	 * @return
	 */
	public Map findUserByUserId(String userId){
		return userDemoMapper.findUserByUserId(userId);
	}

	/**
	 * 功能：通过用户名查询用户信息
	 * @author 郑斌	2014年7月22日 上午11:51:09
	 * @param userName
	 * @return
	 */
	public Map findUserByUserName(String userName){
		return userDemoMapper.findUserByUserName(userName);
	}
	
	/**
	 * 功能：通过邮箱查询用户信息
	 * @author 郑斌	2014年7月22日 上午11:51:01
	 * @param email
	 * @return
	 */
	public Map findUserByUserEmail(String email){
		return userDemoMapper.findUserByUserEmail(email);
	}
	
	/**
	 * 功能：新增一个用户
	 * @param map
	 * @return
	 */
	public int insertUser(Map map){
		
		return userDemoMapper.insertUser(map);

	}
	
	/**
	 * 功能：获取领域组列表
	 * @param map
	 * @return
	 */
	public List getGroupList(){
		
		return userDemoMapper.getGroupList();

	}
	
	/**
	 * 功能：新增一个用户
	 * @param map
	 * @return
	 */
	public int updateUser(Map map){
		
		return userDemoMapper.updateUser(map);

	}
	
	/**
	 * 功能：重置密码
	 * @param map
	 * @return
	 */
	public int resetPassword(Map map){
		
		return userDemoMapper.resetPassword(map);

	}
	
	/**
	 * 删除用户
	 * @author: sun_zhen
	 * @date 2015年9月1日 下午8:08:11
	 */
	public void deleteUser(String userId){
		userDemoMapper.deleteUser(userId);
	}
	
	
	/**
	 * 判断用户名密码是否正确
	 */
	public boolean checkPasswordIsCorrect(String userId,String password) {
		
		Map tempMap  = userDemoMapper.getPasswordByUserId(userId);

		String passwordInDataBase = (String)tempMap.get("PASSWORD");
		
		return password.equals(passwordInDataBase);
	}


	/**
	 * 获取第三方应密钥
	 */
	public Map getThirdAppById(String appId) {
		// TODO Auto-generated method stub
		return userDemoMapper.getThirdAppById(appId);
	}

}
