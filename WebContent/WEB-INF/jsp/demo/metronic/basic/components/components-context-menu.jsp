<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Context Menu</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Context Menu
    <small>context menu based on bootstrap dropdown menu</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：在portlet框中点右键，弹出选择菜单
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-contextmenu/bootstrap-contextmenu.js" target="_blank">
					global/plugins/bootstrap-contextmenu/bootstrap-contextmenu.js
				</a>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-context-menu.js" target="_blank">
					pages/scripts/components-context-menu.js
				</a>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://github.com/sydcanem/bootstrap-contextmenu" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-purple-plum">
                    <i class="icon-speech font-purple-plum"></i>
                    <span class="caption-subject bold uppercase"> Demo 1</span>
                    <span class="caption-helper">right click inside the box</span>
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
                    <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="context" data-toggle="context" data-target="#context-menu">
                    <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula,
                        eget lacinia odio sem nec elit. Cras mattis consectetur purus sit. </p>
                </div>
                <!-- Your custom menu with dropdown-menu as default styling -->
                <div id="context-menu">
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <a href="javascript:;">
                                <i class="icon-user"></i> New User </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-present"></i> New Event
                                <span class="badge badge-success">4</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-basket"></i> New order </a>
                        </li>
                        <li class="divider"> </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-flag"></i> Pending Orders
                                <span class="badge badge-danger">4</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-users"></i> Pending Users
                                <span class="badge badge-warning">12</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-purple-plum">
                    <i class="icon-speech font-purple-plum"></i>
                    <span class="caption-subject bold uppercase"> Demo 2</span>
                    <span class="caption-helper">right click inside the box</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn btn-circle btn-default btn-sm" href="javascript:;" data-toggle="dropdown">
                            <i class="fa fa-user"></i> User
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-user"></i> New User </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-present"></i> New Event
                                    <span class="badge badge-success">4</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-basket"></i> New order </a>
                            </li>
                            <li class="divider"> </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-flag"></i> Pending Orders
                                    <span class="badge badge-danger">4</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-users"></i> Pending Users
                                    <span class="badge badge-warning">12</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <a href="javascript:;" class="btn btn-circle red-sunglo btn-sm">
                        <i class="fa fa-plus"></i> Add </a>
                    <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="main" data-toggle="context"> This is an area where the context menu is active.
                    <span class="label label-danger">However, we wont allow it here.</span> But anywhere else in this text should be perfectly fine. This one is started with only javascript </div>
                <div id="context-menu2">
                    <ul class="dropdown-menu pull-left" role="menu">
                        <li>
                            <a href="javascript:;">
                                <i class="icon-user"></i> New User </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-present"></i> New Event
                                <span class="badge badge-success">4</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-basket"></i> New order </a>
                        </li>
                        <li class="divider"> </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-flag"></i> Pending Orders
                                <span class="badge badge-danger">4</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-users"></i> Pending Users
                                <span class="badge badge-warning">12</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-red-intense">
                    <i class="icon-speech font-red-intense"></i>
                    <span class="caption-subject bold uppercase"> Demo 3</span>
                    <span class="caption-helper">fetch clicked menu item</span>
                </div>
                <div class="tools">
                    <a href="" class="collapse" data-original-title="" title=""> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                    <a href="" class="reload" data-original-title="" title=""> </a>
                    <a href="" class="fullscreen" data-original-title="" title=""> </a>
                    <a href="" class="remove" data-original-title="" title=""> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="context2" data-toggle="context" data-target="#context-menu">
                    <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula,
                        eget lacinia odio sem nec elit. Cras mattis consectetur purus sit. </p>
                </div>
                <!-- Your custom menu with dropdown-menu as default styling -->
                <div id="context-menu">
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <a href="javascript:;">
                                <i class="icon-user"></i> New User </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-present"></i> New Event
                                <span class="badge badge-success">4</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-basket"></i> New order </a>
                        </li>
                        <li class="divider"> </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-flag"></i> Pending Orders
                                <span class="badge badge-danger">4</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-users"></i> Pending Users
                                <span class="badge badge-warning">12</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/bootstrap-contextmenu/bootstrap-contextmenu.js,
					pages/scripts/components-context-menu.js" />

</body>