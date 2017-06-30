package com.inspur.publicutils.beans;

import java.io.Serializable;
import java.util.Map;

import com.inspur.publicutils.MsgLogsUtils;
import com.inspur.publicutils.tools.UUIDTool;

public class MsgRecodeBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private   String _MSG_ID;//消息ID （主键）
	private   String _MSG_TYPE;//消息类型(表名)
    private   String _MSG_ACTION;//消息行为（增删改） 例如：ServiceMsgRecodeUtils.SERVICE_MSG_ACTION_INSERT
    private   String _MSG_SATUS;//消息状态
    private   String _SERVICE_CLASS;//服务类
    private   String _SERVICE_PARA;//服务参数（序列化map）
	private   Map<String, String> map;
	
	//初始化构造参数
	public MsgRecodeBean(){
		this._MSG_ID=UUIDTool.getInnerId();
		this._MSG_TYPE=_MSG_TYPE;
		this._MSG_ACTION=MsgLogsUtils.SERVICE_MSG_ACTION_INIT;
		this._MSG_SATUS=MsgLogsUtils.SERVICE_MSG_SATUS_WAIT_DEAL;
		this._SERVICE_CLASS=_SERVICE_CLASS;
		this._SERVICE_PARA=_SERVICE_PARA;
		this.map=map;
	}

	public String get_MSG_ID() {
		return _MSG_ID;
	}
	public void set_MSG_ID(String _MSG_ID) {
		this._MSG_ID = _MSG_ID;
	}
	public String get_MSG_TYPE() {
		return _MSG_TYPE;
	}
	public void set_MSG_TYPE(String _MSG_TYPE) {
		this._MSG_TYPE = _MSG_TYPE;
	}
	public String get_MSG_ACTION() {
		return _MSG_ACTION;
	}
	public void set_MSG_ACTION(String _MSG_ACTION) {
		this._MSG_ACTION = _MSG_ACTION;
	}
	public String get_MSG_SATUS() {
		return _MSG_SATUS;
	}
	public void set_MSG_SATUS(String _MSG_SATUS) {
		this._MSG_SATUS = _MSG_SATUS;
	}
	public String get_SERVICE_CLASS() {
		return _SERVICE_CLASS;
	}
	public void set_SERVICE_CLASS(String _SERVICE_CLASS) {
		this._SERVICE_CLASS = _SERVICE_CLASS;
	}
	public String get_SERVICE_PARA() {
		return _SERVICE_PARA;
	}
	public void set_SERVICE_PARA(String _SERVICE_PARA) {
		this._SERVICE_PARA = _SERVICE_PARA;
	}
	public Map<String, String> getMap() {
		return map;
	}
	public void setMap(Map<String, String> map) {
		this.map = map;
	}
}
