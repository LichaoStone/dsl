<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>标签input</title>
</head>
<body>
<lambo:link path="global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css
				  ,global/plugins/typeahead/typeahead.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Bootstrap Tags Input
    <small>jquery plugin providing a twitter bootstrap user interface for managing tags</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：input框内填充选择标签
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" target="_blank">
					global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css
				</a><br>
				<a href="/theme/assets/global/plugins/typeahead/typeahead.css" target="_blank">
					global/plugins/typeahead/typeahead.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js" target="_blank">
					global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js
				</a><br>
				<a href="/theme/assets/global/plugins/typeahead/handlebars.min.js" target="_blank">
					global/plugins/typeahead/handlebars.js
				</a><br>
				<a href="/theme/assets/global/plugins/typeahead/typeahead.bundle.min.js" target="_blank">
					global/plugins/typeahead/typeahead.bundle.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-bootstrap-tagsinput.js" target="_blank">
					pages/scripts/components-bootstrap-tagsinput.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://timschlechter.github.io/bootstrap-tagsinput/examples/" target="_blank">官方文档</a>
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
                    <i class="icon-social-dribbble font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Bootstrap Tags Input</span>
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
                <form action="#" class="form-horizontal form-bordered ">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Basic</label>
                            <div class="col-md-9">
                                <input type="text" value="Amsterdam,Washington,Sydney,Beijing,Cairo" data-role="tagsinput"> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Multi value</label>
                            <div class="col-md-9">
                                <select multiple data-role="tagsinput">
                                    <option value="Amsterdam">Amsterdam</option>
                                    <option value="Washington">Washington</option>
                                    <option value="Sydney">Sydney</option>
                                    <option value="Beijing">Beijing</option>
                                    <option value="Cairo">Cairo</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Objects as tags</label>
                            <div class="col-md-9">
                                <input type="text" value="" id="object_tagsinput">
                                <div class="margin-top-10">
                                    <input type="text" class="form-control input-large" placeholder="Tag value" id="object_tagsinput_value"> </div>
                                <div class="margin-top-10">
                                    <select class="form-control input-large" id="object_tagsinput_continent">
                                        <option value="America">Continent...</option>
                                        <option value="America">America</option>
                                        <option value="Europe">Europe</option>
                                        <option value="Australia">Australia</option>
                                        <option value="Africa">Africa</option>
                                        <option value="Asia">Asia</option>
                                    </select>
                                </div>
                                <div class="margin-top-10">
                                    <input type="text" class="form-control input-large" placeholder="City" id="object_tagsinput_city"> </div>
                                <div class="margin-top-10">
                                    <a href="javascript:;" class="btn red" id="object_tagsinput_add">Add tag</a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Tag States</label>
                            <div class="col-md-9">
                                <input type="text" value="" id="state_tagsinput">
                                <div class="margin-top-10">
                                    <input type="text" class="form-control input-large" placeholder="Tag value" id="state_tagsinput_value"> </div>
                                <div class="margin-top-10">
                                    <select class="form-control input-large" id="state_tagsinput_continent">
                                        <option value="America">Continent...</option>
                                        <option value="America">America</option>
                                        <option value="Europe">Europe</option>
                                        <option value="Australia">Australia</option>
                                        <option value="Africa">Africa</option>
                                        <option value="Asia">Asia</option>
                                    </select>
                                </div>
                                <div class="margin-top-10">
                                    <input type="text" class="form-control input-large" placeholder="City" id="state_tagsinput_city"> </div>
                                <div class="margin-top-10">
                                    <a href="javascript:;" class="btn red" id="state_tagsinput_add">Add tag</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="button" class="btn green">
                                    <i class="fa fa-check"></i> Submit</button>
                                <button type="button" class="btn default">Cancel</button>
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
<lambo:script path="global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js,
					global/plugins/typeahead/handlebars.min.js,
					global/plugins/typeahead/typeahead.bundle.min.js,
					pages/scripts/components-bootstrap-tagsinput.js" />
</body>