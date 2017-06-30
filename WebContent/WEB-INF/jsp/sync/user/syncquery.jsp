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
<title>统一用户认证管理平台用户信息</title>
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

<!-- 通用帮助框 -->
<lambo:link path="global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css"/>
<lambo:link path="global/plugins/bootstrap-modal/css/bootstrap-modal.css"/>
<lambo:link path="global/plugins/commonhelp/css/help.css"/>

<lambo:script path="global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"/>
<lambo:script path="global/plugins/bootstrap-modal/js/bootstrap-modal.js"/>
<lambo:script path="global/plugins/commonhelp/help.js"/>

<script>
$(document).ready(function(){

    /*初始化表格**/
    var userTable = $("#user-query-table").DataTable({
        "processing":true,
        "serverSide":true,
        "ajax":{
            "url":"${ctx}/sync/user/getUserList",
            "type":"post",
            "data": function ( parms ) {
                parms.userName = $('[name="userName"]').val();
                parms.deptName = $('[name="deptName"]').val();
            },
            "dataSrc":function(json){
                return json.datas;
            }
        },
        "columns":[
            {"data":"USER_ID","className":"text-align-center"},
            {"data":"USER_ID"},
            {"data":"USER_NAME"},
            {"data":"DPT_ID"},
            {"data":"DPT_NAME"},
            {"data":"MOBILE_TEL"},
            {"data":"ID_CARD"},
            {"data":"ACCOUNT_DISABLED"}
        ],
        "columnDefs": [{
              "targets": [0],
              "data": "USER_ID",
              "orderable":false,
              "render": function ( data, type, full ) {
                return "<input type='radio' name='USER_ID' class='icheck' id='"+data+"' value='"+data+"'/>";
              }
        }]
    });

    
    /* 监听datatable的重绘事件，使用icheck美化表格里的radio、checkbox*/
    $("#user-query-table").on("draw.dt",function(){
        App.initiCheck($(this));
    })
    
    /*查询按钮*/
    $("#queryBtn").on("click",function(){
        userTable.ajax.reload();
    })
    
    /*信息提示*/
    var message = $("#message").val();
    if(message!=""){
        toastr["success"]("", message);
    }
    
    /*同步按钮*/
    $("#syncBtn").on("click",function(){
    	var paramDate = $("#start-time").val();
    	if (paramDate == "") {
    		alert("请在左侧日期框中选择同步起始时间");
    		return false;
    	}
    	
    	var day = paramDate.substring(0,2);
    	var month = monthChange(paramDate);
    	var year = yearChange(paramDate);
    	var hour = hourChange(paramDate);
        var minute = minuteChange(paramDate);
        var paramDate = year + month + day + hour + minute;
        
        $.ajax({
            "url": "${ctx}/sync/user/getUserSyncInfo1?paramDate="+paramDate,
            "type": "post",
            "dataType":"json",
            "success": function(json){
                var ret = json.retStr;
                if (ret == "success") {
                    alert("同步信息成功");
                } else if (ret == "notsync") {
                    alert("信息未同步");
                } else {
                    alert("同步信息失败");
                }
            },
            "error": function(data){
                alert("同步信息失败");
            }
        });
    })

});

function monthChange(paramDate) {
	var month= "";
	var monthText = paramDate.substring(3,4);
	if (monthText == "十") {
		if (paramDate.substring(4,5) != "月") {
			monthText = paramDate.substring(3,5);
		}
	}
	switch ($.trim(monthText)) {
        case "一":
            month="01";
		    break;
		case "二":
            month="02";
            break;
        case "三":
            month="03";
            break;
        case "四":
            month="04";
            break;
        case "五":
            month="05";
            break;
        case "六":
            month="06";
            break;
        case "七":
            month="07";
            break;
        case '八':
            month="08";
            break;  
        case "九":
            month="09";
            break; 
        case "十":
            month="10";
            break;  
        case "十一":
            month="11";
            break;    
        case "十二":
            month="12";
            break;
	}
	return month;
}

function yearChange(paramDate) {
	var year="";
    var monthText = paramDate.substring(3,4);
    if (monthText == "十") {
        if (paramDate.substring(4,5) != "月") {
        	year = paramDate.substring(7,11);
        } else {
        	year = paramDate.substring(6,10);
        }
    } else {
    	year = paramDate.substring(6,10);
    }
    return year;
}

function hourChange(paramDate) {
    var hour="";
    var monthText = paramDate.substring(3,4);
    if (monthText == "十") {
        if (paramDate.substring(4,5) != "月") {
            hour = paramDate.substring(14,16);
        } else {
        	hour = paramDate.substring(13,15);
        }
    } else {
    	hour = paramDate.substring(13,15);
    }
    return hour;
}
function minuteChange(paramDate) {
    var minute="";
    var monthText = paramDate.substring(3,4);
    if (monthText == "十") {
        if (paramDate.substring(4,5) != "月") {
        	minute = paramDate.substring(17,19);
        } else {
        	minute = paramDate.substring(16,18);
        }
    } else {
    	minute = paramDate.substring(16,18);
    }
    return minute;
}
</script>
<style>
.search-box{
    margin-top:3px;
    width:600px;
    height:35px;
    float:left;
}
.button-box{
    width:70px;
    height:35px;
    float:left;
}
#time-select{
    width:1000px;
    height:32px;
    margin-right:100px;
    border:1px solid #000;
}
.main-title{
    width:300px;
    float:left;
}
.time-select{
    width:200px;
    margin-left:40%;
    float:left;
}
.button-area{
    width:60px;
    height:35px;
    float:left;
}
</style>
</head>
<body>
    <input type="hidden" id="message" value="${message}" />
    
    <div class="row margin-top-20">
        <div class="col-md-12">
            <div class="portlet light bordered">
                <div class="portlet-title">
                    <div class="main-title caption font-dark">
                        <i class="icon-social-dribbble font-green"></i>
                        <span class="caption-subject font-green bold uppercase">统一用户认证管理平台用户信息查询</span>
                    </div>
                    <div class="time-select input-group date form_datetime">
                        <input type="text" size="16" readonly class="form-control" id="start-time" name="start-time">
                        <span class="input-group-btn">
                            <button class="btn default date-set" type="button">
                                <i class="fa fa-calendar"></i>
                            </button>
                        </span>
                    </div>
                    <div class="button-area">
                        <button id="syncBtn" class="btn btn-primary pull-right" type="button">同步</button>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="search-box">
                        <span>员工姓名：</span><input type="text" name="userName" id="userName">
                        <span>&nbsp;&nbsp;部门名称：</span><input type="text" name="deptName" id="deptName">
                    </div>
                    <div class="button-box">
                        <button id="queryBtn" class="btn btn-default" type="submit"><i class="fa fa-search"></i>查询</button>
                    </div>
                    
                </div>
                    <table id="user-query-table" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>选择</th>
                                <th>员工编号</th>
                                <th>姓名</th>
                                <th>当前部门ID</th>
                                <th>当前部门名称</th>
                                <th>移动电话</th>
                                <th>身份证号</th>
                                <th>用户禁用标识</th>
                            </tr>
                        </thead>
                    </table>
            </div>
        </div>
    </div>
</body>
</html>