<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Form input mask</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Form Input Mask
    <small>form input mask samples</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：jquery.inputmask是一个用来创建input-mask的插件，input-mask可以保证用户更加安全、高效的按照预定义的格式去输入内容，
				当输入日期、邮箱、电话号码等内容的时候非常有用
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/jquery-inputmask/jquery.inputmask.bundle.js" target="_blank">
					global/plugins/jquery-inputmask/jquery.inputmask.bundle.js
				</a><br>
				<a href="/theme/assets/global/plugins/jquery.input-ip-address-control-1.0.min.js" target="_blank">
					global/plugins/jquery.input-ip-address-control-1.0.min.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/form-input-mask.js" target="_blank">
					pages/scripts/form-input-mask.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://robinherbots.github.io/jquery.inputmask/" target="_blank">官方文档</a>
		    </p><br>
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
                    <i class="icon-social-dribbble font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Input Masks</span>
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
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Date 1</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_date" type="text" />
                                <span class="help-block"> d/m/y </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Date 2</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_date1" type="text" />
                                <span class="help-block"> change the placeholder </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Date 3</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_date2" type="text" />
                                <span class="help-block"> multi-char placeholder </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Phone</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_phone" type="text" />
                                <span class="help-block"> (999) 999-9999 </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Tax ID</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_tin" type="text" />
                                <span class="help-block"> 99-9999999 </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Number</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_number" type="text" />
                                <span class="help-block"> mask "9" or mask "99" or ... mask "9999999999" </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Currency</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_currency" type="text" />
                                <span class="help-block"> 123456 => € ___.__1.234,56 </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Currency 2</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_currency2" type="text" />
                                <span class="help-block"> 123456 => € ___.__1.234,56(left aligned) </span>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">SSN</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_ssn" type="text" />
                                <span class="help-block"> 999-99-9999. remove the empty mask on blur or when not empty removes the optional trailing part </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn blue">
                                    <i class="fa fa-check"></i> Submit</button>
                                <button type="button" class="btn default">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<div class="m-heading-1 border-blue m-bordered">
    <p> 插件控制IP4和IP6的数据格式 </p>
    <p> 更多信息请参照:
        <a href="https://github.com/felipevolpatto/jquery-input-ip-address-control" class="btn red btn-outline" target="_blank">官方文档</a>
    </p>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light form-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-settings font-dark"></i>
                    <span class="caption-subject font-dark sbold uppercase">IP Address Input</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn dark btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Settings</label>
                        <label class="btn 	dark btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Tools</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-row-seperated">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">IPV4</label>
                            <div class="col-md-4">
                                <input class="form-control" id="input_ipv4" type="text" />
                                <span class="help-block"> 192.168.120.150 </span>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">IPV6</label>
                            <div class="col-md-4">
                                <input class="form-control" id="input_ipv6" type="text" />
                                <span class="help-block"> 3ffe:1900:4545:3:200:f8ff:fe21:67cf </span>
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
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<lambo:script path="global/plugins/jquery-inputmask/jquery.inputmask.bundle.js,
					global/plugins/jquery.input-ip-address-control-1.0.min.js,
					pages/scripts/form-input-mask.js" />
</body>