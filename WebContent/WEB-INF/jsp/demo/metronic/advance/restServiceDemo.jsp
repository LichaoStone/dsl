<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>通用帮助</title>

<script>
	$(document).ready(function(){
		$("#doPost").on("click",function(){
			var parms = $("#test-form").serializeArray();
			App.blockUI({
                boxed: true,
                message:"正在请求服务，请稍候..."
            });
			$.post("${ctx}/demo/advance/restDoPost",parms,function(data){
				App.unblockUI();
				alert(data.message);
			})
		})
	})
</script>
</head>
<body>
<h3 class="page-title">rest服务测试 </h3>
<div class="note note-info">
    <p>此demo用于测试rest服务的可用性</p>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-green-sharp">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject bold uppercase">测试rest服务</span>
                </div>
            </div>
            <div class="portlet-body">
            	<form action="#" id="test-form" class="form-horizontal" method="post" >
	            	<div class="form-body">
	            		<div class="form-group">
		                    <label class="control-label col-md-3">远程服务器名
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="servApp" id="servApp" class="form-control" value="lambo">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">访问方式
		                    </label>
		                    <div class="col-md-4">
		                        <select name="type" class="form-control">
		                        	<option value="session">session(当调用频次较高时使用)</option>
		                        	<option value="token">token(当调用频次较低时使用)</option>
		                        </select>
		                    </div>
		                </div>
	            		<div class="form-group">
		                    <label class="control-label col-md-3">rest服务URL
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="restUrl" id="restUrl" class="form-control" value="openApi/uc/user/getUserNameById">
		                    </div>
		                </div>
		            	<div class="form-group">
		                    <label class="control-label col-md-3">参数1
		                    </label>
		                    <div class="col-md-2">
		                        <input type="text" name="parm1" id="parm1" class="form-control" value="userId">
		                    </div>
		                    <div class="col-md-2">
		                        <input type="text" name="value1" id="value1" class="form-control" value="admin">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">参数2
		                    </label>
		                    <div class="col-md-2">
		                        <input type="text" name="parm2" id="parm1" class="form-control" value="">
		                    </div>
		                    <div class="col-md-2">
		                        <input type="text" name="value2" id="value1" class="form-control" value="">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">参数3
		                    </label>
		                    <div class="col-md-2">
		                        <input type="text" name="parm3" id="parm1" class="form-control" value="">
		                    </div>
		                    <div class="col-md-2">
		                        <input type="text" name="value3" id="value1" class="form-control" value="">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">参数4
		                    </label>
		                    <div class="col-md-2">
		                        <input type="text" name="parm4" id="parm1" class="form-control" value="">
		                    </div>
		                    <div class="col-md-2">
		                        <input type="text" name="value4" id="value1" class="form-control" value="">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">参数5
		                    </label>
		                    <div class="col-md-2">
		                        <input type="text" name="parm5" id="parm1" class="form-control" value="">
		                    </div>
		                    <div class="col-md-2">
		                        <input type="text" name="value5" id="value1" class="form-control" value="">
		                    </div>
		                </div>
	            	</div>
	            	<div class="form-actions">
	            		<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button id="doPost" type="button" class="btn btn-primary">调用服务</button>
							</div>
						</div>
	            	</div>
                </form>
            </div>
        </div>
	</div>
</div>
</body>
</html>