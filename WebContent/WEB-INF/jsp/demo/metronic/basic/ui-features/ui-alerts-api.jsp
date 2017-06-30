<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Alert api</title>
</head>
<body>

<lambo:link path="global/plugins/codemirror/lib/codemirror.css,
				  global/plugins/codemirror/theme/neat.css,
				  global/plugins/codemirror/theme/ambiance.css,
				  global/plugins/codemirror/theme/material.css,
				  global/plugins/codemirror/theme/neo.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Metronic Alert
    <small>metronic api for bootstrap alerts</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：在页面某区域展示提示信息
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/lib/codemirror.css">
					global/plugins/codemirror/lib/codemirror.css
				</a><br>
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/theme/neat.css">
					global/plugins/codemirror/theme/neat.css
				</a><br>
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/theme/ambiance.css">
					 global/plugins/codemirror/theme/ambiance.css
				</a><br>
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/theme/material.css">
					 global/plugins/codemirror/theme/material.css
				</a><br>
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/theme/neo.css">
					 global/plugins/codemirror/theme/neo.css
				</a><br>
				
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/lib/codemirror.js">
					global/plugins/codemirror/lib/codemirror.js
				</a><br>
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/mode/javascript/javascript.js">
					global/plugins/codemirror/mode/javascript/javascript.js
				</a><br>
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/mode/htmlmixed/htmlmixed.js">
					 global/plugins/codemirror/mode/htmlmixed/htmlmixed.js
				</a><br>
				<a taregt="_blank" href = "/theme/assets/global/plugins/codemirror/mode/css/css.js">
					 global/plugins/codemirror/mode/css/css.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a taregt="_blank" href = "/theme/assets/pages/scripts/ui-alerts-api.js">
					 pages/scripts/ui-alerts-api.js
				</a><br>
		    </p><br>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-social-dribbble font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Demo</span>
                </div>
                <div class="actions">
                    <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                        <i class="icon-cloud-upload"></i>
                    </a>
                    <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                        <i class="icon-wrench"></i>
                    </a>
                    <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                        <i class="icon-trash"></i>
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="bootstrap_alerts_demo"> </div>
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Alert Message:</label>
                        <div class="col-md-7">
                            <input id="alert_message" type="text" class="form-control" value="some alert text goes here..." placeholder="enter a text ..."> </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Alert Type:</label>
                        <div class="col-md-5">
                            <select id="alert_type" class="form-control input-medium">
                                <option value="success">Success</option>
                                <option value="danger">Danger</option>
                                <option value="warning">Warning</option>
                                <option value="info">Info</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Container:</label>
                        <div class="col-md-5">
                            <select id="alert_container" class="form-control input-medium">
                                <option value="">Default(after the breadcrumb)</option>
                                <option value="#bootstrap_alerts_demo">#bootstrap_alerts_demo</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Placement:</label>
                        <div class="col-md-5">
                            <select id="alert_place" class="form-control input-medium">
                                <option value="append">Append</option>
                                <option value="prepend">Prepend</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Closable ?</label>
                        <div class="col-md-5">
                            <label class="checkbox">
                                <input type="checkbox" id="alert_close" value="1" checked> </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Close All Previouse Alerts ?</label>
                        <div class="col-md-5">
                            <label class="checkbox">
                                <input type="checkbox" id="alert_reset" value="1" checked> </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Auto Scroll/Focus ?</label>
                        <div class="col-md-5">
                            <label class="checkbox">
                                <input type="checkbox" id="alert_focus" value="1" checked> </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Auto Close In(seconds):</label>
                        <div class="col-md-5">
                            <select id="alert_close_in_seconds" class="form-control input-medium">
                                <option value="0">never close</option>
                                <option value="1">1 second</option>
                                <option value="5">5 seconds</option>
                                <option value="10">10 seconds</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Font Awesome Icon(fa-[*]):</label>
                        <div class="col-md-5">
                            <select id="alert_icon" class="form-control input-medium">
                                <option value="" selected="selected">none</option>
                                <option value="warning">warning</option>
                                <option value="check">check</option>
                                <option value="user">user</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Usage:</label>
                        <div class="col-md-7">
                            <textarea id="code_editor_demo" class="margin-top-20 margin-bottom-20">App.alert({ container: $('#alert_container').val(), // alerts parent container place: 'append', // append or prepent in container type: 'success', // alert's type message: 'Test alert', // alert's message
                                close: true, // make alert closable reset: false, // close all previouse alerts first focus: true, // auto scroll to the alert after shown closeInSeconds: 10000, // auto close after defined seconds icon:
                                'fa fa-check' // put icon class before the message });</textarea>
                        </div>
                    </div>
                    <div class="form-group margin-top-30">
                        <label class="col-md-3 control-label" for="title"></label>
                        <div class="col-md-5">
                            <a href="javascript:;" class="btn green btn-outline sbold uppercase btn-lg" id="alert_show"> Show Alert! </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>

<lambo:script path="global/plugins/codemirror/lib/codemirror.js,
					global/plugins/codemirror/mode/javascript/javascript.js,
					global/plugins/codemirror/mode/htmlmixed/htmlmixed.js,
					global/plugins/codemirror/mode/css/css.js" />
<lambo:script path="pages/scripts/ui-alerts-api.js" />
</body>