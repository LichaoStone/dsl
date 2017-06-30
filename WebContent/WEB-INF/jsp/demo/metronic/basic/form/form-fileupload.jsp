<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Form fileupload</title>
</head>
<body>
<lambo:link path="global/plugins/fancybox/source/jquery.fancybox.css,
			      global/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css,
			      global/plugins/jquery-file-upload/css/jquery.fileupload.css,
			      global/plugins/jquery-file-upload/css/jquery.fileupload-ui.css
			      " />		
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 多文件上传
    <small>多文件上传</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：支持多文件上传
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a target="_blank" href = "/theme/assets/global/plugins/fancybox/source/jquery.fancybox.css">
					global/plugins/fancybox/source/jquery.fancybox.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css">
					global/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/css/jquery.fileupload.css">
					global/plugins/jquery-file-upload/css/jquery.fileupload.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/css/jquery.fileupload-ui.css">
					global/plugins/jquery-file-upload/css/jquery.fileupload-ui.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js">
					global/plugins/fancybox/source/jquery.fancybox.pack.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js">
					global/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/vendor/tmpl.min.js">
					global/plugins/jquery-file-upload/js/vendor/tmpl.min.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/vendor/load-image.min.js">
					global/plugins/jquery-file-upload/js/vendor/load-image.min.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js">
					global/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/blueimp-gallery/jquery.blueimp-gallery.min.js">
					global/plugins/jquery-file-upload/blueimp-gallery/jquery.blueimp-gallery.min.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.iframe-transport.js">
					global/plugins/jquery-file-upload/js/jquery.iframe-transport.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.fileupload.js">
					global/plugins/jquery-file-upload/js/jquery.iframe-transport.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-process.js">
					global/plugins/jquery-file-upload/js/jquery.fileupload-process.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-image.js">
					global/plugins/jquery-file-upload/js/jquery.fileupload-image.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-audio.js">
					global/plugins/jquery-file-upload/js/jquery.fileupload-audio.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-video.js">
					global/plugins/jquery-file-upload/js/jquery.fileupload-video.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-validate.js">
					global/plugins/jquery-file-upload/js/jquery.fileupload-validate.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-ui.js">
					global/plugins/jquery-file-upload/js/jquery.fileupload-ui.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a target="_blank" href = "/theme/assets/pages/scripts/form-fileupload.js">
					pages/scripts/form-fileupload.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://github.com/blueimp/jQuery-File-Upload" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <form id="fileupload" action="/theme/assets/global/plugins/jquery-file-upload/server/php/" method="POST" enctype="multipart/form-data">
            <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
            <div class="row fileupload-buttonbar">
                <div class="col-lg-7">
                    <!-- The fileinput-button span is used to style the file input field as button -->
                    <span class="btn green fileinput-button">
                        <i class="fa fa-plus"></i>
                        <span> Add files... </span>
                        <input type="file" name="files[]" multiple=""> </span>
                    <button type="submit" class="btn blue start">
                        <i class="fa fa-upload"></i>
                        <span> Start upload </span>
                    </button>
                    <button type="reset" class="btn warning cancel">
                        <i class="fa fa-ban-circle"></i>
                        <span> Cancel upload </span>
                    </button>
                    <button type="button" class="btn red delete">
                        <i class="fa fa-trash"></i>
                        <span> Delete </span>
                    </button>
                    <input type="checkbox" class="toggle">
                    <!-- The global file processing state -->
                    <span class="fileupload-process"> </span>
                </div>
                <!-- The global progress information -->
                <div class="col-lg-5 fileupload-progress fade">
                    <!-- The global progress bar -->
                    <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar progress-bar-success" style="width:0%;"> </div>
                    </div>
                    <!-- The extended global progress information -->
                    <div class="progress-extended"> &nbsp; </div>
                </div>
            </div>
            <!-- The table listing the files available for upload/download -->
            <table role="presentation" class="table table-striped clearfix">
                <tbody class="files"> </tbody>
            </table>
        </form>
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">Demo Notes</h3>
            </div>
            <div class="panel-body">
                <ul>
                    <li> The maximum file size for uploads in this demo is
                        <strong>5 MB</strong> (default file size is unlimited). </li>
                    <li> Only image files (
                        <strong>JPG, GIF, PNG</strong>) are allowed in this demo (by default there is no file type restriction). </li>
                    <li> Uploaded files will be deleted automatically after
                        <strong>5 minutes</strong> (demo setting). </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- The blueimp Gallery widget -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
    <div class="slides"> </div>
    <h3 class="title"></h3>
    <a class="prev"> ‹ </a>
    <a class="next"> › </a>
    <a class="close white"> </a>
    <a class="play-pause"> </a>
    <ol class="indicator"> </ol>
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script id="template-upload" type="text/x-tmpl"> {% for (var i=0, file; file=o.files[i]; i++) { %}
                        <tr class="template-upload fade">
                            <td>
                                <span class="preview"></span>
                            </td>
                            <td>
                                <p class="name">{%=file.name%}</p>
                                <strong class="error text-danger label label-danger"></strong>
                            </td>
                            <td>
                                <p class="size">Processing...</p>
                                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
                                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                                </div>
                            </td>
                            <td> {% if (!i && !o.options.autoUpload) { %}
                                <button class="btn blue start" disabled>
                                    <i class="fa fa-upload"></i>
                                    <span>Start</span>
                                </button> {% } %} {% if (!i) { %}
                                <button class="btn red cancel">
                                    <i class="fa fa-ban"></i>
                                    <span>Cancel</span>
                                </button> {% } %} </td>
                        </tr> {% } %} </script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl"> {% for (var i=0, file; file=o.files[i]; i++) { %}
                        <tr class="template-download fade">
                            <td>
                                <span class="preview"> {% if (file.thumbnailUrl) { %}
                                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery>
                                        <img src="{%=file.thumbnailUrl%}">
                                    </a> {% } %} </span>
                            </td>
                            <td>
                                <p class="name"> {% if (file.url) { %}
                                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl? 'data-gallery': ''%}>{%=file.name%}</a> {% } else { %}
                                    <span>{%=file.name%}</span> {% } %} </p> {% if (file.error) { %}
                                <div>
                                    <span class="label label-danger">Error</span> {%=file.error%}</div> {% } %} </td>
                            <td>
                                <span class="size">{%=o.formatFileSize(file.size)%}</span>
                            </td>
                            <td> {% if (file.deleteUrl) { %}
                                <button class="btn red delete btn-sm" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}" {% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}' {% } %}>
                                    <i class="fa fa-trash-o"></i>
                                    <span>Delete</span>
                                </button>
                                <input type="checkbox" name="delete" value="1" class="toggle"> {% } else { %}
                                <button class="btn yellow cancel btn-sm">
                                    <i class="fa fa-ban"></i>
                                    <span>Cancel</span>
                                </button> {% } %} </td>
                        </tr> {% } %} </script>
		
<lambo:script path="global/plugins/fancybox/source/jquery.fancybox.pack.js,
		global/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js,
		global/plugins/jquery-file-upload/js/vendor/tmpl.min.js,
		global/plugins/jquery-file-upload/js/vendor/load-image.min.js,
		global/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js,
		global/plugins/jquery-file-upload/blueimp-gallery/jquery.blueimp-gallery.min.js,
		global/plugins/jquery-file-upload/js/jquery.iframe-transport.js,
		global/plugins/jquery-file-upload/js/jquery.fileupload.js,
		global/plugins/jquery-file-upload/js/jquery.fileupload-process.js,
		global/plugins/jquery-file-upload/js/jquery.fileupload-image.js,
		global/plugins/jquery-file-upload/js/jquery.fileupload-audio.js,
		global/plugins/jquery-file-upload/js/jquery.fileupload-video.js,
		global/plugins/jquery-file-upload/js/jquery.fileupload-validate.js,
		global/plugins/jquery-file-upload/js/jquery.fileupload-ui.js" />

<lambo:script path="pages/scripts/form-fileupload.js" />
</body>