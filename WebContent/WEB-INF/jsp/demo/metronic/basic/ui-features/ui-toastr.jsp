<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Toastr</title>
</head>
<body>
<lambo:link path="global/plugins/bootstrap-toastr/toastr.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Toastr 弹出框
    <small>gnome & growl type non-blocking notifications</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：页面弹出框
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-toastr/toastr.css" target="_blank">
		    		global/plugins/bootstrap-toastr/toastr.css
		    	</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-toastr/toastr.js" target="_blank">
					global/plugins/bootstrap-toastr/toastr.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/ui-toastr.js" target="_blank">
					pages/scripts/ui-toastr.js
				</a><br>
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
                    <span class="caption-subject font-green-sharp sbold">Toastr Notification Demo</span>
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
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" for="title">Title</label>
                            <input id="title" type="text" class="form-control" value="Toastr Notifications" placeholder="Enter a title ..." /> </div>
                        <div class="form-group">
                            <label class="control-label" for="message">Message</label>
                            <textarea class="form-control" id="message" rows="3" placeholder="Enter a message ...">Gnome & Growl type non-blocking notifications</textarea>
                        </div>
                        <div class="form-group">
                            <div class="checkbox-list">
                                <label for="closeButton">
                                    <input id="closeButton" type="checkbox" value="checked" checked class="input-small" />Close Button </label>
                                <label for="addBehaviorOnToastClick">
                                    <input id="addBehaviorOnToastClick" type="checkbox" value="checked" class="input-small" />Add behavior on toast click </label>
                                <label for="debugInfo">
                                    <input id="debugInfo" type="checkbox" value="checked" class="input-small" />Debug </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group" id="toastTypeGroup">
                            <label>Toast Type</label>
                            <div class="radio-list">
                                <label>
                                    <input type="radio" name="toasts" value="success" checked/>Success </label>
                                <label>
                                    <input type="radio" name="toasts" value="info" />Info </label>
                                <label>
                                    <input type="radio" name="toasts" value="warning" />Warning </label>
                                <label>
                                    <input type="radio" name="toasts" value="error" />Error </label>
                            </div>
                        </div>
                        <div class="form-group" id="positionGroup">
                            <label>Position</label>
                            <div class="radio-list">
                                <label>
                                    <input type="radio" name="positions" value="toast-top-right" checked/>Top Right </label>
                                <label>
                                    <input type="radio" name="positions" value="toast-bottom-right" />Bottom Right </label>
                                <label>
                                    <input type="radio" name="positions" value="toast-bottom-left" />Bottom Left </label>
                                <label>
                                    <input type="radio" name="positions" value="toast-top-left" />Top Left </label>
                                <label>
                                    <input type="radio" name="positions" value="toast-top-center" />Top Center </label>
                                <label>
                                    <input type="radio" name="positions" value="toast-bottom-center" />Bottom Center </label>
                                <label>
                                    <input type="radio" name="positions" value="toast-top-full-width" />Top Full Width </label>
                                <label>
                                    <input type="radio" name="positions" value="toast-bottom-full-width" />Bottom Full Width </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <div class="controls">
                                <label class="control-label" for="showEasing">Show Easing</label>
                                <input id="showEasing" type="text" placeholder="swing, linear" class="form-control input-small" value="swing" />
                                <label class="control-label" for="hideEasing">Hide Easing</label>
                                <input id="hideEasing" type="text" placeholder="swing, linear" class="form-control input-small" value="linear" />
                                <label class="control-label" for="showMethod">Show Method</label>
                                <input id="showMethod" type="text" placeholder="show, fadeIn, slideDown" class="form-control input-small" value="fadeIn" />
                                <label class="control-label" for="hideMethod">Hide Method</label>
                                <input id="hideMethod" type="text" placeholder="hide, fadeOut, slideUp" class="form-control input-small" value="fadeOut" /> </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <div class="controls">
                                <label class="control-label" for="showDuration">Show Duration</label>
                                <input id="showDuration" type="text" placeholder="ms" class="form-control input-small" value="1000" />
                                <label class="control-label" for="hideDuration">Hide Duration</label>
                                <input id="hideDuration" type="text" placeholder="ms" class="form-control input-small" value="1000" />
                                <label class="control-label" for="timeOut">Time out</label>
                                <input id="timeOut" type="text" placeholder="ms" class="form-control input-small" value="5000" />
                                <label class="control-label" for="timeOut">Extended time out</label>
                                <input id="extendedTimeOut" type="text" placeholder="ms" class="form-control input-small" value="1000" /> </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn green" id="showtoast">Show Toast</button>
                        <button type="button" class="btn btn-outline dark" id="cleartoasts">Clear Toasts</button>
                        <button type="button" class="btn btn-outline dark" id="clearlasttoast">Clear Last Toast</button>
                    </div>
                </div>
                <div class="row margin-top-30">
                    <div class="col-md-12"> 
                    	<pre id='toastrOptions' class="well">Settings...
		</pre> 
	</div>
                </div>
            </div>
        </div>
    </div>
</div>
<lambo:script path="global/plugins/bootstrap-toastr/toastr.js,pages/scripts/ui-toastr.js" />
</body>