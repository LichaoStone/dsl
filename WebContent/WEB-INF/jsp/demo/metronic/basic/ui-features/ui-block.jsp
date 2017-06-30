<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Block UI</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 加载中
    <small>block ui samples</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：让整个页面或者页面某个区域处于加载中
			</p><br>
			<p>
				本demo页面的js:<br>
				<a target="_blank" href = "/theme/assets/pages/scripts/ui-blockui.js">
					pages/scripts/ui-blockui.js
				</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->

<div class="row">
    <div class="col-md-6">
        <div class="portlet light bordered" id="blockui_sample_1_portlet_body">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp sbold">Portlet Blocking</span>
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
                <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique. </p>
                <p> Aet accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
                    et. </p>
                <p>
                    <a href="javascript:;" class="btn btn-outline sbold blue-madison" id="blockui_sample_1_1"> Block Portlet With Default Message </a>
                </p>
                <p>
                    <a href="javascript:;" class="btn btn-outline sbold red-intense" id="blockui_sample_1_2"> Block Portlet With Boxed Message </a>
                </p>
                <p>
                    <a href="javascript:;" class="btn btn-outline sbold green-haze" id="blockui_sample_1_3"> Block Portlet With CSS3 Animation</a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-red-mint"></i>
                    <span class="caption-subject font-red-mint sbold">Page Blocking</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn dark btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
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
                <p>
                    <a href="javascript:;" class="btn btn-outline sbold green" id="blockui_sample_2_1"> Block Page With Default Message </a>
                </p>
                <p>
                    <a href="javascript:;" class="btn btn-outline sbold yellow" id="blockui_sample_2_2"> Block Page With Boxed Message </a>
                </p>
                <p>
                    <a href="javascript:;" class="btn btn-outline sbold red" id="blockui_sample_2_3"> Block Page Without Background Overlay </a>
                </p>
                <p>
                    <a href="javascript:;" class="btn btn-outline sbold purple" id="blockui_sample_2_4"> Block Page with CSS3 Animation </a>
                </p>
                <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique. </p>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="portlet green-sharp box">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>Element Blocking </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <p>
                    <a class="btn red" data-toggle="modal" href="#basic"> Block Modal Content </a>
                </p>
                <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Modal Title</h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    <a href="javascript:;" class="btn btn-outline sbold blue" id="blockui_sample_3_1_0"> Block Whole Modal </a>
                                </p>
                                <p>
                                    <a href="javascript:;" class="btn btn-outline sbold green" id="blockui_sample_3_1"> Block Below Element </a>
                                    <a href="javascript:;" class="btn btn-outline sbold default" id="blockui_sample_3_1_1"> Unblock Below Element </a>
                                </p>
                                <div id="blockui_sample_3_1_element">
                                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                        similique. </p>
                                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                        similique. </p>
                                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                        similique. </p>
                                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                        similique. </p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline sbold red" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-outline sbold blue">Save changes</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <p>
                    <a href="javascript:;" class="btn green" id="blockui_sample_3_2"> Block Below Element </a>
                    <a href="javascript:;" class="btn default" id="blockui_sample_3_2_1"> Unblock Below Element </a>
                </p>
                <div id="blockui_sample_3_2_element">
                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.
                        </p>
                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.
                        </p>
                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.
                        </p>
                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.
                        </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="portlet red-mint box">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>Custom Messages </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body" id="blockui_sample_4_portlet_body">
                <p>
                    <a href="javascript:;" class="btn blue btn-outline sbold " id="blockui_sample_4_1"> Block Portlet With Custom Message </a>
                </p>
                <p>
                    <a href="javascript:;" class="btn yellow btn-outline sbold " id="blockui_sample_4_2"> Block Portlet With Spinning Image Only </a>
                </p>
                <p>
                    <a href="javascript:;" class="btn purple btn-outline sbold " id="blockui_sample_4_3"> Block Portlet With Text Only </a>
                </p>
                <div>
                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.
                        </p>
                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.
                        </p>
                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.
                        </p>
                </div>
            </div>
        </div>
    </div>
</div>

<lambo:script path="pages/scripts/ui-blockui.js" />
</body>