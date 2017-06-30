<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>树形组件</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Tree View
    <small>树形组件</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：树形组件
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a href = "/theme/assets/global/plugins/jstree/dist/themes/default/style.css" target = _blank >
		    		global/plugins/jstree/dist/themes/default/style.css
		    	</a><br>
				<a href = "/theme/assets/global/plugins/jstree/dist/jstree.js" target = _blank >
					global/plugins/jstree/dist/jstree.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/ui-tree.js" target = "_blank">
					pages/scripts/ui-tree.js
				</a>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://www.jstree.com" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
    <div class="col-md-6">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-social-dribbble font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">Default Tree</span>
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
                <div id="tree_1" class="tree-demo">
                    <ul>
                        <li> Root node 1
                            <ul>
                                <li data-jstree='{ "selected" : true }'>
                                    <a href="javascript:;"> Initially selected </a>
                                </li>
                                <li data-jstree='{ "icon" : "fa fa-briefcase icon-state-success " }'> custom icon URL </li>
                                <li data-jstree='{ "opened" : true }'> initially open
                                    <ul>
                                        <li data-jstree='{ "disabled" : true }'> Disabled Node </li>
                                        <li data-jstree='{ "type" : "file" }'> Another node </li>
                                    </ul>
                                </li>
                                <li data-jstree='{ "icon" : "fa fa-warning icon-state-danger" }'> Custom icon class (bootstrap) </li>
                            </ul>
                        </li>
                        <li data-jstree='{ "type" : "file" }'>
                            <a href="http://www.jstree.com"> Clickanle link node </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">Checkable Tree</span>
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
                <div id="tree_2" class="tree-demo"> </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="portlet yellow-lemon box">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>Contextual Menu with Drag & Drop </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="tree_3" class="tree-demo"> </div>
                <div class="alert alert-success no-margin margin-top-10"> Note! Opened and selected nodes will be saved in the user's browser, so when returning to the same tree the previous state will be restored. </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="portlet red-pink box">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>Ajax Tree with Drag & Drop </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="tree_4" class="tree-demo"> </div>
                <div class="alert alert-info no-margin margin-top-10"> Note! The tree nodes are loaded from ../demo/jstree_ajax_data.php via ajax. </div>
            </div>
        </div>
    </div>
</div>

<lambo:link path="global/plugins/jstree/dist/themes/default/style.css" />
<lambo:script path="global/plugins/jstree/dist/jstree.js" />
<lambo:script path="pages/scripts/ui-tree.js" />
</body>