<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Buttons datatables</title>
</head>
<body>
<lambo:link path="global/plugins/datatables/datatables.css,
				  global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css,
				  global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Buttons Datatable
    <small>按钮扩展示例</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				场景：添加按钮，点击的时候触发用来给表格添加更多的交互：可以用来改变表格的状态，修饰表格的数据，收集表格的数据，甚至
				去触发一些额外的进程。把这些功能按钮放到页面上，使最终用户就像操作一个本地的表格一样，更加方便的操作表格。
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
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css">
							global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css
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
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js">
							global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a target="_blank" href = "/theme/assets/pages/scripts/table-datatables-buttons.js">
							pages/scripts/table-datatables-buttons.js
				</a><br>
		    </p><br>	    
		    <p> 更多资料：
		        <a href="http://datatables.net/extensions/buttons/" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>

<div class="row">
    <div class="col-md-12">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
 <div class="portlet light bordered">
     <div class="portlet-title">
         <div class="caption font-dark">
             <i class="icon-settings font-dark"></i>
             <span class="caption-subject bold uppercase">Buttons</span>
         </div>
         <div class="tools"> </div>
     </div>
     <div class="portlet-body">
         <table class="table table-striped table-bordered table-hover" id="sample_1">
             <thead>
                 <tr>
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
 <div class="portlet box green">
     <div class="portlet-title">
         <div class="caption">
             <i class="fa fa-globe"></i>Buttons </div>
         <div class="tools"> </div>
     </div>
     <div class="portlet-body">
         <table class="table table-striped table-bordered table-hover" id="sample_2">
             <thead>
                 <tr>
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
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- Begin: life time stats -->
 <div class="portlet light portlet-fit portlet-datatable bordered">
     <div class="portlet-title">
         <div class="caption">
             <i class="icon-settings font-green"></i>
             <span class="caption-subject font-green sbold uppercase">Trigger Tools From Dropdown Menu</span>
         </div>
         <div class="actions">
             <div class="btn-group btn-group-devided" data-toggle="buttons">
                 <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm active">
                     <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                 <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm">
                     <input type="radio" name="options" class="toggle" id="option2">Settings</label>
             </div>
             <div class="btn-group">
                 <a class="btn red btn-outline btn-circle" href="javascript:;" data-toggle="dropdown">
                     <i class="fa fa-share"></i>
                     <span class="hidden-xs"> Trigger Tools </span>
                     <i class="fa fa-angle-down"></i>
                 </a>
                 <ul class="dropdown-menu pull-right" id="sample_3_tools">
                     <li>
                         <a href="javascript:;" data-action="0" class="tool-action">
                             <i class="icon-printer"></i> Print</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="1" class="tool-action">
                             <i class="icon-check"></i> Copy</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="2" class="tool-action">
                             <i class="icon-doc"></i> PDF</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="3" class="tool-action">
                             <i class="icon-paper-clip"></i> Excel</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="4" class="tool-action">
                             <i class="icon-cloud-upload"></i> CSV</a>
                     </li>
                     <li class="divider"> </li>
                     <li>
                         <a href="javascript:;" data-action="5" class="tool-action">
                             <i class="icon-refresh"></i> Reload</a>
                     </li>
                     </li>
                 </ul>
             </div>
         </div>
     </div>
     <div class="portlet-body">
         <div class="table-container">
             <table class="table table-striped table-bordered table-hover" id="sample_3">
                 <thead>
                     <tr>
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
 </div>
 <!-- End: life time stats -->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="note note-danger">
            <p> NOTE: 下面这个表格并没有真正链接数据库，所以过滤和排序都是假的，仅仅是为了演示 </p>
        </div>
        <!-- Begin: life time stats -->
 <div class="portlet light portlet-fit portlet-datatable bordered">
     <div class="portlet-title">
         <div class="caption">
             <i class="icon-settings font-dark"></i>
             <span class="caption-subject font-dark sbold uppercase">Ajax Datatable</span>
         </div>
         <div class="actions">
             <div class="btn-group btn-group-devided" data-toggle="buttons">
                 <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm active">
                     <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                 <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm">
                     <input type="radio" name="options" class="toggle" id="option2">Settings</label>
             </div>
             <div class="btn-group">
                 <a class="btn red btn-outline btn-circle" href="javascript:;" data-toggle="dropdown">
                     <i class="fa fa-share"></i>
                     <span class="hidden-xs"> Tools </span>
                     <i class="fa fa-angle-down"></i>
                 </a>
                 <ul class="dropdown-menu pull-right" id="datatable_ajax_tools">
                     <li>
                         <a href="javascript:;" data-action="0" class="tool-action">
                             <i class="icon-printer"></i> Print</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="1" class="tool-action">
                             <i class="icon-check"></i> Copy</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="2" class="tool-action">
                             <i class="icon-doc"></i> PDF</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="3" class="tool-action">
                             <i class="icon-paper-clip"></i> Excel</a>
                     </li>
                     <li>
                         <a href="javascript:;" data-action="4" class="tool-action">
                             <i class="icon-cloud-upload"></i> CSV</a>
                     </li>
                     <li class="divider"> </li>
                     <li>
                         <a href="javascript:;" data-action="5" class="tool-action">
                             <i class="icon-refresh"></i> Reload</a>
                     </li>
                     </li>
                 </ul>
             </div>
         </div>
     </div>
     <div class="portlet-body">
         <div class="table-container">
             <div class="table-actions-wrapper">
                 <span> </span>
                 <select class="table-group-action-input form-control input-inline input-small input-sm">
                     <option value="">Select...</option>
                     <option value="Cancel">Cancel</option>
                     <option value="Cancel">Hold</option>
                     <option value="Cancel">On Hold</option>
                     <option value="Close">Close</option>
                 </select>
                 <button class="btn btn-sm green table-group-action-submit">
                     <i class="fa fa-check"></i> Submit</button>
             </div>
             <table class="table table-striped table-bordered table-hover table-checkable" id="datatable_ajax">
                 <thead>
                     <tr role="row" class="heading">
                         <th width="2%">
                             <input type="checkbox" class="group-checkable"> </th>
                         <th width="5%"> Record&nbsp;# </th>
                         <th width="15%"> Date </th>
                         <th width="200"> Customer </th>
                         <th width="10%"> Ship&nbsp;To </th>
                         <th width="10%"> Price </th>
                         <th width="10%"> Amount </th>
                         <th width="10%"> Status </th>
                         <th width="10%"> Actions </th>
                     </tr>
                     <tr role="row" class="filter">
                         <td> </td>
                         <td>
                             <input type="text" class="form-control form-filter input-sm" name="order_id"> </td>
                         <td>
                             <div class="input-group date date-picker margin-bottom-5" data-date-format="dd/mm/yyyy">
                                 <input type="text" class="form-control form-filter input-sm" readonly name="order_date_from" placeholder="From">
                                 <span class="input-group-btn">
                                     <button class="btn btn-sm default" type="button">
                                         <i class="fa fa-calendar"></i>
                                     </button>
                                 </span>
                             </div>
                             <div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
                                 <input type="text" class="form-control form-filter input-sm" readonly name="order_date_to" placeholder="To">
                                 <span class="input-group-btn">
                                     <button class="btn btn-sm default" type="button">
                                         <i class="fa fa-calendar"></i>
                                     </button>
                                 </span>
                             </div>
                         </td>
                         <td>
                             <input type="text" class="form-control form-filter input-sm" name="order_customer_name"> </td>
                         <td>
                             <input type="text" class="form-control form-filter input-sm" name="order_ship_to"> </td>
                         <td>
                             <div class="margin-bottom-5">
                                 <input type="text" class="form-control form-filter input-sm" name="order_price_from" placeholder="From" /> </div>
                             <input type="text" class="form-control form-filter input-sm" name="order_price_to" placeholder="To" /> </td>
                         <td>
                             <div class="margin-bottom-5">
                                 <input type="text" class="form-control form-filter input-sm margin-bottom-5 clearfix" name="order_quantity_from" placeholder="From" /> </div>
                             <input type="text" class="form-control form-filter input-sm" name="order_quantity_to" placeholder="To" /> </td>
                         <td>
                             <select name="order_status" class="form-control form-filter input-sm">
                                 <option value="">Select...</option>
                                 <option value="pending">Pending</option>
                                 <option value="closed">Closed</option>
                                 <option value="hold">On Hold</option>
                                 <option value="fraud">Fraud</option>
                             </select>
                         </td>
                         <td>
                             <div class="margin-bottom-5">
                                 <button class="btn btn-sm green btn-outline filter-submit margin-bottom">
                                     <i class="fa fa-search"></i> Search</button>
                             </div>
                             <button class="btn btn-sm red btn-outline filter-cancel">
                                 <i class="fa fa-times"></i> Reset</button>
                         </td>
                     </tr>
                 </thead>
                 <tbody> </tbody>
             </table>
         </div>
     </div>
 </div>
 <!-- End: life time stats -->
    </div>
</div>

<lambo:script path="global/scripts/datatable.js,
					global/plugins/datatables/datatables.js,
					global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js,
					global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js,
					pages/scripts/table-datatables-buttons.js" />
</body>