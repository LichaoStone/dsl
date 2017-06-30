<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Ajax portlets</title>
</head>
<body>
<lambo:link path="global/plugins/jquery-notific8/jquery.notific8.min.css,
				  global/plugins/bootstrap-toastr/toastr.css" />

<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Ajax Portlets
    <small>ajax portlet 示例</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：
				 <p> 添加<code>&lt;a href=&quot;#&quot; data-load=&quot;true&quot; data-url=&quot;portlet_ajax_content_1.html&quot; 
				 	class=&quot;reload&quot;&gt;&lt;/a&gt;</code>让portlet支持ajax获取数据。
				 </p>
    			 <p> 移除 <code>data-load=&quot;true&quot;</code> 阻止Portlet在初始化的时候默认加载，只有点击头部的刷新按钮才请求内容. 
    			 </p>
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a target="_blank" href = "/theme/assets/global/plugins/jquery-notific8/jquery.notific8.min.css">
							global/plugins/jquery-notific8/jquery.notific8.min.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-toastr/toastr.css">
							global/plugins/bootstrap-toastr/toastr.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-notific8/jquery.notific8.js">
							global/plugins/jquery-notific8/jquery.notific8.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-toastr/toastr.js">
							global/plugins/bootstrap-toastr/toastr.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a target="_blank" href = "/theme/assets/pages/scripts/portlet-ajax.js">
							pages/scripts/portlet-ajax.js
				</a><br>
		    </p><br>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN Portlet PORTLET-->
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Scrollable Content </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" data-load="true" data-url="/theme/admin_1/portlet_ajax_content_1.html" class="reload"> </a>
                    <a href="javascript:;" class="fullscreen"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body portlet-empty"> </div>
        </div>
        <!-- END Portlet PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN Portlet PORTLET-->
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Advance Form </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload" data-load="true" data-url="/theme/admin_1/portlet_ajax_content_2.html"> </a>
                    <a href="javascript:;" class="fullscreen"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body form portlet-empty"> </div>
        </div>
        <!-- END Portlet PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN Portlet PORTLET-->
        <div class="portlet">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Load On Demand </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" data-url="/theme/admin_1/portlet_ajax_content_3.html" class="reload"> </a>
                    <a href="javascript:;" class="fullscreen"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body portlet-empty"> Defualt content goes here. Click the reload icon above to reload the content from ajax source. </div>
        </div>
        <!-- END Portlet PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN Portlet PORTLET-->
        <div class="portlet solid green" id="my_portlet">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Custom Reload Handler </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="fullscreen"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget
                    lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. </p>
            </div>
        </div>
        <!-- END Portlet PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN Portlet PORTLET-->
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Error Message On Reload Using Notific8 </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" data-error-display="notific8" data-url="error" class="reload"> </a>
                    <a href="javascript:;" class="fullscreen"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body portlet-empty"> Try to reload the content to see how the error message is displayed. </div>
        </div>
        <!-- END Portlet PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN Portlet PORTLET-->
        <div class="portlet box purple">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Error Message On Reload using Toastr </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" data-error-display="toastr" data-url="error" class="reload"> </a>
                    <a href="javascript:;" class="fullscreen"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body portlet-empty"> Try to reload the content to see how the error message is displayed. </div>
        </div>
        <!-- END Portlet PORTLET-->
    </div>
</div>

<lambo:script path="global/plugins/jquery-notific8/jquery.notific8.js,
					global/plugins/bootstrap-toastr/toastr.js,
					pages/scripts/portlet-ajax.js" />
</body>