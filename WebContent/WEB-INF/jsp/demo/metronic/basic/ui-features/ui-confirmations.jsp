<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>通用部件</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 确认弹出对话框 
	<small>依赖于bootstrap.js</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：在页面元素周边弹出确认对话框
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a target=_blank href = "/theme/assets/global/plugins/bootstrap-confirmation/bootstrap-confirmation.js"> 
		    		global/plugins/bootstrap-confirmation/bootstrap-confirmation.js
		    	</a>
			</p><br>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">Popover Confirmation Demos</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn green-haze btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="javascript:;"> Option 1</a>
                            </li>
                            <li class="divider"> </li>
                            <li>
                                <a href="javascript:;">Option 2</a>
                            </li>
                            <li>
                                <a href="javascript:;">Option 3</a>
                            </li>
                            <li>
                                <a href="javascript:;">Option 4</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <h3>Basic Usage</h3>
                <p> Add small overlays with "Yes" and "No" buttons, like those on the iPad, to any element. Click the button to trigger the confirmation. </p>
                <button class="btn green-sharp btn-large" data-toggle="confirmation" data-original-title="Are you sure ?"
                title="">Default configuration</button>
                <h3>Custom Buttons</h3>
                <button class="btn red-mint" data-toggle="confirmation" data-placement="right" data-btn-ok-label="Continue" data-btn-ok-icon="icon-like" data-btn-ok-class="btn-success" data-btn-cancel-label="Stoooop!"
                data-btn-cancel-icon="icon-close" data-btn-cancel-class="btn-danger">Action confirmation!</button>
                <h3>Directions</h3>
                <button class="btn btn-outline green-sharp  uppercase" data-toggle="confirmation" data-placement="left">Confirmation on left</button>
                <button class="btn btn-outline red-mint  uppercase" data-toggle="confirmation" data-placement="top">Confirmation on top</button>
                <button class="btn btn-outline yellow-mint  uppercase" data-toggle="confirmation" data-placement="bottom">Confirmation on bottom</button>
                <button class="btn btn-outline purple-sharp  uppercase" data-toggle="confirmation" data-placement="right">Confirmation on right</button>
                <h3>Singleton</h3>
                <p> Only one boxe visible at once. </p>
                <button class="btn btn-outline green-sharp  uppercase" data-toggle="confirmation" data-singleton="true">Confirmation 1</button>
                <button class="btn btn-outline red-mint  uppercase" data-toggle="confirmation" data-singleton="true">Confirmation 2</button>
                <h3>Popout</h3>
                <p> Click anywhere on the page to close all boxes. </p>
                <button class="btn green-sharp btn-circle" data-toggle="confirmation" data-popout="true">Confirmation 1</button>
                <button class="btn red-mint btn-circle" data-toggle="confirmation" data-popout="true">Confirmation 2</button>
                <h3>Event Handling</h3>
                <p> All events from Bootstrap Popover are available but suffixed with bs.confirmation. </p>
                                    <button class="btn yellow-mint uppercase btn-circle" data-toggle="confirmation" id="bs_confirmation_demo_1">Confirmation 1</button>
                                    <button class="btn grey-mint uppercase btn-circle" data-toggle="confirmation" id="bs_confirmation_demo_2">Confirmation 2</button>
                                </div>
                            </div>
                        </div>
                    </div>

<lambo:script
	path="global/plugins/bootstrap-confirmation/bootstrap-confirmation.js" />
</body>