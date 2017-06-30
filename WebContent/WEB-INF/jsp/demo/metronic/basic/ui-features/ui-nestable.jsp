<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Nestable</title>
</head>
<body>
<lambo:link path="global/plugins/jquery-nestable/jquery.nestable.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Nestable List
    <small>树形，可拖拽改变顺序列表</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：可以展开收起，拖拽改变顺序的列表插件。支持 Firefox, Chrome, Opera, Safari, Internet Explorer 10 and Internet Explorer 9 浏览器
				 Internet Explorer 8 不支持
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/jquery-nestable/jquery.nestable.css" target="_blank">
					global/plugins/jquery-nestable/jquery.nestable.css
				</a><br>
				<a href="/theme/assets/global/plugins/jquery-nestable/jquery.nestable.js" target="_blank">
					global/plugins/jquery-nestable/jquery.nestable.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/ui-nestable.js" target="_blank">
					pages/scripts/ui-nestable.js
				</a><br>
		    </p><br>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="portlet light bordered">
    <div class="portlet-body ">
        <div class="row">
            <div class="col-md-12">
                <div class="margin-bottom-10" id="nestable_list_menu">
                    <button type="button" class="btn green btn-outline sbold uppercase" data-action="expand-all">Expand All</button>
                    <button type="button" class="btn red btn-outline sbold uppercase" data-action="collapse-all">Collapse All</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3>Serialised Output (per list)</h3>
                <textarea id="nestable_list_1_output" class="form-control col-md-12 margin-bottom-10"></textarea>
                <textarea id="nestable_list_2_output" class="form-control col-md-12 margin-bottom-10"></textarea>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-green"></i>
                    <span class="caption-subject font-green sbold uppercase">Nestable List 1</span>
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
            <div class="portlet-body ">
                <div class="dd" id="nestable_list_1">
                    <ol class="dd-list">
                        <li class="dd-item" data-id="1">
                            <div class="dd-handle"> Item 1 </div>
                        </li>
                        <li class="dd-item" data-id="2">
                            <div class="dd-handle"> Item 2 </div>
                            <ol class="dd-list">
                                <li class="dd-item" data-id="3">
                                    <div class="dd-handle"> Item 3 </div>
                                </li>
                                <li class="dd-item" data-id="4">
                                    <div class="dd-handle"> Item 4 </div>
                                </li>
                                <li class="dd-item" data-id="5">
                                    <div class="dd-handle"> Item 5 </div>
                                    <ol class="dd-list">
                                        <li class="dd-item" data-id="6">
                                            <div class="dd-handle"> Item 6 </div>
                                        </li>
                                        <li class="dd-item" data-id="7">
                                            <div class="dd-handle"> Item 7 </div>
                                        </li>
                                        <li class="dd-item" data-id="8">
                                            <div class="dd-handle"> Item 8 </div>
                                        </li>
                                    </ol>
                                </li>
                                <li class="dd-item" data-id="9">
                                    <div class="dd-handle"> Item 9 </div>
                                </li>
                                <li class="dd-item" data-id="10">
                                    <div class="dd-handle"> Item 10 </div>
                                </li>
                            </ol>
                        </li>
                        <li class="dd-item" data-id="11">
                            <div class="dd-handle"> Item 11 </div>
                        </li>
                        <li class="dd-item" data-id="12">
                            <div class="dd-handle"> Item 12 </div>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-red"></i>
                    <span class="caption-subject font-red sbold uppercase">Nestable List 2</span>
                </div>
                <div class="tools">
                    <a href="" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="" class="reload"> </a>
                    <a href="" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="dd" id="nestable_list_2">
                    <ol class="dd-list">
                        <li class="dd-item" data-id="13">
                            <div class="dd-handle"> Item 13 </div>
                        </li>
                        <li class="dd-item" data-id="14">
                            <div class="dd-handle"> Item 14 </div>
                        </li>
                        <li class="dd-item" data-id="15">
                            <div class="dd-handle"> Item 15 </div>
                            <ol class="dd-list">
                                <li class="dd-item" data-id="16">
                                    <div class="dd-handle"> Item 16 </div>
                                </li>
                                <li class="dd-item" data-id="17">
                                    <div class="dd-handle"> Item 17 </div>
                                </li>
                                <li class="dd-item" data-id="18">
                                    <div class="dd-handle"> Item 18 </div>
                                </li>
                            </ol>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-purple"></i>
                    <span class="caption-subject font-purple sbold uppercase">Nestable List 3</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">New</label>
                        <label class="btn btn-transparent grey-salsa btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Returning</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="dd" id="nestable_list_3">
                    <ol class="dd-list">
                        <li class="dd-item dd3-item" data-id="13">
                            <div class="dd-handle dd3-handle"> </div>
                            <div class="dd3-content"> Item 13 </div>
                        </li>
                        <li class="dd-item dd3-item" data-id="14">
                            <div class="dd-handle dd3-handle"> </div>
                            <div class="dd3-content"> Item 14 </div>
                        </li>
                        <li class="dd-item dd3-item" data-id="15">
                            <div class="dd-handle dd3-handle"> </div>
                            <div class="dd3-content"> Item 15 </div>
                            <ol class="dd-list">
                                <li class="dd-item dd3-item" data-id="16">
                                    <div class="dd-handle dd3-handle"> </div>
                                    <div class="dd3-content"> Item 16 </div>
                                </li>
                                <li class="dd-item dd3-item" data-id="17">
                                    <div class="dd-handle dd3-handle"> </div>
                                    <div class="dd3-content"> Item 17 </div>
                                </li>
                                <li class="dd-item dd3-item" data-id="18">
                                    <div class="dd-handle dd3-handle"> </div>
                                    <div class="dd3-content"> Item 18 </div>
                                </li>
                            </ol>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<lambo:script path="global/plugins/jquery-nestable/jquery.nestable.js,
				  pages/scripts/ui-nestable.js" />
</body>