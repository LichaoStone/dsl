package com.inspur.dsl.service.retrymq;
import java.util.List;
import java.util.Map;


public interface RetryMqMapper{
	/**
	 * 查询所有调取第三方应用失败的MQ数据
	 * @param map
	 * @return
	 */
    public List<Map<String, String>>  findAllList(Map<?, ?> map);
    
    /**
     * 重新请求第三方应用.发送MQ
     * @param map
     * @return
     */
    public int  retryExecutionMq(Map<?, ?> map);


}
