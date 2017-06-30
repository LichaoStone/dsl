<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%> 
<%@ taglib uri="/lambo/fn" prefix="lambofn"%>
<!DOCTYPE html>
<html>
<head>
<title>用户列表</title>

<!-- 表格 -->
<lambo:link path="global/plugins/datatables/datatables.css,
global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css,"/>
<!-- checkbox、radio美化 -->
<lambo:link path="global/plugins/icheck/skins/all.css"/>
<!-- 信息提示-->
<lambo:link path="global/plugins/bootstrap-toastr/toastr.css"/>

<!-- 表格 -->
<lambo:script path="global/plugins/datatables/datatables.js,
global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"/>
<!-- checkbox、radio美化 -->
<lambo:script path="global/plugins/icheck/icheck.js"/>
<!-- 信息提示-->
<lambo:script path="global/plugins/bootstrap-toastr/toastr.js"/>

<script>
$(document).ready(function(){

	/*初始化表格**/
	var userTable = $("#user-query-table").DataTable({
		"processing":true,
		"serverSide":true,
		"ajax":{
			"url":"${ctx}/demo/actual/user/getUserListData",
			"type":"post",
			"data": function ( parms ) {
				parms.USERNAME = $('[name="USERNAME"]').val();
				parms.EMAIL = $('[name="EMAIL"]').val();
				parms.GROUPIN = $('[name="GROUPIN"]').val();
		    },
			"dataSrc":function(json){
				return json.datas;
			}
		},
		"columns":[
		    {"data":"USERID","className":"text-align-center"},
		    {"data":"USERID"},
		    {"data":"USERNAME"},
		    {"data":"GROUP_NAME"},
		    {"data":"EMAIL"},
		    {"data":"MOBILE"},
		    {"data":"QQ"}
		],
		"columnDefs": [{
	          "targets": [0],
	          "data": "USERID",
	          "orderable":false,
	          "render": function ( data, type, full ) {
	            return "<input type='radio' name='userSelect' class='icheck' id='"+data+"' value='"+data+"'/>";
	          }
	    }]
	});

	
	/* 监听datatable的重绘事件，使用icheck美化表格里的radio、checkbox*/
	$("#user-query-table").on("draw.dt",function(){
		App.initiCheck($(this));
	})
	
	/*新增按钮*/
	$("#forInsertBtn").click(function(){
		window.location.href="new";
	});
	
	/*修改按钮*/
	$("#forUpdateBtn").click(function(){
		var checkRadio = $("[name='userSelect']:checked");
		if(checkRadio.length>0){
			var userId =checkRadio.val();
			window.location.href="update?userId="+userId;
		}else{
			toastr["warning"]("", "请选择一条记录");
		}
	});
	
	/*删除按钮*/
	$("#deleteBtn").click(function(){
		var userId=$("[name='userSelect']:checked").val();
		if(userId){
			$.post("delete?userId="+userId,function(data){
				if(data=="success"){
					var $tr=$("#"+userId).closest("tr");
					userTable.row($tr).remove().draw();
					toastr["success"]("", "删除成功");
				}else{
					toastr["error"]("", "删除失败，请联系系统管理员");
				}
			},"text");
		}else{
			toastr["warning"]("", "请选择一条记录");
		}
	});
	
	/*查询按钮*/
	$("#userListQueryBtn").on("click",function(){
		userTable.ajax.reload();
	})
	
	/*信息提示*/
	var message = $("#message").val();
	if(message!=""){
		toastr["success"]("", message);
	}
	
});
</script>
</head>
<body>
	<input type="hidden" id="message" value="${message}" />
	<div class="row margin-top-20">
		<div class="col-md-12">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption font-dark">
						<i class="icon-settings font-dark"></i>
						<span class="caption-subject bold">用户列表</span>
					</div>
					<c:if test="${lambofn:urlHasPermit('uc/user/delete')}">
						<button id="deleteBtn" class="btn btn-primary pull-right" type="button">删除</button>
					</c:if>
					<button id="forUpdateBtn" class="btn btn-primary pull-right margin-right-10" type="button">修改</button>
					<button id="forInsertBtn" class="btn btn-primary pull-right margin-right-10" type="button">新增</button>
				</div>
				<div class="portlet-body">
					<div class="row">
						<div class="col-sm-3">
							<label>用户名称</label>
							<input name="USERNAME" class="form-control" type="text" value="${USERNAME}"/>
						</div>
						<div class="col-sm-3">
							<label>电子邮箱</label>
							<input name="EMAIL" class="form-control" type="text" value="${EMAIL}"/>
						</div>
						<div class="col-sm-3">
							<label for="GROUPIN">用户组</label>
			              	<select class="form-control" name="GROUPIN">
			              		<option value="">请选择</option>
				              	<c:forEach items="${groupEnum}" var="entry">
				              		<option value="${entry.key}" <c:if test="${entry.key == GROUP}">selected</c:if> >${entry.value}</option>
				              	</c:forEach>
			              	</select>
						</div>
						<div class="col-sm-3" style="padding-top:22px">
							<button id="userListQueryBtn" class="btn btn-default" type="submit"><i class="fa fa-search"></i> 查询</button>
						</div>
					</div>
					<table id="user-query-table" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
					    <thead>
					        <tr>
					        	<th>选择</th>
					        	<th>用户ID</th>
					            <th>用户名称</th>
					            <th>用户组</th>
					            <th>电子邮箱</th>
					            <th>移动电话</th>
					            <th>QQ</th>
					        </tr>
					    </thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>