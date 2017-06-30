<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Form dropzone</title>
</head>
<body>
<lambo:link path="global/plugins/dropzone/dropzone.min.css,
			      global/plugins/dropzone/basic.min.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title">Dropzone File Upload 
	<small>拖拽实现文件上传</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：可以通过拖拽的方式实现文件上传
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/dropzone/dropzone.min.css" target="_blank">
					global/plugins/dropzone/dropzone.min.css
				</a><br>
				<a href="/theme/assets/global/plugins/dropzone/basic.min.css" target="_blank">
					global/plugins/dropzone/basic.min.css
				</a><br>
				<a href="/theme/assets/global/plugins/dropzone/dropzone.js" target="_blank">
					global/plugins/dropzone/dropzone.js
				</a><br>
			</p><br>
		    <p> 更多资料：
		        <a href="http://www.dropzonejs.com/" target="_blank">官方文档</a>
		    </p><br>
		    <p><span class="label label-danger">NOTE:</span> &nbsp; 插件仅能支持 Chrome, Firefox, Safari, Opera & 
		    	Internet Explorer10.
			</p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <form action="/theme/assets/global/plugins/dropzone/upload.php" class="dropzone dropzone-file-area" id="my-dropzone" style="width: 500px; margin-top: 50px;">
            <h3 class="sbold">Drop files here or click to upload</h3>
            <p> This is just a demo dropzone. Selected files are not actually uploaded. </p>
        </form>
    </div>
</div>
<lambo:script path="global/plugins/dropzone/dropzone.min.js" />
</body>