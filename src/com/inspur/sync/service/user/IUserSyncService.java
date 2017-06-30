package com.inspur.sync.service.user;

import java.util.List;
import java.util.Map;

/**
 * 功能：用户同步service
 * @author qukecheng
 * 修改说明：
 */
public interface IUserSyncService {
	
	/**
	 * 功能：获取用户同步
	 * @author qukecheng
	 * @return
	 */
	public List getUserSync(Map map);
	
    /**
     * 功能：通过UserId获取用户同步
     * @author qukecheng
     * @return
     */
    public List getUserSyncByUserId(Map map);
	
    /**
     * 功能：新增一个用户同步
     * @param map
     * @return
     */
    public int insertUserSync(Map map);
    
    /**
     * 功能：修改一个用户同步
     * @param map
     * @return
     */
    public int updateUserSync(Map map);
    
    /**
     * 功能：获取更新时间
     * @author qukecheng
     * @return
     */
    public List getUpdTime();
    
    /**
     * 功能：修改更新时间
     * @param map
     * @return
     */
    public int updateUserSyncUpdTime(Map map);
}
