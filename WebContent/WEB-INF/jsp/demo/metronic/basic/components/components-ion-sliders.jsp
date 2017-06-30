<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>ion-sliders</title>
</head>
<body>
<lambo:link path="global/plugins/ion.rangeslider/css/ion.rangeSlider.css,
				  global/plugins/ion.rangeslider/css/ion.rangeSlider.skinFlat.css,
				  global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css,
				  global/plugins/bootstrap-summernote/summernote.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 滑块组件
    <small>外观看上去舒适，易于定制过的滑块区域选择插件</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：滑块区域选择插件，易于定制，而且有多种皮肤支持
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.css" target="_blank">
					global/plugins/ion.rangeslider/css/ion.rangeSlider.css
				</a><br>
				<a href="/theme/assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.skinFlat.css" target="_blank">
					global/plugins/ion.rangeslider/css/ion.rangeSlider.skinFlat.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css" target="_blank">
					global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-summernote/summernote.css" target="_blank">
					global/plugins/bootstrap-summernote/summernote.css
				</a><br>
				<a href="/theme/assets/global/plugins/ion.rangeslider/js/ion.rangeSlider.js" target="_blank">
					global/plugins/ion.rangeslider/js/ion.rangeSlider.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-markdown/lib/markdown.js" target="_blank">
					global/plugins/bootstrap-markdown/lib/markdown.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-markdown/js/bootstrap-markdown.js" target="_blank">
					global/plugins/bootstrap-markdown/js/bootstrap-markdown.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-summernote/summernote.js" target="_blank">
					global/plugins/bootstrap-summernote/summernote.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-ion-sliders.js" target="_blank">
					pages/scripts/components-ion-sliders.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://github.com/IonDen/ion.rangeSlider" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet light form-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-settings font-dark"></i>
                    <span class="caption-subject font-dark sbold uppercase">Basic Demos</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body form">
                <form role="form" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Basic</label>
                            <div class="col-md-9">
                                <input id="range_1" type="text" /> </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Min & Max Values</label>
                            <div class="col-md-9">
                                <input id="range_2" type="text" value="" />
                                <span class="help-block"> Set min value, max value and start point </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Range Type</label>
                            <div class="col-md-9">
                                <input id="range_3" type="text" value="" />
                                <span class="help-block"> Set type to double and specify range, also showing grid and adding prefix "$" </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Negative Range</label>
                            <div class="col-md-9">
                                <input id="range_4" type="text" value="" />
                                <span class="help-block"> Set up range with negative values </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Custom Steps</label>
                            <div class="col-md-9">
                                <input id="range_5" type="text" value="" />
                                <span class="help-block"> Set up you own numbers </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">String Values</label>
                            <div class="col-md-9">
                                <input id="range_6" type="text" value="" />
                                <span class="help-block"> Using any strings as your values </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Month Values</label>
                            <div class="col-md-9">
                                <input id="range_7" type="text" value="" />
                                <span class="help-block"> One more example with strings </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Values Connect</label>
                            <div class="col-md-9">
                                <input id="range_8" type="text" value="" />
                                <span class="help-block"> Taking care about how from and to values connect? Use decorate_both option. </span>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="col-md-3 control-label">Values Connect Separator</label>
                            <div class="col-md-9">
                                <input id="range_9" type="text" value="" />
                                <span class="help-block"> Use your own separator symbol with values_separator option. Like → </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn green">Submit</button>
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
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet light form-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-settings font-green"></i>
                    <span class="caption-subject font-green sbold uppercase">Advanced Demos</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent green btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                        <label class="btn btn-transparent green btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body form">
                <form role="form" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Lock handles</label>
                            <div class="col-md-9">
                                <input id="range_10" type="text" value="" />
                                <span class="help-block"> Sometimes you want to forbid dragging one or both handles. Try to move left handle, you can't. </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Movement Limits 1</label>
                            <div class="col-md-9">
                                <input id="range_11" type="text" value="" />
                                <span class="help-block"> Sometimes you may want to show user full slider, but restict him from using it for 100%. The limits is the tool for you. Try to drag slider, you will see, it has invisible borders on 10 and 50. </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Movement Limits 2</label>
                            <div class="col-md-9">
                                <input id="range_12" type="text" value="" />
                                <span class="help-block"> One more example with limits. </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Disable Slider</label>
                            <div class="col-md-9">
                                <input id="range_13" type="text" value="" />
                                <span class="help-block"> You can lock your slider, by using disable option. </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn dark">Submit</button>
                                <button type="button" class="btn grey-salsa btn-outline">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/ion.rangeslider/js/ion.rangeSlider.js,
					global/plugins/bootstrap-markdown/lib/markdown.js,
					global/plugins/bootstrap-markdown/js/bootstrap-markdown.js,
					global/plugins/bootstrap-summernote/summernote.js,
					pages/scripts/components-ion-sliders.js" />
</body>