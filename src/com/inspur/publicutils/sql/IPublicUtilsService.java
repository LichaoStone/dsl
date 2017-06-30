package com.inspur.publicutils.sql;

import java.util.Map;

/**
 * 公共类service接口
 * @author lichao_rj
 * @时间 2016年05月03日
 * @修改
 */
public interface IPublicUtilsService {
	
	/**
	 * 
	 * @作者:lichao_rj
	 * @说明:插入 日志头表一条日志
	 * @时间:2016年5月3日
	 */
    public int insertMsgRecode(Map<?, ?> map);
    /**
	 * 
	 * @作者:lichao_rj
	 * @说明:修改 日志头表一条日志
	 * @时间:2016年5月3日
	 */
    public int updateMsgRecode(Map<?, ?> map);
    /**
	 * 
	 * @作者:lichao_rj
	 * @说明:删除 日志头表一条日志
	 * @时间:2016年5月3日
	 */
    public int deleteMsgRecode(Map<?, ?> map);
    /**
	 * 
	 * @作者:lichao_rj
	 * @说明:插入 日志行表一条日志
	 * @时间:2016年5月3日
	 */
    public int insertMsgParameterRecode(Map<?, ?> map);
    /**
	 * 
	 * @作者:lichao_rj
	 * @说明:修改 日志行表一条日志
	 * @时间:2016年5月3日
	 */
    public int updateMsgParameterRecode(Map<?, ?> map);
    /**
	 * 
	 * @作者:lichao_rj
	 * @说明:删除 日志行表一条日志
	 * @时间:2016年5月3日
	 */
    public int deleteMsgParameterRecode(Map<?, ?> map);
    
    /**
     * 
     * @编码人：丁怀雷
     * @版本：V1.0
     * @说明：新增日志
     * @时间：2016年5月3日
     */
    public int insertProcessLog(Map<?, ?> map);
    
    /**
     * 
     * @编码人：丁怀雷
     * @版本：V1.0
     * @说明：更新日志
     * @时间：2016年5月3日
     */
    public int updateProcessLog(Map<?, ?> map);
    
    /**
     * 
     * @编码人：丁怀雷
     * @版本：V1.0
     * @说明：删除日志
     * @时间：2016年5月3日
     */
    public int deleteProcessLog(Map<?, ?> map);
    
}
