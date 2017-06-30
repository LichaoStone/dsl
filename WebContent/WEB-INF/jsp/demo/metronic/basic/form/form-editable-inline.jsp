<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Form editable</title>
</head>
<body>
<lambo:link path="global/plugins/select2/css/select2.css,
				  global/plugins/select2/css/select2-bootstrap.min.css,
				  global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css,
				  global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css,
				  global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css,
				  global/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css,
				  global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css,
				  global/plugins/bootstrap-editable/inputs-ext/address/address.css" />

	

<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Form X-editable
    <small>form x-editable samples</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：允许你在页面上创建可编辑的元素。能兼容bootstrap, jquery-ui, jquery only三种引擎，而且包含弹出和内联两种模式。
				建议你通过尝试使用，去了解他的工作原理。
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
				<a href="/theme/assets/global/plugins/select2/css/select2.css"  target="_blank">
					global/plugins/select2/css/select2.css
				</a><br>
				<a href="/theme/assets/global/plugins/select2/css/select2-bootstrap.min.css"  target="_blank">
					global/plugins/select2/css/select2-bootstrap.min.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css"  target="_blank">
					global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css"  target="_blank">
					global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css"  target="_blank">
					global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css"  target="_blank">
					global/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css"  target="_blank">
					global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-editable/inputs-ext/address/address.css"  target="_blank">
					global/plugins/bootstrap-editable/inputs-ext/address/address.css
				</a><br>
				<a href="/theme/assets/global/plugins/select2/js/select2.full.js"  target="_blank">
					global/plugins/select2/js/select2.full.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"  target="_blank">
					global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"  target="_blank">
					global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"  target="_blank">
					global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"  target="_blank">
					global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js
				</a><br>
				<a href="/theme/assets/global/plugins/moment.min.js"  target="_blank">
					global/plugins/moment.min.js
				</a><br>
				<a href="/theme/assets/global/plugins/jquery.mockjax.js"  target="_blank">
					global/plugins/jquery.mockjax.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js"  target="_blank">
					global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-editable/inputs-ext/address/address.js"  target="_blank">
					global/plugins/bootstrap-editable/inputs-ext/address/address.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-editable/inputs-ext/wysihtml5/wysihtml5.js"  target="_blank">
					global/plugins/bootstrap-editable/inputs-ext/wysihtml5/wysihtml5.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-typeahead/bootstrap3-typeahead.min.js"  target="_blank">
					global/plugins/bootstrap-typeahead/bootstrap3-typeahead.min.js
				</a><br>		
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/form-editable.js"  target="_blank">
					pages/scripts/form-editable.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://vitalets.github.io/x-editable/docs.html" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->

<div class="row">
    <div class="col-md-12">
        <label>
            <input type="checkbox" id="autoopen">&nbsp;Auto-open next field</label>
        <label>
            <input type="checkbox" id="inline">&nbsp;Inline editing</label>
        <button id="enable" class="btn green">Enable / Disable</button>
        <hr> </div>
</div>
<div class="portlet light portlet-fit bordered">
    <div class="portlet-title">
        <div class="caption">
            <i class="icon-settings font-dark"></i>
            <span class="caption-subject font-dark sbold uppercase">Editable Form</span>
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
        <div class="row">
            <div class="col-md-12">
                <table id="user" class="table table-bordered table-striped">
                    <tbody>
                        <tr>
                            <td style="width:15%"> Username </td>
                            <td style="width:50%">
                                <a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter username"> superuser </a>
                            </td>
                            <td style="width:35%">
                                <span class="text-muted"> Simple text field </span>
                            </td>
                        </tr>
                        <tr>
                            <td> First name </td>
                            <td>
                                <a href="javascript:;" id="firstname" data-type="text" data-pk="1" data-placement="right" data-placeholder="Required" data-original-title="Enter your firstname"> </a>
                            </td>
                            <td>
                                <span class="text-muted"> Required text field, originally empty </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Sex </td>
                            <td>
                                <a href="javascript:;" id="sex" data-type="select" data-pk="1" data-value="" data-original-title="Select sex"> </a>
                            </td>
                            <td>
                                <span class="text-muted"> Select, loaded from js array. Custom display </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Group </td>
                            <td>
                                <a href="javascript:;" id="group" data-type="select" data-pk="1" data-value="5" data-source="/groups" data-original-title="Select group"> Admin </a>
                            </td>
                            <td>
                                <span class="text-muted"> Select, loaded from server.
                                    <strong>No buttons</strong> mode </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Status </td>
                            <td>
                                <a href="javascript:;" id="status" data-type="select" data-pk="1" data-value="0" data-source="/status" data-original-title="Select status"> Active </a>
                            </td>
                            <td>
                                <span class="text-muted"> Error when loading list items </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Plan vacation? </td>
                            <td>
                                <a href="javascript:;" id="vacation" data-type="date" data-viewformat="dd.mm.yyyy" data-pk="1" data-placement="right" data-original-title="When you want vacation to start?"> 25.02.2013 </a>
                            </td>
                            <td>
                                <span class="text-muted"> Datepicker </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Date of birth </td>
                            <td>
                                <a href="javascript:;" id="dob" data-type="combodate" data-value="1984-05-15" data-format="YYYY-MM-DD" data-viewformat="DD/MM/YYYY" data-template="D / MMM / YYYY" data-pk="1" data-original-title="Select Date of birth">
                                </a>
                            </td>
                            <td>
                                <span class="text-muted"> Date field (combodate) </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Setup event </td>
                            <td>
                                <a href="javascript:;" id="event" data-type="combodate" data-template="D MMM YYYY HH:mm" data-format="YYYY-MM-DD HH:mm" data-viewformat="MMM D, YYYY, HH:mm" data-pk="1" data-original-title="Setup event date and time">
                                </a>
                            </td>
                            <td>
                                <span class="text-muted"> Datetime field (combodate) </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Meeting start </td>
                            <td>
                                <a href="javascript:;" id="meeting_start" data-type="datetime" data-pk="1" data-url="/post" data-placement="right" title="Set date & time"> 15/03/2013 12:45 </a>
                            </td>
                            <td>
                                <span class="text-muted"> Bootstrap datetime </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Comments </td>
                            <td>
                                <a href="javascript:;" id="comments" data-type="textarea" data-pk="1" data-placeholder="Your comments here..." data-original-title="Enter comments">awesome
                                    <br> user!</a>
                            </td>
                            <td>
                                <span class="text-muted"> Textarea. Buttons below. Submit by
                                    <i>ctrl+enter</i>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Type State </td>
                            <td>
                                <a href="javascript:;" id="state" data-type="typeahead" data-pk="1" data-placement="right" data-original-title="Start typing State.."> </a>
                            </td>
                            <td>
                                <span class="text-muted"> Bootstrap 2.x typeahead </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Fresh fruits </td>
                            <td>
                                <a href="javascript:;" id="fruits" data-type="checklist" data-value="2,3" data-original-title="Select fruits"> </a>
                            </td>
                            <td>
                                <span class="text-muted"> Checklist </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Tags </td>
                            <td>
                                <a href="javascript:;" id="tags" data-type="select2" data-pk="1" data-original-title="Enter tags"> html, javascript </a>
                            </td>
                            <td>
                                <span class="text-muted"> Select2 (tags mode) </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Country </td>
                            <td>
                                <a href="javascript:;" id="country" data-type="select2" data-pk="1" data-value="BS" data-original-title="Select country"> </a>
                            </td>
                            <td>
                                <span class="text-muted"> Select2 (dropdown mode) </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Address </td>
                            <td>
                                <a href="javascript:;" id="address" data-type="address" data-pk="1" data-original-title="Please, fill address"> </a>
                            </td>
                            <td>
                                <span class="text-muted"> Your custom input, several fields </span>
                            </td>
                        </tr>
                        <tr>
                            <td> Notes </td>
                            <td>
                                <div id="note" data-pk="1" data-type="wysihtml5" data-toggle="manual" data-original-title="Enter notes">
                                    <h3>WYSIWYG</h3> WYSIWYG means
                                    <i>What You See Is What You Get</i>.
                                    <br> But may also refer to:
                                    <ul>
                                        <li> WYSIWYG (album), a 2000 album by Chumbawamba </li>
                                        <li> "Whatcha See is Whatcha Get", a 1971 song by The Dramatics </li>
                                        <li> WYSIWYG Film Festival, an annual Christian film festival </li>
                                    </ul>
                                    <i>Source:</i>
                                    <a href="http://en.wikipedia.org/wiki/WYSIWYG_%28disambiguation%29"> wikipedia.org </a>
                                </div>
                            </td>
                            <td>
                                <a href="javascript:;" id="pencil">
                                    <i class="fa fa-pencil"></i> [edit] </a>
                                <br>
                                <span class="text-muted"> Wysihtml5 (bootstrap only).
                                    <br> Toggle by another element </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3>Console
                    <small>(all ajax requests here are emulated)</small>
                </h3>
                <div>
                    <textarea id="console" rows="8" style="width: 70%" class="form-control"></textarea>
                </div>
            </div>
        </div>
    </div>
</div>

<lambo:script path="global/plugins/select2/js/select2.full.js,
					global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js,
					global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js,
					global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js,
					global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js,
					global/plugins/moment.min.js,
					global/plugins/jquery.mockjax.js,
					global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js,
					global/plugins/bootstrap-editable/inputs-ext/address/address.js,
					global/plugins/bootstrap-editable/inputs-ext/wysihtml5/wysihtml5.js,
					global/plugins/bootstrap-typeahead/bootstrap3-typeahead.min.js" />

<lambo:script path="pages/scripts/form-editable-inline.js" />
</body>