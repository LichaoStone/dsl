<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>fixedheader datatables</title>
</head>
<body>
<lambo:link path="global/plugins/datatables/datatables.css,
				  global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" />

<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> FixedHeader Extension
    <small>浮动datatables表头demo</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：当页面过长的时候，在用户拖动滚动条的时候 表格的头部浮动显示在页面上方，方便用户查看表格
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a target="_blank" href = "/theme/assets/global/plugins/datatables/datatables.css">
							global/plugins/datatables/datatables.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css">
							global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/scripts/datatable.js">
							global/scripts/datatable.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/datatables/datatables.js">
							global/plugins/datatables/datatables.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js">
							global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a target="_blank" href = "/theme/assets/pages/scripts/table-datatables-fixedheader.js">
							pages/scripts/table-datatables-fixedheader.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://www.datatables.net/extensions/fixedheader/" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-dark">
                    <i class="icon-settings font-dark"></i>
                    <span class="caption-subject bold uppercase">Header Fixed</span>
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
                <table class="table table-striped table-bordered table-hover table-header-fixed" id="sample_1">
                    <thead>
                        <tr class="">
                            <th> Rendering engine </th>
                            <th> Browser </th>
                            <th> Platform(s) </th>
                            <th> Engine version </th>
                            <th> CSS grade </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 4.0 </td>
                            <td> Win 95+ </td>
                            <td> 4 </td>
                            <td> X </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 5.0 </td>
                            <td> Win 95+ </td>
                            <td> 5 </td>
                            <td> C </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 5.5 </td>
                            <td> Win 95+ </td>
                            <td> 5.5 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 6 </td>
                            <td> Win 98+ </td>
                            <td> 6 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 7 </td>
                            <td> Win XP SP2+ </td>
                            <td> 7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> AOL browser (AOL desktop) </td>
                            <td> Win XP </td>
                            <td> 6 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 1.0 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 1.5 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 2.0 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 3.0 </td>
                            <td> Win 2k+ / OSX.3+ </td>
                            <td> 1.9 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Camino 1.0 </td>
                            <td> OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Camino 1.5 </td>
                            <td> OSX.3+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Netscape 7.2 </td>
                            <td> Win 95+ / Mac OS 8.6-9.2 </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Netscape Browser 8 </td>
                            <td> Win 98SE+ </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Netscape Navigator 9 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.0 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.1 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.2 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.2 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.3 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.3 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.4 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.4 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.5 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.5 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.6 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.6 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.7 </td>
                            <td> Win 98+ / OSX.1+ </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.8 </td>
                            <td> Win 98+ / OSX.1+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Seamonkey 1.1 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Epiphany 2.20 </td>
                            <td> Gnome </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 1.2 </td>
                            <td> OSX.3 </td>
                            <td> 125.5 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 1.3 </td>
                            <td> OSX.3 </td>
                            <td> 312.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 2.0 </td>
                            <td> OSX.4+ </td>
                            <td> 419.3 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 3.0 </td>
                            <td> OSX.4+ </td>
                            <td> 522.1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> OmniWeb 5.5 </td>
                            <td> OSX.4+ </td>
                            <td> 420 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> iPod Touch / iPhone </td>
                            <td> iPod </td>
                            <td> 420.1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> S60 </td>
                            <td> S60 </td>
                            <td> 413 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 7.0 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 7.5 </td>
                            <td> Win 95+ / OSX.2+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 8.0 </td>
                            <td> Win 95+ / OSX.2+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 8.5 </td>
                            <td> Win 95+ / OSX.2+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 9.0 </td>
                            <td> Win 95+ / OSX.3+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 9.2 </td>
                            <td> Win 88+ / OSX.3+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 9.5 </td>
                            <td> Win 88+ / OSX.3+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera for Wii </td>
                            <td> Wii </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Nokia N800 </td>
                            <td> N800 </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Nintendo DS browser </td>
                            <td> Nintendo DS </td>
                            <td> 8.5 </td>
                            <td> C/A
                                <sup>1</sup>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>Header & Footer Fixed </div>
                <div class="actions">
                    <a href="javascript:;" class="btn btn-default btn-sm btn-circle">
                        <i class="fa fa-plus"></i> Add </a>
                    <a href="javascript:;" class="btn btn-default btn-sm btn-circle">
                        <i class="fa fa-print"></i> Print </a>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover table-header-fixed" id="sample_2">
                    <thead>
                        <tr>
                            <th> Rendering engine </th>
                            <th> Browser </th>
                            <th> Platform(s) </th>
                            <th> Engine version </th>
                            <th> CSS grade </th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th> Rendering engine </th>
                            <th> Browser </th>
                            <th> Platform(s) </th>
                            <th> Engine version </th>
                            <th> CSS grade </th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 4.0 </td>
                            <td> Win 95+ </td>
                            <td> 4 </td>
                            <td> X </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 5.0 </td>
                            <td> Win 95+ </td>
                            <td> 5 </td>
                            <td> C </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 5.5 </td>
                            <td> Win 95+ </td>
                            <td> 5.5 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 6 </td>
                            <td> Win 98+ </td>
                            <td> 6 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> Internet Explorer 7 </td>
                            <td> Win XP SP2+ </td>
                            <td> 7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Trident </td>
                            <td> AOL browser (AOL desktop) </td>
                            <td> Win XP </td>
                            <td> 6 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 1.0 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 1.5 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 2.0 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Firefox 3.0 </td>
                            <td> Win 2k+ / OSX.3+ </td>
                            <td> 1.9 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Camino 1.0 </td>
                            <td> OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Camino 1.5 </td>
                            <td> OSX.3+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Netscape 7.2 </td>
                            <td> Win 95+ / Mac OS 8.6-9.2 </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Netscape Browser 8 </td>
                            <td> Win 98SE+ </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Netscape Navigator 9 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.0 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.1 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.2 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.2 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.3 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.3 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.4 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.4 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.5 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.5 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.6 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> 1.6 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.7 </td>
                            <td> Win 98+ / OSX.1+ </td>
                            <td> 1.7 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Mozilla 1.8 </td>
                            <td> Win 98+ / OSX.1+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Seamonkey 1.1 </td>
                            <td> Win 98+ / OSX.2+ </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Gecko </td>
                            <td> Epiphany 2.20 </td>
                            <td> Gnome </td>
                            <td> 1.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 1.2 </td>
                            <td> OSX.3 </td>
                            <td> 125.5 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 1.3 </td>
                            <td> OSX.3 </td>
                            <td> 312.8 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 2.0 </td>
                            <td> OSX.4+ </td>
                            <td> 419.3 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> Safari 3.0 </td>
                            <td> OSX.4+ </td>
                            <td> 522.1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> OmniWeb 5.5 </td>
                            <td> OSX.4+ </td>
                            <td> 420 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> iPod Touch / iPhone </td>
                            <td> iPod </td>
                            <td> 420.1 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Webkit </td>
                            <td> S60 </td>
                            <td> S60 </td>
                            <td> 413 </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 7.0 </td>
                            <td> Win 95+ / OSX.1+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 7.5 </td>
                            <td> Win 95+ / OSX.2+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 8.0 </td>
                            <td> Win 95+ / OSX.2+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 8.5 </td>
                            <td> Win 95+ / OSX.2+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 9.0 </td>
                            <td> Win 95+ / OSX.3+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 9.2 </td>
                            <td> Win 88+ / OSX.3+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera 9.5 </td>
                            <td> Win 88+ / OSX.3+ </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Opera for Wii </td>
                            <td> Wii </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Nokia N800 </td>
                            <td> N800 </td>
                            <td> - </td>
                            <td> A </td>
                        </tr>
                        <tr>
                            <td> Presto </td>
                            <td> Nintendo DS browser </td>
                            <td> Nintendo DS </td>
                            <td> 8.5 </td>
                            <td> C/A
                                <sup>1</sup>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>

<lambo:script path="global/scripts/datatable.js,
					global/plugins/datatables/datatables.js,
					global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js,
					pages/scripts/table-datatables-fixedheader.js" />
</body>