<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Noui slider</title>
</head>
<body>
<lambo:link path="global/plugins/nouislider/nouislider.css,
				  global/plugins/nouislider/nouislider.pips.css" />

<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> NoUI Range Sliders
    <small>非常轻量的滑块选择插件</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：noUiSlider是一个有丰富接口，但非常轻量的滑块选择插件。他能支持你在iPhone, iPad, Android devices & Windows (Phone) 8等设备上使用，
				当然也可以在电脑上使用。
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/nouislider/nouislider.css" target="_blank">
					global/plugins/nouislider/nouislider.css
				</a><br>
				<a href="/theme/assets/global/plugins/nouislider/nouislider.pips.css" target="_blank">
					global/plugins/nouislider/nouislider.pips.css
				</a><br>
				<a href="/theme/assets/global/plugins/nouislider/wNumb.min.js" target="_blank">
					global/plugins/nouislider/wNumb.min.js
				</a><br>
				<a href="/theme/assets/global/plugins/nouislider/nouislider.js" target="_blank">
					global/plugins/nouislider/nouislider.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-nouisliders.js" target="_blank">
					pages/scripts/components-nouisliders.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://refreshless.com/nouislider/" target="_blank">官方文档</a>
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
                    <span class="caption-subject font-red sbold uppercase">Ion Range Sliders</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                        <label class="btn btn-transparent red btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body form">
                <form role="form" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Basic</label>
                            <div class="col-md-4">
                                <div id="demo2" class="noUi-success"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Custom Connect</label>
                            <div class="col-md-4">
                                <div id="demo3" class="noui-connect"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">HTML5 Input Elements</label>
                            <div class="col-md-4">
                                <div id="demo4" class="noUi-success"></div>
                                <div class="well margin-top-30">
                                    <select id="demo4_select" class="form-control input-small input-inline"> </select>
                                    <input id="demo4_input" class="form-control input-small input-inline"> </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Linear Slider</label>
                            <div class="col-md-4">
                                <div id="demo5" class="noUi-danger"></div>
                                <div class="well margin-top-30">
                                    <strong>Value:</strong>
                                    <span id="demo5_lower-value"></span>
                                    <br>
                                    <strong>Value:</strong>
                                    <span id="demo5_upper-value"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">With Tooltips</label>
                            <div class="col-md-4">
                                <div id="demo8" class="noUi-danger"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Soft Limits</label>
                            <div class="col-md-4">
                                <div id="demo7" class="noUi-primary margin-bottom-40"></div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="col-md-3 control-label">Locking Sliders Together</label>
                            <div class="col-md-4">
                                <div id="demo6_slider1" class="noUi-danger"></div>
                                <strong>Value:</strong>
                                <span id="demo6_slider1-span"></span>
                                <div id="demo6_slider2" class="noUi-success"></div>
                                <strong>Value:</strong>
                                <span id="demo6_slider2-span"></span>
                                <p>
                                    <a href="javascript:;" class="btn red btn-outline sbold uppercase" id="demo6_lockbutton">Lock</a>
                                </p>
                                <span class="help-block"> Two cross-updating sliders can be created using a combination of the change and slide events. </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn green">Submit</button>
                                <button type="button" class="btn default">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/nouislider/wNumb.min.js,
					global/plugins/nouislider/nouislider.js,
					pages/scripts/components-nouisliders.js" />
</body>