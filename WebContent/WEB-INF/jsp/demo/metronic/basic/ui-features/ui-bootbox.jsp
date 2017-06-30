<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootbox</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 常用弹出框
    <small>bootstrap modal dialogs</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：常用弹出框，包括alert、confirm等
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootbox/bootbox.min.js" target="_blank">
		    		global/plugins/bootbox/bootbox.js
		    	</a>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/ui-bootbox.js" target="_blank">
					pages/scripts/ui-bootbox.js
				</a>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://bootboxjs.com/" target="_blank">官方文档</a>
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
                    <i class="icon-social-dribbble font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">Bootbox Demo</span>
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
                <table class="table table-hover table-striped table-bordered">
                    <tr>
                        <td> Basic alert example </td>
                        <td>
                            <a class="btn blue btn-outline sbold uppercase" id="demo_1"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Alert with callback </td>
                        <td>
                            <a class="btn red btn-outline sbold uppercase" id="demo_2"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Confirm example </td>
                        <td>
                            <a class="btn yellow btn-outline sbold uppercase" id="demo_3"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Promt example </td>
                        <td>
                            <a class="btn green btn-outline sbold uppercase" id="demo_4"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Advance dialog </td>
                        <td>
                            <a class="btn dark btn-outline sbold uppercase" id="demo_5"> View Demo </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/bootbox/bootbox.min.js,pages/scripts/ui-bootbox.js" />
</body>