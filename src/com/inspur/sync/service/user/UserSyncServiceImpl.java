package com.inspur.sync.service.user;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.lambo.framework.aspect.annotation.DataSource;
import com.inspur.lambo.framework.aspect.annotation.PaginationService;

@Service("userSyncService")
public class UserSyncServiceImpl implements IUserSyncService {
	@Autowired
	private UserSyncMapper userSyncMapper;
	
	/**
	 * 功能：获取所有用户
	 * @author qukecheng
	 * @return
	 */
	@PaginationService
	public List getUserSync(Map map){
		return userSyncMapper.getUserSync(map);
	}
	
    /**
     * 功能：通过UserId获取所有用户
     * @author qukecheng
     * @return
     */
    @PaginationService
    public List getUserSyncByUserId(Map map){
        return userSyncMapper.getUserSyncByUserId(map);
    }
    
    /**
     * 功能：获取更新时间
     * @author qukecheng
     * @return
     */
    public List getUpdTime() {
        return userSyncMapper.getUpdTime();
    }
	
    /**
     * 功能：新增一个用户同步
     * @param map
     * @return
     */
    public int insertUserSync(Map map){
        return userSyncMapper.insertUserSync(map);
    }
    
    /**
     * 功能：修改一个用户同步
     * @param map
     * @return
     */
    public int updateUserSync(Map map){
        return userSyncMapper.updateUserSync(map);
    }
    
    /**
     * 功能：修改更新时间
     * @param map
     * @return
     */
    public int updateUserSyncUpdTime(Map map) {
        return userSyncMapper.updateUserSyncUpdTime(map);
    }

}
