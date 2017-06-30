package com.inspur.publicutils.beans;

import java.io.Serializable;
import java.util.Map;

public class MsgParameterBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private   String _PARA_ID;//参数ID （主键）
    private   String _MSG_ID;//消息ID,与日志头表MSG_ID一致
    private   String _MSG_PARA_NAME;//参数名
    private   String _MSG_PARA_VALUE;//参数值
    private   Map<String, String> paraMap;//存放参数名和参数值map,key=_MSG_PARA_NAME,value=_MSG_PARA_VALUE
	public String get_PARA_ID() {
		return _PARA_ID;
	}
	public void set_PARA_ID(String _PARA_ID) {
		this._PARA_ID = _PARA_ID;
	}
	public String get_MSG_ID() {
		return _MSG_ID;
	}
	public void set_MSG_ID(String _MSG_ID) {
		this._MSG_ID = _MSG_ID;
	}
	public String get_MSG_PARA_NAME() {
		return _MSG_PARA_NAME;
	}
	public void set_MSG_PARA_NAME(String _MSG_PARA_NAME) {
		this._MSG_PARA_NAME = _MSG_PARA_NAME;
	}
	public String get_MSG_PARA_VALUE() {
		return _MSG_PARA_VALUE;
	}
	public void set_MSG_PARA_VALUE(String _MSG_PARA_VALUE) {
		this._MSG_PARA_VALUE = _MSG_PARA_VALUE;
	}
	public Map<String, String> getParaMap() {
		return paraMap;
	}
	public void setParaMap(Map<String, String> paraMap) {
		this.paraMap = paraMap;
	}
    
}
