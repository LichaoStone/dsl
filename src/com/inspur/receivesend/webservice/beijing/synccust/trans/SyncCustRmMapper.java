package com.inspur.receivesend.webservice.beijing.synccust.trans;
import java.util.List;
import java.util.Map;
/**
 * 北京同步零售户信息mapper接口
 * @author lichao_rj
 * @修改
 */
public interface SyncCustRmMapper {
	/**
     * 插入  一条  零售户信息
     * @param map
     * @return 
     */
    public int insertDslCust(Map map);
    /**
     * 修改 一条 零售户信息
     * @param map
     * @return
     */
    public int updateDslCust(Map map);
    /**
     * 查询  零售户信息
     * @param map
     * @return
     */
    public List getDslCust(Map map);
    /**
     * 插入日志
     * @param map
     * @return
     */
    public int insertlogs(Map map);
}
