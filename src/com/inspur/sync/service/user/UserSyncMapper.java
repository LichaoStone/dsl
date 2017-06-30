package com.inspur.sync.service.user;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author: qukecheng
 * @date 2016年8月18日
 */
public interface UserSyncMapper {
	
	/**
	 * 功能：获取所有用户同步信息
	 * @author qukecheng
	 * @return
	 */
	public List getUserSync(Map map);
	
    /**
     * 功能：通过UserId获取所有用户同步信息
     * @author qukecheng
     * @return
     */
    public List getUserSyncByUserId(Map map);
	
	public int insertUserSync(Map map);
	
	public int updateUserSync(Map map);
	
    /**
     * 功能：获取更新时间
     * @author qukecheng
     * @return
     */
    public List getUpdTime();
    
    public int updateUserSyncUpdTime(Map map);
	
}
