<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Form icheck</title>
</head>
<body>
<lambo:link path="global/plugins/icheck/skins/all.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> iCheck Controls
    <small>icheck controls</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：<p>To use iCheck checkbox and radio controls just apply <code>icheck</code>
				class to any checkbox or radio input and set the control style and color
				<br>
				via HTML attributes <code>data-checkbox="icheckbox_minimal-grey"</code>
				or <code>data-radio="iradio_flat-grey"</code> and Metronic will take
				care of the plugin initialization.</p>
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/icheck/skins/all.css"  target="_blank">
					global/plugins/icheck/skins/all.css
				</a><br>
				<a href="/theme/assets/global/plugins/icheck/icheck.js"  target="_blank">
					global/plugins/icheck/icheck.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/form-icheck.js"  target="_blank">
					pages/scripts/form-icheck.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://fronteed.com/iCheck/" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="portlet light bordered">
                    <div class="portlet-title tabbable-line">
                        <div class="caption">
                            <i class="icon-globe font-green"></i>
                            <span class="caption-subject font-green bold uppercase">Default Form Layout</span>
                        </div>
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#portlet_tab_1_1" data-toggle="tab"> Minimal </a>
                            </li>
                            <li>
                                <a href="#portlet_tab_1_2" data-toggle="tab"> Square </a>
                            </li>
                            <li>
                                <a href="#portlet_tab_1_3" data-toggle="tab"> Flat </a>
                            </li>
                            <li>
                                <a href="#portlet_tab_1_4" data-toggle="tab"> Line </a>
                            </li>
                        </ul>
                    </div>
                    <div class="portlet-body form">
                        <div class="tab-content">
                            <div class="tab-pane active" id="portlet_tab_1_1">
                                <div class="skin skin-minimal">
                                    <form role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label>Colors Schemes</label>
                                                <div class="input-group">
                                                    <ul class="icheck-colors">
                                                        <li> </li>
                                                        <li class="red"> </li>
                                                        <li class="green"> </li>
                                                        <li class="blue"> </li>
                                                        <li class="aero"> </li>
                                                        <li class="grey active"> </li>
                                                        <li class="orange"> </li>
                                                        <li class="pink"> </li>
                                                        <li class="purple"> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Checkbox List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="checkbox" class="icheck"> Checkbox 1 </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck"> Checkbox 2 </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck"> Checkbox 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Checkboxes</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="checkbox" class="icheck"> Checkbox 1 </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck"> Checkbox 2 </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck"> Checkbox 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Radio List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck"> Radio Button 1 </label>
                                                        <label>
                                                            <input type="radio" name="radio1" checked class="icheck"> Radio Button 2 </label>
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck"> Radio Button 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Radios</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck"> Radio Button 1 </label>
                                                        <label>
                                                            <input type="radio" name="radio2" checked class="icheck"> Radio Button 2 </label>
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck"> Radio Button 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn green">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="portlet_tab_1_2">
                                <div class="skin skin-square">
                                    <form role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label>Colors Schemes</label>
                                                <div class="input-group">
                                                    <ul class="icheck-colors">
                                                        <li> </li>
                                                        <li class="red"> </li>
                                                        <li class="green"> </li>
                                                        <li class="blue"> </li>
                                                        <li class="aero"> </li>
                                                        <li class="grey active"> </li>
                                                        <li class="orange"> </li>
                                                        <li class="pink"> </li>
                                                        <li class="purple"> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Checkbox List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 1 </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 2 </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Checkboxes</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 1 </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 2 </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Radio List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck" data-radio="iradio_square-grey"> Radio Button 1 </label>
                                                        <label>
                                                            <input type="radio" name="radio1" checked class="icheck" data-radio="iradio_square-grey"> Radio Button 2 </label>
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck" data-radio="iradio_square-grey"> Radio Button 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Radios</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck" data-radio="iradio_square-grey"> Radio Button 1 </label>
                                                        <label>
                                                            <input type="radio" name="radio2" checked class="icheck" data-radio="iradio_square-grey"> Radio Button 2 </label>
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck" data-radio="iradio_square-grey"> Radio Button 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn red">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="portlet_tab_1_3">
                                <div class="skin skin-flat">
                                    <form role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label>Colors Schemes</label>
                                                <div class="input-group">
                                                    <ul class="icheck-colors">
                                                        <li> </li>
                                                        <li class="red"> </li>
                                                        <li class="green"> </li>
                                                        <li class="blue"> </li>
                                                        <li class="aero"> </li>
                                                        <li class="grey active"> </li>
                                                        <li class="orange"> </li>
                                                        <li class="pink"> </li>
                                                        <li class="purple"> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Checkbox List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 1 </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 2 </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Checkboxes</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 1 </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 2 </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Radio List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck" data-radio="iradio_flat-grey"> Radio Button 1 </label>
                                                        <label>
                                                            <input type="radio" name="radio1" checked class="icheck" data-radio="iradio_flat-grey"> Radio Button 2 </label>
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck" data-radio="iradio_flat-grey"> Radio Button 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Radios</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck" data-radio="iradio_flat-grey"> Radio Button 1 </label>
                                                        <label>
                                                            <input type="radio" name="radio2" checked class="icheck" data-radio="iradio_flat-grey"> Radio Button 2 </label>
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck" data-radio="iradio_flat-grey"> Radio Button 3 </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn blue">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="portlet_tab_1_4">
                                <div class="skin skin-line">
                                    <form role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label>Colors Schemes</label>
                                                <div class="input-group">
                                                    <ul class="icheck-colors">
                                                        <li> </li>
                                                        <li class="red"> </li>
                                                        <li class="green"> </li>
                                                        <li class="blue"> </li>
                                                        <li class="aero"> </li>
                                                        <li class="grey active"> </li>
                                                        <li class="orange"> </li>
                                                        <li class="pink"> </li>
                                                        <li class="purple"> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Checkbox List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 1"> </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 2"> </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 3"> </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Checkboxes</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 1"> </label>
                                                        <label>
                                                            <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 2"> </label>
                                                        <label>
                                                            <input type="checkbox" class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 3"> </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Radio List</label>
                                                <div class="input-group">
                                                    <div class="icheck-list">
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 1 "> </label>
                                                        <label>
                                                            <input type="radio" name="radio1" checked class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 2"> </label>
                                                        <label>
                                                            <input type="radio" name="radio1" class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 3"> </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Radios</label>
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 1"> </label>
                                                        <label>
                                                            <input type="radio" name="radio2" checked class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 2"> </label>
                                                        <label>
                                                            <input type="radio" name="radio2" class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 3"> </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn blue">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="portlet light bordered">
                    <div class="portlet-title tabbable-line">
                        <div class="caption">
                            <i class="icon-globe font-red"></i>
                            <span class="caption-subject font-red bold uppercase">Horizontal Form Layout</span>
                        </div>
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#portlet_tab_2_1" data-toggle="tab"> Minimal </a>
                            </li>
                            <li>
                                <a href="#portlet_tab_2_2" data-toggle="tab"> Square </a>
                            </li>
                            <li>
                                <a href="#portlet_tab_2_3" data-toggle="tab"> Flat </a>
                            </li>
                            <li>
                                <a href="#portlet_tab_2_4" data-toggle="tab"> Line </a>
                            </li>
                        </ul>
                    </div>
                    <div class="portlet-body form">
                        <div class="tab-content">
                            <div class="tab-pane active" id="portlet_tab_2_1">
                                <div class="skin skin-minimal">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Colors Schemes </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <ul class="icheck-colors">
                                                            <li> </li>
                                                            <li class="red"> </li>
                                                            <li class="green"> </li>
                                                            <li class="blue"> </li>
                                                            <li class="aero"> </li>
                                                            <li class="grey active"> </li>
                                                            <li class="orange"> </li>
                                                            <li class="pink"> </li>
                                                            <li class="purple"> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Checkbox List </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="checkbox" class="icheck"> Checkbox 1 </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck"> Checkbox 2 </label>
                                                            <label>
                                                                <input type="checkbox" class="icheck"> Checkbox 3 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="checkbox" class="icheck"> Checkbox 1 </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck"> Checkbox 2 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Radio List</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck"> Radio Button 1 </label>
                                                            <label>
                                                                <input type="radio" name="radio1" checked class="icheck"> Radio Button 2 </label>
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck"> Radio Button 3 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline Radios</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="radio" name="radio2" class="icheck"> Radio Button 1 </label>
                                                            <label>
                                                                <input type="radio" name="radio2" checked class="icheck"> Radio Button 2 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn red">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="portlet_tab_2_2">
                                <div class="skin skin-square">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Colors Schemes </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <ul class="icheck-colors">
                                                            <li> </li>
                                                            <li class="red"> </li>
                                                            <li class="green"> </li>
                                                            <li class="blue"> </li>
                                                            <li class="aero"> </li>
                                                            <li class="grey active"> </li>
                                                            <li class="orange"> </li>
                                                            <li class="pink"> </li>
                                                            <li class="purple"> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Checkbox List </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 1 </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 2 </label>
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 3 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 1 </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_square-grey"> Checkbox 2 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Radio List</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck" data-radio="iradio_square-grey"> Radio Button 1 </label>
                                                            <label>
                                                                <input type="radio" name="radio1" checked class="icheck" data-radio="iradio_square-grey"> Radio Button 2 </label>
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck" data-radio="iradio_square-grey"> Radio Button 3 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline Radios</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="radio" name="radio2" class="icheck" data-radio="iradio_square-grey"> Radio Button 1 </label>
                                                            <label>
                                                                <input type="radio" name="radio2" checked class="icheck" data-radio="iradio_square-grey"> Radio Button 2 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn green">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="portlet_tab_2_3">
                                <div class="skin skin-flat">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Colors Schemes </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <ul class="icheck-colors">
                                                            <li> </li>
                                                            <li class="red"> </li>
                                                            <li class="green"> </li>
                                                            <li class="blue"> </li>
                                                            <li class="aero"> </li>
                                                            <li class="grey active"> </li>
                                                            <li class="orange"> </li>
                                                            <li class="pink"> </li>
                                                            <li class="purple"> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Checkbox List </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 1 </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 2 </label>
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 3 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 1 </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_flat-grey"> Checkbox 2 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Radio List</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck" data-radio="iradio_flat-grey"> Radio Button 1 </label>
                                                            <label>
                                                                <input type="radio" name="radio1" checked class="icheck" data-radio="iradio_flat-grey"> Radio Button 2 </label>
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck" data-radio="iradio_flat-grey"> Radio Button 3 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline Radios</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="radio" name="radio2" class="icheck" data-radio="iradio_flat-grey"> Radio Button 1 </label>
                                                            <label>
                                                                <input type="radio" name="radio2" checked class="icheck" data-radio="iradio_flat-grey"> Radio Button 2 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn red btn-outline">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="portlet_tab_2_4">
                                <div class="skin skin-line">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Colors Schemes </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <ul class="icheck-colors">
                                                            <li> </li>
                                                            <li class="red"> </li>
                                                            <li class="green"> </li>
                                                            <li class="blue"> </li>
                                                            <li class="aero"> </li>
                                                            <li class="grey active"> </li>
                                                            <li class="orange"> </li>
                                                            <li class="pink"> </li>
                                                            <li class="purple"> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"> Checkbox List </label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox Button 1"> </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox Button 2"> </label>
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox Button 3"> </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="checkbox" class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 1"> </label>
                                                            <label>
                                                                <input type="checkbox" checked class="icheck" data-checkbox="icheckbox_line-grey" data-label="Checkbox 2"> </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Radio List</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-list">
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 1"> </label>
                                                            <label>
                                                                <input type="radio" name="radio1" checked class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 2"> </label>
                                                            <label>
                                                                <input type="radio" name="radio1" class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 3"> </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Inline Radios</label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label>
                                                                <input type="radio" name="radio2" class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 1"> </label>
                                                            <label>
                                                                <input type="radio" name="radio2" checked class="icheck" data-radio="iradio_line-grey" data-label="Radio Button 2"> </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn purple">Submit</button>
                                            <button type="button" class="btn default">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<lambo:script path="global/plugins/icheck/icheck.js" />
<lambo:script path="pages/scripts/form-icheck.js" />
</body>