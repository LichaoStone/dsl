package com.inspur.dsl.service.retrymq;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.lambo.framework.aspect.annotation.PaginationService;


@Service("retryMqService")
public class RetryMqServiceImpl implements IRetryMqService{
    
	@Autowired
	private RetryMqMapper retryMqMapper;
	
	@Override
	@PaginationService
	public List<Map<String, String>> findAllList(Map<?, ?> map) {
		return retryMqMapper.findAllList(map);
	}

	@Override
	public int retryExecutionMq(Map<?, ?> map) {
		return retryMqMapper.retryExecutionMq(map);
	}
    
}
