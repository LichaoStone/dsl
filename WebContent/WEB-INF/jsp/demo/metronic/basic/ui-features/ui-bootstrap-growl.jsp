<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap的页面弹出框</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Bootstrap 的页面弹出框
    <small>bootstrap growl notifications</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：简易的页面通知框
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-growl/jquery.bootstrap-growl.js">
					global/plugins/bootstrap-growl/jquery.bootstrap-growl.js
				</a>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/ui-bootstrap-growl.js">
					pages/scripts/ui-bootstrap-growl.js
				</a>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://github.com/ifightcrime/bootstrap-growl/" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">Bootstrap Growl</span>
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Notification text:</label>
                        <div class="col-md-5">
                            <input id="growl_text" type="text" class="form-control" value="Some demo text goes here" placeholder="enter a text ..." /> </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Life:</label>
                        <div class="col-md-5">
                            <select id="growl_type" class="form-control input-small input-inline">
                                <option value="info">Info</option>
                                <option value="danger">Danger</option>
                                <option value="success">Success</option>
                                <option value="warning">Warning</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Align:</label>
                        <div class="col-md-5">
                            <select id="growl_align" class="form-control input-small input-inline">
                                <option value="left">Left</option>
                                <option value="right">Right</option>
                                <option value="center">Center</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Width:</label>
                        <div class="col-md-5">
                            <input id="growl_width" type="text" class="form-control input-small input-inline" value="250" placeholder="enter a width ..." /> </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Allow dismiss ?</label>
                        <div class="col-md-5">
                            <div class="checkbox-list">
                                <label class="checkbox-inline">
                                    <input type="checkbox" id="glowl_dismiss" checked value="1"> </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Life:</label>
                        <div class="col-md-5">
                            <select id="growl_delay" class="form-control input-small input-inline">
                                <option value="5000">5 second</option>
                                <option value="10000">10 seconds</option>
                                <option value="12000">12 seconds</option>
                                <option value="15000">15 seconds</option>
                            </select>
                            <span class="help-block"> Time while the message will be displayed. </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Offset:</label>
                        <div class="col-md-5">
                            <select id="growl_offset" class="form-control input-small input-inline">
                                <option value="top">Top</option>
                                <option value="bottom">Bottom</option>
                            </select>
                            <input id="growl_offset_val" type="text" class="form-control input-small input-inline" value="100" placeholder="enter offset ..." /> </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title"></label>
                        <div class="col-md-5">
                            <a href="javascript:;" class="btn red btn-lg" id="bs_growl_show"> Show Notification! </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<lambo:script path="global/plugins/bootstrap-growl/jquery.bootstrap-growl.js,
					pages/scripts/ui-bootstrap-growl.js" />
</body>