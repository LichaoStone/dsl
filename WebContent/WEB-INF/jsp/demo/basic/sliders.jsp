<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<style>
#eq {
	text-align: center;
}

#eq span {
	height: 215px;
	display: inline-block;
	margin: 15px;
}

.slider-demo {
	margin-bottom: 2em;
}
</style>
<div id="content-header">
<h1>sliders</h1>
</div>
<div id="content-container">


<div class="row">

<div class="col-md-12">

<h4 class="heading">Increment Slider</h4>

<span>Donation amount ($50 increments):</span> <span
	id="incrementAmount"
	style="border: 0; color: #f6931f; font-weight: bold;">$150</span>
<div id="incrementSlider"
	class="slider-primary ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
	style="margin-top: 1em;">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 30%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 30%;"></a></div>



<br>
<br>

<h4 class="heading">Range Slider</h4>
<span>Price range:</span> <span id="amount"
	style="border: 0; color: #f6931f; font-weight: bold;">$75 - $250</span>

<div id="rangeSlider"
	class="slider-secondary ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
	style="margin-top: 1em;">
<div class="ui-slider-range ui-widget-header"
	style="left: 15%; width: 35%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 15%;"></a><a
	class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 50%;"></a></div>



<br>
<br>

<h4 class="heading">Minimum Value Slider</h4>

<span>Maximum price:</span> <span id="rangeMinAmount"
	style="border: 0; color: #f6931f; font-weight: bold;">$100</span>
<div id="rangeMinSlider"
	class="slider-tertiary ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
	style="margin-top: 1em;">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 7.6923076923076925%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 7.6923076923076925%;"></a></div>

</div>
<!-- /.col --></div>
<!-- /.row --> <br>
<hr>
<br>
<br>


<div class="row">

<div class="col-md-6 col-sm-6">


<h4 class="heading">Default Sliders</h4>

<div
	class="slider-demo slider-primary ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 19%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 19%;"></a></div>
<div
	class="slider-demo slider-secondary ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 21%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 21%;"></a></div>
<div
	class="slider-demo slider-tertiary ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 88%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 88%;"></a></div>

<br>
<br>

<h4 class="heading">Semantic Sliders</h4>

<div
	class="slider-demo slider-success ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 42%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 42%;"></a></div>
<div
	class="slider-demo slider-info ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 74%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 74%;"></a></div>
<div
	class="slider-demo slider-warning ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 65%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 65%;"></a></div>
<div
	class="slider-demo slider-danger ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="width: 79%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="left: 79%;"></a></div>

</div>
<!-- /.col -->


<div class="col-md-6 col-sm-6">

<h4 class="heading">Vertical Sliders</h4>

<div id="eq"><span
	class="slider-primary ui-slider ui-slider-vertical ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="height: 88%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="bottom: 88%;"></a></span> <span
	class="slider-secondary ui-slider ui-slider-vertical ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="height: 77%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="bottom: 77%;"></a></span> <span
	class="slider-tertiary ui-slider ui-slider-vertical ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="height: 55.00000000000001%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="bottom: 55.00000000000001%;"></a></span> <span
	class="slider-success ui-slider ui-slider-vertical ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="height: 33%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="bottom: 33%;"></a></span> <span
	class="slider-info ui-slider ui-slider-vertical ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="height: 40%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="bottom: 40%;"></a></span> <span
	class="slider-warning ui-slider ui-slider-vertical ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="height: 45%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="bottom: 45%;"></a></span> <span
	class="slider-danger ui-slider ui-slider-vertical ui-widget ui-widget-content ui-corner-all">
<div class="ui-slider-range ui-widget-header ui-slider-range-min"
	style="height: 70%;"></div>
<a class="ui-slider-handle ui-state-default ui-corner-all"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-sliders.html#"
	style="bottom: 70%;"></a></span></div>


</div>
<!-- /.col -->


<div class="col-md-4 col-md-offset-2"></div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->

