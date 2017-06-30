<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Touchspin</title>
</head>
<body>
<lambo:link path="global/plugins/bootstrap-touchspin/bootstrap.touchspin.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Bootstrap Touchspin
    <small>advanced bootstrap touch input spinners</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：简易、可触碰的纺纱机式input控件，支持鼠标滚轮和键盘的上下箭头事件
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.css" target="_blank">
					global/plugins/bootstrap-touchspin/bootstrap.touchspin.css
				</a><br>
				<a href="/theme/assets/global/plugins/fuelux/js/spinner.js" target="_blank">
					global/plugins/fuelux/js/spinner.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" target="_blank">
					global/plugins/bootstrap-touchspin/bootstrap.touchspin.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-bootstrap-touchspin.js" target="_blank">
					pages/scripts/components-bootstrap-touchspin.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://www.virtuosoft.eu/code/bootstrap-touchspin/" target="_blank">官方文档</a>
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
                    <i class="icon-settings font-dark"></i>
                    <span class="caption-subject font-dark sbold uppercase">Bootstrap TouchSpin</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">New</label>
                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Returning</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Example with postfix</label>
                            <div class="col-md-4">
                                <input id="touchspin_1" type="text" value="55" name="demo1" class="form-control"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">With prefix</label>
                            <div class="col-md-4">
                                <input id="touchspin_2" type="text" value="0" name="demo2" class="form-control"> </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Vertical button alignment</label>
                            <div class="col-md-4">
                                <input id="touchspin_3" type="text" value="" name="demo_vertical"> </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Vertical buttons with custom icons</label>
                            <div class="col-md-4">
                                <input id="touchspin_4" type="text" value="" name="demo_vertical"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Init with empty value</label>
                            <div class="col-md-4">
                                <input id="touchspin_5" type="text" value="" name="demo3_21"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Value attribute is not set</label>
                            <div class="col-md-4">
                                <input id="touchspin_6" type="text" value="" name="demo_vertical"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Value is set explicitly to 33</label>
                            <div class="col-md-4">
                                <input id="touchspin_7" type="text" value="33" name="demo_vertical"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Button postfix(small)</label>
                            <div class="col-md-4">
                                <input id="touchspin_8" type="text" value="" name="demo4" class="input-sm"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Button postfix(large)</label>
                            <div class="col-md-4">
                                <div class="input-group input-group-lg">
                                    <input id="touchspin_9" type="text" value="" name="demo4_2" class="form-control input-lg"> </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Button group</label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <input id="touchspin_10" type="text" class="form-control" name="demo5" value="50">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default">Action</button>
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="#">Action</a>
                                            </li>
                                            <li>
                                                <a href="#">Another action</a>
                                            </li>
                                            <li>
                                                <a href="#">Something else here</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="#">Separated link</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Change button class</label>
                            <div class="col-md-4">
                                <input id="touchspin_11" type="text" value="" name="demo4_2"> </div>
                        </div>
                        <div class="form-actions">
                            <div class="row">
                                <div class="col-md-offset-3 col-md-9">
                                    <a href="javascript:;" class="btn dark">
                                        <i class="fa fa-check"></i> Submit</a>
                                    <a href="javascript:;" class="btn btn-outline grey-salsa">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<lambo:script path="global/plugins/fuelux/js/spinner.js,
					 global/plugins/bootstrap-touchspin/bootstrap.touchspin.js,
					 pages/scripts/components-bootstrap-touchspin.js" />
</body>