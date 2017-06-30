<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>自动联想</title>
</head>
<body>
<lambo:link path="global/plugins/typeahead/typeahead.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> input自动联想
    <small>twitter input auto complete</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：input框自动联想
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/typeahead/handlebars.min.js" target="_blank">
					global/plugins/typeahead/handlebars.min.js
				</a><br>	
				<a href="/theme/assets/global/plugins/typeahead/typeahead.bundle.min.js" target="_blank">
					global/plugins/typeahead/typeahead.bundle.min.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-typeahead.js" target="_blank">
					pages/scripts/components-typeahead.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://twitter.github.io/typeahead.js/" target="_blank">官方文档</a>
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
                    <i class="icon-social-dribbble font-dark"></i>
                    <span class="caption-subject font-dark bold uppercase">Twitter Auto Complete(typeahead.js)</span>
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
                <form action="#" id="form-username" class="form-horizontal form-bordered">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Basic Auto Complete</label>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </span>
                                <input type="text" id="typeahead_example_1" name="typeahead_example_1" class="form-control" /> </div>
                            <p class="help-block"> E.g: metronic, keenthemes </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Country Auto Complete</label>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-search"></i>
                                </span>
                                <input type="text" id="typeahead_example_2" name="typeahead_example_2" class="form-control" /> </div>
                            <p class="help-block"> E.g: USA, Malaysia. Prefetch from JSON source</code>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Custom Template</label>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-cogs"></i>
                                </span>
                                <input type="text" id="typeahead_example_3" name="typeahead_example_3" class="form-control" /> </div>
                            <p class="help-block"> Uses a precompiled template to customize look of suggestion.</code>
                            </p>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label class="col-sm-3 control-label">Multiple Sections with Headers</label>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-check"></i>
                                </span>
                                <input type="text" id="typeahead_example_4" name="typeahead_example_4" class="form-control" /> </div>
                            <p class="help-block"> Two datasets that are prefetched, stored, and searched on the client. Highlighting is enabled. </p>
                        </div>
                    </div>
                    <div class="form-group last">
                        <label class="control-label col-md-3">Modal</label>
                        <div class="col-md-4">
                            <a href="#myModal_autocomplete" role="button" class="btn red btn-outline" data-toggle="modal"> View in Modal </a>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn green">
                                    <i class="fa fa-check"></i> Submit</button>
                                <button type="button" class="btn btn-outline grey-salsa">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="myModal_autocomplete" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Radio Switch in Modal</h4>
                            </div>
                            <div class="modal-body form">
                                <form action="#" class="form-horizontal form-row-seperated">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Basic Auto Complete</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </span>
                                                <input type="text" id="typeahead_example_modal_1" name="typeahead_example_modal_1" class="form-control" /> </div>
                                            <p class="help-block"> E.g: metronic, keenthemes. </p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Country Auto Complete</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-search"></i>
                                                </span>
                                                <input type="text" id="typeahead_example_modal_2" name="typeahead_example_modal_2" class="form-control" /> </div>
                                            <p class="help-block"> E.g: USA, Malaysia. Prefetch from JSON source</code>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Custom Template</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-cogs"></i>
                                                </span>
                                                <input type="text" id="typeahead_example_modal_3" name="typeahead_example_modal_3" class="form-control" /> </div>
                                            <p class="help-block"> Uses a precompiled template to customize look of suggestion.</code>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="form-group last">
                                        <label class="col-sm-4 control-label">Multiple Sections with Headers</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-check"></i>
                                                </span>
                                                <input type="text" id="typeahead_example_modal_4" name="typeahead_example_modal_4" class="form-control" /> </div>
                                            <p class="help-block"> Two datasets that are prefetched, stored, and searched on the client. Highlighting is enabled. </p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn grey-salsa btn-outline" data-dismiss="modal">Close</button>
                                <button type="button" class="btn green">
                                    <i class="fa fa-check"></i> Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>

<lambo:script path="global/plugins/typeahead/handlebars.min.js,
					global/plugins/typeahead/typeahead.bundle.min.js,
					pages/scripts/components-typeahead.js" />
</body>