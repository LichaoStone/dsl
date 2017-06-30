<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>多选下拉框</title>
</head>
<body>
<lambo:link path="global/plugins/bootstrap-select/css/bootstrap-select.css,
				  global/plugins/jquery-multi-select/css/multi-select.css,
				  global/plugins/select2/css/select2.css,
				  global/plugins/select2/css/select2-bootstrap.min.css" />

<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 下拉选择组件
    <small>select2, selectboxit & multi select examples</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：可定制的下拉选择组件
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href='/theme/assets/global/plugins/bootstrap-select/css/bootstrap-select.css' target="_blank">
					global/plugins/bootstrap-select/css/bootstrap-select.css
				</a><br>
				<a href='/theme/assets/global/plugins/jquery-multi-select/css/multi-select.css' target="_blank">
					global/plugins/jquery-multi-select/css/multi-select.css
				</a><br>
				<a href='/theme/assets/global/plugins/select2/css/select2.css' target="_blank">
					global/plugins/select2/css/select2.css
				</a><br>
				<a href='/theme/assets/global/plugins/select2/css/select2-bootstrap.min.css' target="_blank">
					global/plugins/select2/css/select2-bootstrap.min.css
				</a><br>
				<a href='/theme/assets/global/plugins/bootstrap-select/js/bootstrap-select.js' target="_blank">
					global/plugins/bootstrap-select/js/bootstrap-select.js
				</a><br>
				<a href='/theme/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js' target="_blank">
					global/plugins/jquery-multi-select/js/jquery.multi-select.js
				</a><br>
				<a href='/theme/assets/global/plugins/select2/js/select2.full.js' target="_blank">
					global/plugins/select2/js/select2.full.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href='/theme/assets/pages/scripts/components-multi-select.js' target="_blank">
					pages/scripts/components-multi-select.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://loudev.com/" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <div class="portlet light form-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-social-dribbble font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Multiple Select</span>
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
                <form action="index.html" class="form-horizontal form-row-seperated">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default</label>
                            <div class="col-md-9">
                                <select multiple="multiple" class="multi-select" id="my_multi_select1" name="my_multi_select1[]">
                                    <option>Dallas Cowboys</option>
                                    <option>New York Giants</option>
                                    <option selected>Philadelphia Eagles</option>
                                    <option selected>Washington Redskins</option>
                                    <option>Chicago Bears</option>
                                    <option>Detroit Lions</option>
                                    <option>Green Bay Packers</option>
                                    <option>Minnesota Vikings</option>
                                    <option selected>Atlanta Falcons</option>
                                    <option>Carolina Panthers</option>
                                    <option>New Orleans Saints</option>
                                    <option>Tampa Bay Buccaneers</option>
                                    <option>Arizona Cardinals</option>
                                    <option>St. Louis Rams</option>
                                    <option>San Francisco 49ers</option>
                                    <option>Seattle Seahawks</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Grouped Options</label>
                            <div class="col-md-9">
                                <select multiple="multiple" class="multi-select" id="my_multi_select2" name="my_multi_select2[]">
                                    <optgroup label="NFC EAST">
                                        <option>Dallas Cowboys</option>
                                        <option>New York Giants</option>
                                        <option>Philadelphia Eagles</option>
                                        <option>Washington Redskins</option>
                                    </optgroup>
                                    <optgroup label="NFC NORTH">
                                        <option>Chicago Bears</option>
                                        <option>Detroit Lions</option>
                                        <option>Green Bay Packers</option>
                                        <option>Minnesota Vikings</option>
                                    </optgroup>
                                    <optgroup label="NFC SOUTH">
                                        <option>Atlanta Falcons</option>
                                        <option>Carolina Panthers</option>
                                        <option>New Orleans Saints</option>
                                        <option>Tampa Bay Buccaneers</option>
                                    </optgroup>
                                    <optgroup label="NFC WEST">
                                        <option>Arizona Cardinals</option>
                                        <option>St. Louis Rams</option>
                                        <option>San Francisco 49ers</option>
                                        <option>Seattle Seahawks</option>
                                    </optgroup>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn green">
                                    <i class="fa fa-check"></i> Submit</button>
                                <button type="button" class="btn grey-salsa btn-outline">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/bootstrap-select/js/bootstrap-select.js,
					global/plugins/jquery-multi-select/js/jquery.multi-select.js,
					global/plugins/select2/js/select2.full.js,
					pages/scripts/components-multi-select.js" />
</body>