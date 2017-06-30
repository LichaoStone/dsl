<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Nocific8</title>
</head>
<body>
<lambo:link path="global/plugins/jquery-notific8/jquery.notific8.min.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Notific8 提示框
    <small>win8风格的提示框</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：页面提示框
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a target="_blank" href="/theme/assets/global/plugins/jquery-notific8/jquery.notific8.min.css">
		    		global/plugins/jquery-notific8/jquery.notific8.min.css
		    	</a><br>
				<a target="_blank" href="/theme/assets/global/plugins/jquery-notific8/jquery.notific8.js">
					global/plugins/jquery-notific8/jquery.notific8.js
				</a>	
			</p><br>
			<p>
				本demo页面的js:<br>
				<a target="_blank" href="/theme/assets/pages/scripts/ui-notific8.js">
					pages/scripts/ui-notific8.js
				</a>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://github.com/willsteinmetz/jquery-notific8" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp sbold">Notific8 Notification Demo</span>
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
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Notification text:</label>
                        <div class="col-md-5">
                            <input id="notific8_text" type="text" class="form-control" value="Inspired by Windows 8 notifications" placeholder="enter a text ..." /> </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Heading(optional):</label>
                        <div class="col-md-5">
                            <input id="notific8_heading" type="text" class="form-control" value="" placeholder="enter a heading ..." /> </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Sticky ?</label>
                        <div class="col-md-5">
                            <label class="checkbox">
                                <input type="checkbox" id="notific8_sticky" value="1"> </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Life:</label>
                        <div class="col-md-5">
                            <select id="notific8_life" class="form-control input-medium">
                                <option value="1000">1 second</option>
                                <option value="5000">5 seconds</option>
                                <option value="10000" selected="selected">10 seconds (default)</option>
                                <option value="25000">25 seconds</option>
                                <option value="60000">60 seconds</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Style:</label>
                        <div class="col-md-5">
                            <select id="notific8_theme" class="form-control input-medium">
                                <option value="teal" selected="selected">teal (default)</option>
                                <option value="amethyst">amethyst</option>
                                <option value="ruby">ruby</option>
                                <option value="tangerine">tangerine</option>
                                <option value="lemon">lemon</option>
                                <option value="lime">lime</option>
                                <option value="ebony">ebony</option>
                                <option value="smoke">smoke</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title">Position:</label>
                        <div class="col-md-5">
                            <select id="notific8_pos_hor" class="form-control input-small input-inline">
                                <option value="top">top (default)</option>
                                <option value="bottom">bottom</option>
                            </select>
                            <select id="notific8_pos_ver" class="form-control input-small input-inline">
                                <option value="right">right (default)</option>
                                <option value="left">left</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="title"></label>
                        <div class="col-md-5">
                            <a href="javascript:;" class="btn red btn-outline sbold uppercase btn-lg" id="notific8_show"> Show Notification! </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<lambo:script path="global/plugins/jquery-notific8/jquery.notific8.js,
 					  pages/scripts/ui-notific8.js" />
</body>