package com.inspur.publicutils.sql;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 公共类service实现类
 * @author lichao_rj
 * @时间 2016年05月03日
 * @修改
 */
@Service("publicUtilService")
public class PublicUtilsServiceImpl implements IPublicUtilsService{
	@Autowired
    private PublicUtilsMapper publicUtilsMapper;
	@Override
	public int insertMsgRecode(Map<?, ?> map) {
		return publicUtilsMapper.insertMsgRecode(map);
	}

	@Override
	public int updateMsgRecode(Map<?, ?> map) {
		return publicUtilsMapper.updateMsgRecode(map);
	}

	@Override
	public int deleteMsgRecode(Map<?, ?> map) {
		return publicUtilsMapper.deleteMsgRecode(map);
	}

	@Override
	public int insertMsgParameterRecode(Map<?, ?> map) {
		return publicUtilsMapper.insertMsgParameterRecode(map);
	}

	@Override
	public int updateMsgParameterRecode(Map<?, ?> map) {
		return publicUtilsMapper.updateMsgParameterRecode(map);
	}

	@Override
	public int deleteMsgParameterRecode(Map<?, ?> map) {
		return publicUtilsMapper.deleteMsgParameterRecode(map);
	}

	@Override
	public int insertProcessLog(Map<?, ?> map) {
		return publicUtilsMapper.insertProcessLog(map);
	}

	@Override
	public int updateProcessLog(Map<?, ?> map) {
		return publicUtilsMapper.updateProcessLog(map);
	}

	@Override
	public int deleteProcessLog(Map<?, ?> map) {
		return publicUtilsMapper.deleteProcessLog(map);
	}

}
