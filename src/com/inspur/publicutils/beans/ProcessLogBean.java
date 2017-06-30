package com.inspur.publicutils.beans;

import java.io.Serializable;

public class ProcessLogBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private  String _LOG_ID;//日志ID （主键）
    private  String _MSG_ID;//业务ID
    private  String _LOG_INFO;//日志详细信息 
    private  String _LOG_CREATE_TIME;//日志创建时间
    private  String _LOG_RESULT;//处理结果(0:失败  1:成功)
    private  String _PRO_NODE;//日志对应环节
	public String get_LOG_ID() {
		return _LOG_ID;
	}
	public void set_LOG_ID(String _LOG_ID) {
		this._LOG_ID = _LOG_ID;
	}
	public String get_MSG_ID() {
		return _MSG_ID;
	}
	public void set_MSG_ID(String _MSG_ID) {
		this._MSG_ID = _MSG_ID;
	}
	public String get_LOG_INFO() {
		return _LOG_INFO;
	}
	public void set_LOG_INFO(String _LOG_INFO) {
		this._LOG_INFO = _LOG_INFO;
	}
	public String get_LOG_CREATE_TIME() {
		return _LOG_CREATE_TIME;
	}
	public void set_LOG_CREATE_TIME(String _LOG_CREATE_TIME) {
		this._LOG_CREATE_TIME = _LOG_CREATE_TIME;
	}
	public String get_LOG_RESULT() {
		return _LOG_RESULT;
	}
	public void set_LOG_RESULT(String _LOG_RESULT) {
		this._LOG_RESULT = _LOG_RESULT;
	}
	public String get_PRO_NODE() {
		return _PRO_NODE;
	}
	public void set_PRO_NODE(String _PRO_NODE) {
		this._PRO_NODE = _PRO_NODE;
	}
    
   	
    
}
