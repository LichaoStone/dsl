<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>通用帮助</title>

<lambo:link path="global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css"/>
<lambo:link path="global/plugins/bootstrap-modal/css/bootstrap-modal.css"/>
<lambo:link path="global/plugins/commonhelp/css/help.css"/>

<lambo:script path="global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"/>
<lambo:script path="global/plugins/bootstrap-modal/js/bootstrap-modal.js"/>
<lambo:script path="global/plugins/commonhelp/help.js"/>


<script>
$(document).ready(function(){
	$("#test1").commonHelp({
		helpId:"SYS_USER_HELP",
		resultInput:"#result1",
		helpWhere:"WHERE=1=1",
		multiSelect:false
	});
	
	$("#test2").commonHelp({
		helpId:"SYS_USER_HELP",
		resultInput:"#result2",
		helpWhere:"WHERE=1=1",
		multiSelect:true
	});
	
	$("#test3").commonHelp({
		helpId:"SYS_USER_HELP",
		resultInput:"#result3",
		helpWhere:"WHERE=1=1",
		multiSelect:true
	});
	
	$("#test4").commonHelp({
		helpId:"SYS_USER_HELP",
		resultInput:"#result4",
		helpWhere:"WHERE=1=1",
		multiSelect:true,
		callBack:function(resultArr){
			if(resultArr.length >0){
				for(var i=0;i<resultArr.length;i++){
					alert(resultArr[i].USERID+"----"+resultArr[i].USERNAME)
				}
			}
		}
	});
})
</script>
</head>
<body>
<h3 class="page-title">通用帮助    <small>原V6通用帮助框</small></h3>
<div class="note note-info">
    <p>借助PUB_COMMON_HELP表，通用帮助框实现了通过配置就可以生成一个条目（客户、商品等）选择的通用组件。用户在查找条目时，通用帮助框提供了两种交互方式：联想查找方式和全记录分页查找方式，用户可以自主选择其习惯的方式</p>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-green-sharp">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject bold uppercase">单选</span>
                </div>
            </div>
            <div class="portlet-body">
              	<div id="test1" class="input-group helpbox">
                     <input type="text" class="form-control text" value="">
                     <input id="result1" type="hidden" value="" />
                </div>
		     	
            </div>
        </div>
	</div>
	
	<div class="col-md-12">
		<div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-green-sharp">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject bold uppercase">复选</span>
                </div>
            </div>
            <div class="portlet-body">
              	<div id="test2" class="input-group helpbox">
                     <input type="text" class="form-control text" value="">
                     <input id="result2" type="hidden" value="" />
                </div>
            </div>
        </div>
	</div>
	
	<div class="col-md-12">
		<div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-green-sharp">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject bold uppercase">初始有默认值</span>
                </div>
            </div>
            <div class="portlet-body">
              	<div id="test3" class="input-group helpbox">
                     <input type="text" class="form-control text" value="">
                     <input id="result3" type="hidden" value="admin,sunzhen" />
                </div>
            </div>
        </div>
	</div>
	
	<div class="col-md-12">
		<div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-green-sharp">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject bold uppercase">有回调函数</span>
                </div>
            </div>
            <div class="portlet-body">
              	<div id="test4" class="input-group helpbox">
                     <input type="text" class="form-control text" value="">
                     <input id="result4" type="hidden" value="" />
                </div>
            </div>
        </div>
	</div>
</div>
</body>
</html>