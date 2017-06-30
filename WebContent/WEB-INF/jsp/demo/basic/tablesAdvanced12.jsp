<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>b"%>
<style>
.table .checkbox-column {
	text-align: center;
}
</style>

<script>
$(document).ready(function() {
    $('#example').dataTable( {
        "processing": true,
        "serverSide": true,
        "ajax": {
            "url": "/lambo/demo/basic/getTestDataListPaging",
            "type": "POST",
            "dataSrc":function(json){
            	return json.datas;
            },
        },
        "columns": [
				{ "data": "USER_ID" },
	          	{ "data": "USER_ID" },
	            { "data": "USER_NAME" },
	            { "data": "COM_NAME" },
	            { "data": "DPT_NAME" },
	            { "data": "CREATE_TIME" }
	    ],
	    "columnDefs": [{
	          "targets": [0],
	          "data": "CUST_ID",
	          "class":"checkbox-column",
	          "searchable":false,
	          "orderable":false,
	          "render": function ( data, type, full ) {
	            return "<input type='radio' class='icheck-input' name='myCheckbox'  id='"+data+"' />";
	          }
	    }],
	    "order": [[ 1, "asc" ]]
    });
} );
</script>
<div id="content-header">
<h1>后端分页表格</h1>
</div>
<div id="content-container">
<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3>后端分页表格</h3>
</div>
<!-- /.portlet-header -->
<div class="portlet-content">
<table width="100%"
	class="table table-striped table-bordered table-hover" id="example"
	cellspacing="0">
	<thead>
		<tr>
			<th class="checkbox-column">选择</th>
			<th>用户ID</th>
			<th>用户名</th>
			<th>所属公司</th>
			<th>所属部门</th>
			<th>创建时间</th>
		</tr>
	</thead>
</table>
</div>
<!-- /.portlet-content --></div>
</div>
</div>
</div>
<!-- /#content-container -->
