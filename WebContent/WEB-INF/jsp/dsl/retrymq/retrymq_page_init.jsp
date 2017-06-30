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
<title>MQ同步失败查询</title>
<!-- 时间 -->
<lambo:link path="global/plugins/bootstrap-daterangepicker/daterangepicker.css,
					global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css,
					global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css,
					global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css,
					global/plugins/clockface/css/clockface.css" />
<lambo:script path="global/plugins/moment.min.js,
					global/plugins/bootstrap-daterangepicker/daterangepicker.js,
					global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js,
					global/scripts/datatable.js,
					global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js,
					global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js,
					global/plugins/clockface/js/clockface.js" />
<lambo:script path="pages/scripts/components-date-time-pickers.js" />
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
			"url":"/dsl/dsl/retrymq/getMqErrorList",
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
		    {"data":"MSG_ID","className":"text-align-center"},
		    {"data":"MSG_TYPE"},
		    {"data":"LOG_CREATE_TIME"},
		    {"data":"LOG_RESULT"},
		    {"data":"PRO_NODE"},
		    {"data":"PRO_NODE"}
		],
		"columnDefs": [{
	          "targets": [0],
	          "data": "USERID",
	          "orderable":false,
	          "render": function ( data, type, full ) {
	            return "<input type='radio' name='msg_id' class='icheck' id='"+data+"' value='"+data+"'/>";
	          }
	    }]
	});

	
	/* 监听datatable的重绘事件，使用icheck美化表格里的radio、checkbox*/
	$("#user-query-table").on("draw.dt",function(){
		App.initiCheck($(this));
	})
	
	
	/*重试按钮*/
	$("#retryBtn").click(function(){
		var beginDate=$("#beginDate").val();
		var endDate=$("#endDate").val();
		
		if(beginDate==null||beginDate==""||beginDate==undefined){
			toastr["warning"]("", "开始时间不能为空");
		}
		if(endDate==null||endDate==""||endDate==undefined){
			toastr["warning"]("", "结束时间不能为空");
		}
		
		var msg_id=$("[name='msg_id']:checked").val();
        
		if(msg_id){
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
	$("#queryBtn").on("click",function(){
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
						<i class="icon-social-dribbble font-green"></i>
						<span class="caption-subject font-green bold uppercase">MQ同步失败查询</span>
					</div>
					<c:if test="${lambofn:urlHasPermit('dsl/retrymq/retry')}">
						<button id="retryBtn" class="btn btn-primary pull-right" type="button">重试</button>
					</c:if>
				</div>
				<div>
                     <div class="portlet-body">
						<div class="col-md-4">
                         <div class="input-group input-large date-picker input-daterange" data-date="20120101" data-date-format="yyyymmdd">
                                <input type="text" class="form-control" name="from" id="beginDate">
                                <span class="input-group-addon"> to </span>
                                <input type="text" class="form-control" name="to" id="endDate">
                          </div>
						 
                     </div>
					    <button id="queryBtn" class="btn btn-default" type="submit"><i class="fa fa-search"></i>查询</button>
					</div>
					<table id="user-query-table" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
					    <thead>
					        <tr>
					        	<th>选择</th>
					        	<th>表名</th>
					            <th>日志创建时间</th>
					            <th>日志详细信息</th>								                                   
					            <th>处理结果</th>
					            <th>日志对应环节</th>
					        </tr>
					    </thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>