<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>开关</title>
</head>
<body>
<lambo:link path="global/plugins/bootstrap-switch/css/bootstrap-switch.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Bootstrap 开关
    <small>bootstrap 开关</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：用开关的形式来展示checkbox和radio
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.css" target="_blank">
					global/plugins/bootstrap-switch/css/bootstrap-switch.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.js" target="_blank">
					global/plugins/bootstrap-switch/js/bootstrap-switch.js
				</a><br>
				</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-bootstrap-switch.js" target="_blank">
					pages/scripts/components-bootstrap-switch.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://www.bootstrap-switch.org/" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet light form-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-settings font-red"></i>
                    <span class="caption-subject font-red sbold uppercase">Bootstrap 开关</span>
                </div>
                <div class="actions">
                    <input type="checkbox" class="make-switch" checked data-on="success" data-on-color="success" data-off-color="warning" data-size="small"> </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default Sizes</label>
                            <div class="col-md-9">
                                <input type="checkbox" checked class="make-switch" data-size="small">
                                <input type="checkbox" checked class="make-switch" data-size="normal">
                                <input type="checkbox" checked class="make-switch" data-size="large"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Colors</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" checked data-on-color="primary" data-off-color="info">
                                <input type="checkbox" class="make-switch" checked data-on-color="info" data-off-color="success">
                                <input type="checkbox" class="make-switch" checked data-on-color="success" data-off-color="warning">
                                <input type="checkbox" class="make-switch" checked data-on-color="warning" data-off-color="danger">
                                <input type="checkbox" class="make-switch" checked data-on-color="danger" data-off-color="default">
                                <input type="checkbox" class="make-switch" checked data-on-color="default" data-off-color="primary"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Disabled / Readonly</label>
                            <div class="col-md-9">
                                <input type="checkbox" checked disabled class="make-switch" />
                                <input type="checkbox" checked readonly class="make-switch" /> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" data-on-text="Yes" data-off-text="No">
                                <input type="checkbox" class="make-switch" data-on-text="1" data-off-text="0"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Long Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" data-on-text="&nbsp;External&nbsp;" data-off-text="&nbsp;Internal&nbsp;">
                                <input type="checkbox" class="make-switch" data-on-text="&nbsp;Enabled&nbsp;&nbsp;" data-off-text="&nbsp;Disabled&nbsp;"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Label Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" checked data-on-text="TV">
                                <input type="checkbox" class="make-switch" checked data-off-text="Signal"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">HTML Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" checked data-on-text="<i class='fa fa-check'></i>" data-off-text="<i class='fa fa-times'></i>">
                                <input type="checkbox" class="make-switch" checked data-on-text="<i class='fa fa-user'></i>" data-off-text="<i class='fa fa-trash-o'></i>"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">HTML Text Label Icon</label>
                            <div class="col-md-9">
                                <input type="checkbox" checked class="make-switch switch-large" data-label-icon="fa fa-fullscreen" data-on-text="<i class='fa fa-check'></i>" data-off-text="<i class='fa fa-times'></i>">
                                <input type="checkbox" checked class="make-switch switch-large" data-label-icon="fa fa-youtube" data-on-text="<i class='fa fa-thumbs-up'></i>" data-off-text="<i class='fa fa-thumbs-down'></i>"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Radio Group</label>
                            <div class="col-md-9">
                                <div class="margin-bottom-10">
                                    <label for="option1">Option 1</label>
                                    <input id="option1" type="radio" name="radio1" value="option1" class="make-switch switch-radio1"> </div>
                                <div class="margin-bottom-10">
                                    <label for="option2">Option 2</label>
                                    <input id="option2" type="radio" name="radio1" value="option2" class="make-switch switch-radio1"> </div>
                                <div class="margin-bottom-10">
                                    <label for="option3">Option 3</label>
                                    <input id="option3" type="radio" name="radio1" value="option3" class="make-switch switch-radio1"> </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Modal</label>
                            <div class="col-md-9">
                                <a href="#myModal" role="button" class="btn red btn-outline" data-toggle="modal"> View in Modal </a>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <a href="javascript:;" class="btn green">
                                    <i class="fa fa-check"></i> Submit</a>
                                <a href="javascript:;" class="btn btn-outline grey-salsa">Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="myModal" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <a href="javascript:;" class="close" data-dismiss="modal" aria-hidden="true"></a>
                                <h4 class="modal-title">Bootstrap switches</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Default Sizes</label>
                                        <div class="col-md-9">
                                            <input type="checkbox" checked class="make-switch" data-size="small">
                                            <input type="checkbox" checked class="make-switch" data-size="normal">
                                            <input type="checkbox" checked class="make-switch" data-size="large"> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Colors</label>
                                        <div class="col-md-9">
                                            <input type="checkbox" class="make-switch" checked data-on-color="primary" data-off-color="info">
                                            <input type="checkbox" class="make-switch" checked data-on-color="success" data-off-color="warning">
                                            <input type="checkbox" class="make-switch" checked data-on-color="warning" data-off-color="danger"> </div>
                                    </div>
                                    <div class="form-group last">
                                        <label class="control-label col-md-3">Disabled / Readonly</label>
                                        <div class="col-md-9">
                                            <input type="checkbox" checked disabled class="make-switch" />
                                            <input type="checkbox" checked readonly class="make-switch" /> </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <a href="javascript:;" class="btn grey-salsa btn-outline" data-dismiss="modal">Close</a>
                                <a href="javascript:;" class="btn green">
                                    <i class="fa fa-check"></i> Save changes</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script
	path="global/plugins/bootstrap-switch/js/bootstrap-switch.js,pages/scripts/components-bootstrap-switch.js" />
</body>