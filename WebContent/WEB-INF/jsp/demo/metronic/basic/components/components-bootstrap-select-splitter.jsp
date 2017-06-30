<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>select分流</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Select Splitter
    <small>bootstrap select splitter</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：下拉选择分流
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-selectsplitter/bootstrap-selectsplitter.js" target="_blank">
					global/plugins/bootstrap-selectsplitter/bootstrap-selectsplitter.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-bootstrap-select-splitter.js" target="_blank">
					pages/scripts/components-bootstrap-select-splitter.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://github.com/xavierfaucon/bootstrap-selectsplitter" target="_blank">官方文档</a>
		    </p><br>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">       
        <!-- BEGIN PORTLET-->
        <div class="portlet light bordered form-fit">
            <div class="portlet-title">
                <div class="caption font-green-sharp">
                    <i class="icon-speech font-green-sharp"></i>
                    <span class="caption-subject bold uppercase"> Bootstrap Select Splitter</span>
                    <span class="caption-helper"></span>
                </div>
                <div class="actions">
                    <a href="javascript:;" class="btn btn-circle btn-default btn-sm">
                        <i class="fa fa-pencil"></i> Edit </a>
                    <a href="javascript:;" class="btn btn-circle btn-default btn-sm">
                        <i class="fa fa-plus"></i> Add </a>
                    <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                        <i class="icon-wrench"></i>
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <form action="#" id="form-username" class="form-horizontal form-bordered">
                    <div class="form-group">
                        <label class="col-md-3 control-label">Demo 1</label>
                        <div class="col-md-9">
                            <select id="select_selectsplitter1" class="form-control" size="4">
                                <optgroup label="Category 1">
                                    <option value="1">Option 1</option>
                                    <option value="2">Option 2</option>
                                    <option value="3">Option 3</option>
                                    <option value="4">Option 4</option>
                                    <option value="5">Option 5</option>
                                    <option value="6">Option 6</option>
                                    <option value="7">Option 7</option>
                                    <option value="8">Option 8</option>
                                </optgroup>
                                <optgroup label="Category 2">
                                    <option value="9">Option 9</option>
                                    <option value="10">Option 10</option>
                                    <option value="11">Option 11</option>
                                    <option value="12">Option 12</option>
                                    <option value="13">Option 13</option>
                                    <option value="14">Option 14</option>
                                    <option value="15">Option 15</option>
                                    <option value="16">Option 16</option>
                                </optgroup>
                                <optgroup label="Category 3">
                                    <option value="17">Option 17</option>
                                    <option value="18">Option 18</option>
                                    <option value="19">Option 19</option>
                                    <option value="20">Option 20</option>
                                    <option value="21">Option 21</option>
                                </optgroup>
                            </select>
                            <p class="help-block"> click on the main option to list its child items </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Demo 2</label>
                        <div class="col-md-9">
                            <select id="select_selectsplitter2" class="form-control">
                                <optgroup label="Category A">
                                    <option value="1">Choice 1</option>
                                    <option value="2">Choice 2</option>
                                    <option value="3">Choice 3</option>
                                    <option value="4">Choice 4</option>
                                    <option value="5">Choice 5</option>
                                    <option value="6">Choice 6</option>
                                    <option value="7">Choice 7</option>
                                    <option value="8">Choice 8</option>
                                </optgroup>
                                <optgroup label="Category B">
                                    <option value="9">Choice 9</option>
                                    <option value="10">Choice 10</option>
                                    <option value="11">Choice 11</option>
                                    <option value="12">Choice 12</option>
                                    <option value="13">Choice 13</option>
                                    <option value="14">Choice 14</option>
                                    <option value="15">Choice 15</option>
                                    <option value="16">Choice 16</option>
                                </optgroup>
                                <optgroup label="Category C">
                                    <option value="17">Choice 17</option>
                                    <option value="18">Choice 18</option>
                                    <option value="19">Choice 19</option>
                                    <option value="20">Choice 20</option>
                                </optgroup>
                            </select>
                            <p class="help-block"> click on the main option to list its child items </p>
                        </div>
                    </div>
                    <div class="form-group last">
                        <label class="col-md-3 control-label">Demo 3</label>
                        <div class="col-md-6">
                            <select id="select_selectsplitter3" class="form-control">
                                <optgroup label="Group 1">
                                    <option value="1">Item 1</option>
                                    <option value="2">Item 2</option>
                                    <option value="3">Item 3</option>
                                    <option value="4">Item 4</option>
                                    <option value="5">Item 5</option>
                                    <option value="6">Item 6</option>
                                    <option value="7">Item 7</option>
                                    <option value="8">Item 8</option>
                                </optgroup>
                                <optgroup label="Group 2">
                                    <option value="9">Item 9</option>
                                    <option value="10">Item 10</option>
                                    <option value="11">Item 11</option>
                                    <option value="12">Item 12</option>
                                    <option value="13">Item 13</option>
                                    <option value="14">Item 14</option>
                                    <option value="15">Item 15</option>
                                    <option value="16">Item 16</option>
                                </optgroup>
                                <optgroup label="Group 3">
                                    <option value="17">Item 17</option>
                                    <option value="18">Item 18</option>
                                    <option value="19">Item 19</option>
                                    <option value="20">Item 20</option>
                                </optgroup>
                                <optgroup label="Group 4">
                                    <option value="21">Item 21</option>
                                    <option value="22">Item 22</option>
                                    <option value="23">Item 23</option>
                                    <option value="24">Item 24</option>
                                    <option value="25">Item 25</option>
                                    <option value="26">Item 26</option>
                                    <option value="27">Item 27</option>
                                    <option value="28">Item 28</option>
                                </optgroup>
                            </select>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn green">
                                    <i class="fa fa-check"></i> Submit</button>
                                <button type="button" class="btn default">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/bootstrap-selectsplitter/bootstrap-selectsplitter.js,
					pages/scripts/components-bootstrap-select-splitter.js" />
</body>