<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>批量插入</title>

<script>
	$(document).ready(function(){
		$("#batchInsertBtn").on("click",function(){
			var parms = $("#test-form").serializeArray();
			App.blockUI({
                boxed: true,
                message:"正在执行插入，请稍候..."
            });
			$.post("${ctx}/demo/advance/batchInsert",parms,function(data){
				App.unblockUI();
				alert(data);
			},"text")
		})
	})
</script>
</head>
<body>
<h3 class="page-title">批量插入    <small>大量数据批量插入演示demo</small></h3>
<div class="note note-info">
    <p>此demo用于测试大量数据批量插入时在不同方法下的执行效率</p>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-green-sharp">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject bold uppercase">模拟大数据量数据插入数据库</span>
                </div>
            </div>
            <div class="portlet-body">
            	<form action="#" id="test-form" class="form-horizontal" method="post" >
	            	<div class="form-body">
	            		<div class="form-group">
		                    <label class="control-label col-md-3">数据量
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="dataSize" id="dataSize" class="form-control" value="10000">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">插入方式
		                    </label>
		                    <div class="col-md-4">
		                        <select name="type" class="form-control">
		                        	<option value="1">方式1(不推荐)</option>
		                        	<option value="2">方式2(推荐)</option>
		                        </select>
		                    </div>
		                </div>
		                <hr/>
	            		<div class="form-group">
		                    <label class="control-label col-md-3">列0
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column0" id="column1" class="form-control" value="aaaaaaaaaaaaa">
		                    </div>
		                </div>
		            	<div class="form-group">
		                    <label class="control-label col-md-3">列1
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column1" id="column1" class="form-control" value="bbbbbbbbbbbbbb">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列2
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column2" id="column1" class="form-control" value="cccccccccccccc">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列3
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column3" id="column1" class="form-control" value="dddddddddddddd">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列4
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column4" id="column1" class="form-control" value="eeeeeeeeeeeeee">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列5
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column5" id="column1" class="form-control" value="ffffffffffffff">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列6
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column6" id="column1" class="form-control" value="ggggggggggggggg">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列7
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column7" id="column1" class="form-control" value="hhhhhhhhhhhhhh">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列8
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column8" id="column1" class="form-control" value="iiiiiiiiiiiiii">
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label class="control-label col-md-3">列9
		                    </label>
		                    <div class="col-md-4">
		                        <input type="text" name="column9" id="column1" class="form-control" value="jjjjjjjjjjjjjj">
		                    </div>
		                </div>
	            	</div>
	            	<div class="form-actions">
	            		<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button id="batchInsertBtn" type="button" class="btn btn-primary">执行批量插入</button>
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