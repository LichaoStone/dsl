<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Editable datatables</title>
</head>
<body>
<lambo:link path="global/plugins/datatables/datatables.css,
				  global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Editable Datatables
    <small>可编辑datatables例子</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：可以编辑的datatables
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
				<a target="_blank" href = "/theme/assets/pages/scripts/table-datatables-editable.js">
							pages/scripts/table-datatables-editable.js
				</a><br>
		    </p><br>	    
		    <p> 更多资料：
		        <a href="http://datatables.net/extensions/colreorder/" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-settings font-red"></i>
                    <span class="caption-subject font-red sbold uppercase">Editable Table</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                        <label class="btn btn-transparent red btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="btn-group">
                                <button id="sample_editable_1_new" class="btn green"> Add New
                                    <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="btn-group pull-right">
                                <button class="btn green btn-outline dropdown-toggle" data-toggle="dropdown">Tools
                                    <i class="fa fa-angle-down"></i>
                                </button>
                                <ul class="dropdown-menu pull-right">
                                    <li>
                                        <a href="javascript:;"> Print </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;"> Save as PDF </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;"> Export to Excel </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                    <thead>
                        <tr>
                            <th> Username </th>
                            <th> Full Name </th>
                            <th> Points </th>
                            <th> Notes </th>
                            <th> Edit </th>
                            <th> Delete </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> alex </td>
                            <td> Alex Nilson </td>
                            <td> 1234 </td>
                            <td class="center"> power user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
                            </td>
                        </tr>
                        <tr>
                            <td> lisa </td>
                            <td> Lisa Wong </td>
                            <td> 434 </td>
                            <td class="center"> new user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
                            </td>
                        </tr>
                        <tr>
                            <td> nick12 </td>
                            <td> Nick Roberts </td>
                            <td> 232 </td>
                            <td class="center"> power user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
                            </td>
                        </tr>
                        <tr>
                            <td> goldweb </td>
                            <td> Sergio Jackson </td>
                            <td> 132 </td>
                            <td class="center"> elite user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
                            </td>
                        </tr>
                        <tr>
                            <td> alex </td>
                            <td> Alex Nilson </td>
                            <td> 1234 </td>
                            <td class="center"> power user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
                            </td>
                        </tr>
                        <tr>
                            <td> webriver </td>
                            <td> Antonio Sanches </td>
                            <td> 462 </td>
                            <td class="center"> new user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
                            </td>
                        </tr>
                        <tr>
                            <td> gist124 </td>
                            <td> Nick Roberts </td>
                            <td> 62 </td>
                            <td class="center"> new user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
                            </td>
                        </tr>
                        <tr>
                            <td> alex </td>
                            <td> Alex Nilson </td>
                            <td> 1234 </td>
                            <td class="center"> power user </td>
                            <td>
                                <a class="edit" href="javascript:;"> Edit </a>
                            </td>
                            <td>
                                <a class="delete" href="javascript:;"> Delete </a>
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
					pages/scripts/table-datatables-editable.js" />
</body>