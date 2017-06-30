<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Knob dials</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 圆表盘
    <small>圆表盘</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：可拖拽的圆表盘
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/jquery-knob/js/jquery.knob.js" target="_blank">
					global/plugins/jquery-knob/js/jquery.knob.js
				</a>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-knob-dials.js" target="_blank">
					pages/scripts/components-knob-dials.js
				</a>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://anthonyterrien.com/knob/" target="_blank">官方文档</a>
		    </p>
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
                    <i class="icon-settings font-dark"></i>
                    <span class="caption-subject font-dark sbold uppercase">Circle Dials</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="row visible-ie8">
                    <div class="col-md-12">
                        <span class="label label-danger"> NOTE: </span> The Circle Dial plugin is not compatible with Internet Explorer 8 and older. </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h4>Disable display input</h4>
                        <input class="knob" data-width="100" data-displayinput=false value="35"> </div>
                    <div class="col-md-4">
                        <h4>Cursor Mode</h4>
                        <input class="knob" data-width="150" data-cursor=true data-fgcolor="#222222" data-thickness=.3 value="29"> </div>
                    <div class="col-md-4">
                        <h4>Display previous value</h4>
                        <input class="knob" data-width="200" data-min="-100" data-displayprevious=true value="44"> </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h4>Angle offset</h4>
                        <input class="knob" data-angleoffset=90 value="35"> </div>
                    <div class="col-md-4">
                        <h4>Angle offset and arc</h4>
                        <input class="knob" data-angleoffset=-125 data-anglearc=250 data-fgcolor="#66EE66" value="35"> </div>
                    <div class="col-md-4">
                        <h4>5-digit values</h4>
                        <input class="knob" data-min="-15000" data-max="15000" value="-11000"> </div>
                </div>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/jquery-knob/js/jquery.knob.js,pages/scripts/components-knob-dials.js" />
</body>