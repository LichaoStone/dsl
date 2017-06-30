<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>商品管理</title>


<lambo:link
	path="global/plugins/datatables/datatables.css,
global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css,
global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css" />


<lambo:script
	path="global/scripts/datatable.js,
global/plugins/datatables/datatables.js,
global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" />

<script>
	$(document).ready(function() {
		
		
		var api = $('#itemTable').DataTable({
			"ajax" : "${ctx}/demo/metronic/rtItemTestData",
			"scrollY" :"400px",
			"scrollCollapse" : "true",
			"lengthMenu":[25, 50, 100],
			columns : [ {
				data : 'number'
			}, {
				data : 'designation'
			}, {
				data : 'articleNumber'
			}, {
				data : 'barcode'
			}, {
				data : 'classification'
			}, {
				data : 'quantity'
			}, {
				data : 'unit'
			}, {
				data : 'unitPrice'
			}, {
				data : 'latestPrice'
			}, {
				data : 'discount'
			}, {
				data : 'productionDate'
			}, {
				data : 'validity'
			} ]
		});
		
		api.on("draw.DT",function(){
			
			var $table = $(api.table().container());
			var $scrollBody = $table.find(".dataTables_scrollBody");
			var $footbar = $table.find(".footbar");
			var scrollBodyTop = $scrollBody.offset().top;
			var screenHeight = $(window).height();
			var screenBodyHeight = screenHeight - scrollBodyTop - $footbar.height();
			$scrollBody.css("max-height",screenBodyHeight);
			$footbar.width($scrollBody.width());
		})

	});
</script>
<style>
.page-content {
	padding-top: 25px !important;
	padding-left: 0 !important;
	padding-right: 0 !important;
}

.page-bar {
	margin-left: 0 !important;
	margin-right: 0 !important;
}

.dataTables_wrapper .headbar {
	margin-left: 0 !important;
	margin-right: 0 !important;
}

.dataTables_wrapper .footbar {
	width: 50%;
	position: fixed;
	bottom: 0px;
	background: rgba(237, 240, 244, 1);
	margin-left: 0;
	margin-right: 0;
}

.table-scrollable {
	border: none !important;
}

.footbar .dataTables_info {
	margin-top: 2px;
}

.footbar .dataTables_length {
	margin-top: 5px;
}
</style>
</head>

<body>
<div class="row margin-top-20"
	style="margin-left: 0px; margin-right: 0px;">
<div class="col-md-3">
<div class="btn-group pull-left">
<button type="button" class="btn btn-default">新增</button>
<button type="button" class="btn btn-default">导入</button>
<button type="button" class="btn btn-default">导出</button>
<button type="button" class="btn btn-default">单位</button>
</div>
</div>
<div class="col-md-9 text-align-reverse"><select id="growl_type"
	class="form-control input-medium input-inline">
	<option value="info">Info</option>
	<option value="danger">Danger</option>
	<option value="success">Success</option>
	<option value="warning">Warning</option>
</select> <input type="text" placeholder="名称 / 货号 / 条码"
	class="form-control input-medium input-inline">
<button type="button" class="btn btn-default">查询</button>
</div>
</div>
<table id="itemTable"
	class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th rowspan="1" colspan="1" style="width: 60px;">序号</th>
			<th rowspan="1" colspan="1" style="width: 200px;">名称</th>
			<th rowspan="1" colspan="1" style="width: 80px;">货号</th>
			<th rowspan="1" colspan="1" style="width: 120px;">条码</th>
			<th rowspan="1" colspan="1" style="width: 100px;">商品分类</th>
			<th rowspan="1" colspan="1" style="width: 90px;">库存数量</th>
			<th rowspan="1" colspan="1" style="width: 90px;">单位</th>
			<th rowspan="1" colspan="1" style="width: 90px;">成本单价</th>
			<th rowspan="1" colspan="1" style="width: 90px;">最新售价</th>
			<th rowspan="1" colspan="1" style="width: 90px;">商品折扣</th>
			<th rowspan="1" colspan="1" style="width: 90px;">生产日期</th>
			<th rowspan="1" colspan="1" style="width: 90px;">有效期</th>
		</tr>
	</thead>
	<tbody></tbody>
</table>

</body>
</html>
