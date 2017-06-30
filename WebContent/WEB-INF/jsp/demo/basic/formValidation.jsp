<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>"%>
<div id="content-header">
<h1>formValidation</h1>
</div>
<div id="content-container">
<div class="row">
<div class="col-sm-6">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-tasks"></i> Enhanced Fields</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<form id="validate-enhanced" action="" class="form parsley-form">
<div class="form-group"><label for="validateSelect">Select2
Field</label> <select name="select-2"
	class="form-control select2-input parsley-validated select2-offscreen"
	data-required="true" tabindex="-1">
	<option value="">Please Select</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
</select></div>
<div class="form-group"><label for="select-multi-input">Select2
Multiple Field</label> <select name="select-multi-2" multiple=""
	class="form-control select2-input parsley-validated select2-offscreen"
	data-required="true" tabindex="-1">
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	<option>5</option>
	<option>6</option>
</select></div>
<div class="form-group"><label for="date-2">Date Picker</label>
<div class="input-group date ui-datepicker"><input id="date-2"
	name="date-2" class="form-control parsley-validated" type="text"
	data-required="true"> <span class="input-group-addon"><i
	class="fa fa-calendar"></i></span></div>
</div>
<div class="form-group"><label for="time-2">Time Picker</label>
<div class="input-group bootstrap-timepicker">
<div class="bootstrap-timepicker-widget dropdown-menu">
<table>
	<tbody>
		<tr>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-validation.html#"
				data-action="incrementHour"><i class="fa fa-chevron-up"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-validation.html#"
				data-action="incrementMinute"><i class="fa fa-chevron-up"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td class="meridian-column"><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-validation.html#"
				data-action="toggleMeridian"><i class="fa fa-chevron-up"></i></a></td>
		</tr>
		<tr>
			<td><input type="text" name="hour"
				class="bootstrap-timepicker-hour" maxlength="2"></td>
			<td class="separator">:</td>
			<td><input type="text" name="minute"
				class="bootstrap-timepicker-minute" maxlength="2"></td>
			<td class="separator">&nbsp;</td>
			<td><input type="text" name="meridian"
				class="bootstrap-timepicker-meridian" maxlength="2"></td>
		</tr>
		<tr>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-validation.html#"
				data-action="decrementHour"><i class="fa fa-chevron-down"></i></a></td>
			<td class="separator"></td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-validation.html#"
				data-action="decrementMinute"><i class="fa fa-chevron-down"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-validation.html#"
				data-action="toggleMeridian"><i class="fa fa-chevron-down"></i></a></td>
		</tr>
	</tbody>
</table>
</div>
<input id="time-2" name="time-2"
	class="form-control ui-timepicker parsley-validated parsley-success"
	data-value="" type="text" data-required="true"> <span
	class="input-group-addon"><i class="fa fa-clock-o"></i></span></div>
</div>
<div class="form-group"><label for="color-2">Color Picker</label>
<select id="color-2" name="colorpicker"
	class="form-control ui-colorpicker parsley-validated"
	data-required="true" style="display: none;">
	<!-- Colors from Google Calendar -->
	<option value="">Select</option>
	<option value="#e5412d">Red</option>
	<option value="#f0ad4e">Yellow</option>
	<option value="#428bca">Blue</option>
	<option value="#5cb85c">Green</option>
	<option value="#5bc0de">Teal</option>
</select></div>
<div class="form-group"><label>iCheck Checkbox Field</label>
<div class="checkbox"><label> <input type="checkbox"
	name="checkbox-2" class="icheck-input parsley-validated"
	data-mincheck="2" style="position: absolute; opacity: 0;">
Option 1 </label></div>
<div class="checkbox"><label> <input type="checkbox"
	name="checkbox-2" class="icheck-input parsley-validated"
	data-mincheck="2" style="position: absolute; opacity: 0;">
Option 2 </label></div>
</div>
<!-- /.form-group -->

<div class="form-group"><label>iCheck Radio Field</label>
<div class="radio"><label> <input type="radio"
	name="radio-2" class="icheck-input parsley-validated"
	data-required="true" style="position: absolute; opacity: 0;">
Option 1 </label></div>
<div class="radio"><label> <input type="radio"
	name="radio-2" class="icheck-input parsley-validated"
	data-required="true" style="position: absolute; opacity: 0;">
Option 2 </label></div>
</div>
<!-- /.form-group -->

<div class="form-group">
<button type="submit" class="btn btn-primary">Validate</button>
</div>
</form>
</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col -->

<div class="col-sm-6">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-tasks"></i> Basic Fields</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<form id="validate-basic"
	action="./Form Validation - Canvas Admin_files/Form Validation - Canvas Admin.htm"
	data-validate="parsley" class="form parsley-form">
<div class="form-group"><label for="name">Name</label> <input
	type="text" id="name" name="name"
	class="form-control parsley-validated" data-required="true"></div>
<div class="form-group"><label for="textarea-input">Textarea</label>
<textarea data-required="true" data-minlength="5" name="textarea-input"
	id="textarea-input" cols="10" rows="2"
	class="form-control parsley-validated"></textarea></div>
<div class="form-group"><label for="validateSelect">Select</label>
<select id="validateSelect" name="validateSelect"
	class="form-control parsley-validated" data-required="true">
	<option value="">Please Select</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
</select></div>
<div class="form-group"><label for="select-multi-input">Select
(multiple)</label> <select data-required="true" multiple=""
	id="select-multi-input" class="form-control parsley-validated">
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	<option>5</option>
	<option>6</option>
</select></div>
<div class="form-group"><label>Checkbox (stacked)</label>
<div class="checkbox"><label> <input type="checkbox"
	name="checkbox-1" class="parsley-validated" data-mincheck="2">
Option 1 </label></div>
<div class="checkbox"><label> <input type="checkbox"
	name="checkbox-1" class="parsley-validated" data-mincheck="2">
Option 2 </label></div>
</div>
<!-- /.form-group -->

<div class="form-group"><label>Radio (stacked)</label>
<div class="radio"><label> <input type="radio"
	name="radio-1" class="parsley-validated" data-required="true">
Option 1 </label></div>
<div class="radio"><label> <input type="radio"
	name="radio-1" class="parsley-validated" data-required="true">
Option 2 </label></div>
</div>
<!-- /.form-group -->

<div class="form-group">
<button type="submit" class="btn btn-primary">Validate</button>
</div>
</form>
</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row --></div>

<script>

$(function () {

	$('.select2-input').select2({
			placeholder: "Select..."
	});

	// Just for the demo
	$('#time-2').val ('');

});

</script>
