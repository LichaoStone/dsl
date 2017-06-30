<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<style>
td.details-control {
	text-align: center;
}

td.details-control i {
	font-size: 18px;
	cursor: pointer;
}
</style>

<script>
	/* Formatting function for row details - modify as you need */
	function format ( d ) {
	    // `d` is the original data object for the row
	    return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
	        '<tr>'+
	            '<td>全名:</td>'+
	            '<td>'+d.USER_NAME+'</td>'+
	        '</tr>'+
	        '<tr>'+
	            '<td>公司名:</td>'+
	            '<td>'+d.COM_NAME+'</td>'+
	        '</tr>'+
	        '<tr>'+
	            '<td>扩展信息:</td>'+
	            '<td>其他的扩展信息...</td>'+
	        '</tr>'+
	    '</table>';
	}
	 
	$(document).ready(function() {
	    var table = $('#example').DataTable( {
	        "ajax": "/lambo/demo/basic/getTestDataList",
	        "columns": [
	            {
	                "class":          'details-control',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<i class=\"fa fa-expand-o\"></i>'
	            },
	            { "data": "USER_ID" },
	            { "data": "USER_NAME" },
	            { "data": "COM_NAME" },
	            { "data": "DPT_NAME" },
	            { "data": "CREATE_TIME" }
	        ],
	        "order": [[1, 'asc']]
	    } );
	     
	    // Add event listener for opening and closing details
	    $('#example tbody').on('click', 'td.details-control', function () {
	        var tr = $(this).closest('tr');
	        var row = table.row( tr );
	 
	        if ( row.child.isShown() ) {
	            // This row is already open - close it
	            row.child.hide();
	            $(this).html("<i class=\"fa fa-expand-o\"></i>");
	        }
	        else {
	            // Open this row
	            row.child( format(row.data()) ).show();
	            $(this).html("<i class=\"fa fa-collapse-o\"></i>");
	        }
	    } );
	} );

</script>
<div id="content-header">
<h1>tablesAdvanced9</h1>
</div>
<div id="content-container">
<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3>简单前端分页表格</h3>
</div>
<!-- /.portlet-header -->
<div class="portlet-content">
<table width="100%"
	class="table table-striped table-bordered table-hover table-highlight"
	id="example" cellspacing="0">
	<thead>
		<tr>
			<th></th>
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
