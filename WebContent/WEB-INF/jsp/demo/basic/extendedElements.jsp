<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<script>
$(function () {

	$('#dp-ex-1').datepicker ();
	$('#dp-ex-2').datepicker ();
	$('#dp-ex-3').datepicker ();
	$('#dp-ex-4').datepicker ();
	$('#dp-ex-5').datepicker();

	$('#dpStart').datepicker ().on ('changeDate', function (e) {
		$('#dpEnd').datepicker ('setStartDate', e.date);
	})

	$('#dpEnd').datepicker ().on ('changeDate', function (e) {
		$('#dpStart').datepicker ('setEndDate', e.date)
	})


	$('input:checkbox, input:radio').iCheck({
		checkboxClass: 'icheckbox_minimal-blue',
		radioClass: 'iradio_minimal-blue',
		inheritClass: true
	})


	$('#count-textarea1').textareaCount({
		maxCharacterSize: -2,
		warningNumber: 40
	})

	$('#count-textarea2').textareaCount({
		maxCharacterSize: 200,
		warningNumber: 40,
		displayFormat : '#input/#max | #words words'
	})

	$('#s2_basic').select2 ({
		allowClear: true,
		placeholder: "Select..."
	})

	$('#s2_multi_value').select2 ({
		placeholder: "Select..."
	})

	$('#s2_tokenization').select2 ({
		placeholder: "Select...",
		tags:["red", "green", "blue", "black", "orange", "white"],
		tokenSeparators: [",", " "]
	})

			
})
</script>
<div id="content-header">
<h1>extendedElements</h1>
</div>
<div id="content-container">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-calendar"></i> Date Picker</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row">
<div class="col-sm-3">
<h4>Default</h4>
<input id="dp-ex-1" class="form-control" type="text"> <span
	class="help-block">mm/dd/yyyy</span></div>
<div class="col-sm-3">
<h4>As component</h4>
<div id="dp-ex-2" class="input-group date"><input
	class="form-control" type="text"> <span
	class="input-group-addon"><i class="fa fa-calendar"></i></span></div>
<span class="help-block">dd-mm-yyyy</span></div>
<div class="col-sm-3">
<h4>Autoclose</h4>
<div id="dp-ex-3" class="input-group date" data-auto-close="true"
	data-date="12-02-2012" data-date-format="dd-mm-yyyy"
	data-date-autoclose="true"><input class="form-control"
	type="text"> <span class="input-group-addon"><i
	class="fa fa-calendar"></i></span></div>
<span class="help-block">dd-mm-yyyy</span></div>
<div class="col-sm-3">
<h4>Start with year view</h4>
<div id="dp-ex-4" class="input-group date" data-date="12-02-2012"
	data-date-format="dd.mm.yyyy" data-date-autoclose="true"
	data-date-start-view="2"><input class="form-control" type="text">
<span class="input-group-addon"><i class="fa fa-calendar"></i></span></div>
<span class="help-block">dd.mm.yyyy</span></div>
</div>
<!-- /.row -->

<div class="row">
<div class="col-sm-6">
<h4>Range input</h4>
<div class="row">
<div class="col-sm-6"><input class="form-control" type="text"
	placeholder="Start date" id="dpStart" data-date-format="mm-dd-yyyy"
	data-date-autoclose="true"> <span class="help-block">mm-dd-yyyy</span>
</div>
<div class="col-sm-6"><input class="form-control" type="text"
	placeholder="End date" id="dpEnd" data-date-format="mm-dd-yyyy"
	data-date-autoclose="true"></div>
</div>
</div>
<div class="col-sm-6">
<h4>Inline</h4>
<div id="dp-ex-5" class="" data-date-format="dd-mm-yyyy"></div>
</div>
</div>
</div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-clock-o"></i> Time Picker</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row">
<div class="col-sm-4">
<h4>Default timepicker</h4>
<div class="input-group bootstrap-timepicker">
<div class="bootstrap-timepicker-widget dropdown-menu">
<table>
	<tbody>
		<tr>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="incrementHour"><i class="fa fa-chevron-up"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="incrementMinute"><i class="fa fa-chevron-up"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td class="meridian-column"><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
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
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="decrementHour"><i class="fa fa-chevron-down"></i></a></td>
			<td class="separator"></td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="decrementMinute"><i class="fa fa-chevron-down"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="toggleMeridian"><i class="fa fa-chevron-down"></i></a></td>
		</tr>
	</tbody>
</table>
</div>
<input id="tp-ex-1" type="text" class="form-control"> <span
	class="input-group-addon"><i class="fa fa-clock-o"></i></span></div>
</div>
<div class="col-sm-4">
<h4>Inside a modal</h4>
<div class="input-group bootstrap-timepicker">
<div class="bootstrap-timepicker-widget modal fade"
	data-backdrop="false">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header"><a
	href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
	class="close" data-dismiss="modal">×</a>
<h3>Pick a Time</h3>
</div>
<div class="modal-body">
<table>
	<tbody>
		<tr>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="incrementHour"><i class="fa fa-chevron-up"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="incrementMinute"><i class="fa fa-chevron-up"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td class="meridian-column"><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
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
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="decrementHour"><i class="fa fa-chevron-down"></i></a></td>
			<td class="separator"></td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="decrementMinute"><i class="fa fa-chevron-down"></i></a></td>
			<td class="separator">&nbsp;</td>
			<td><a
				href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
				data-action="toggleMeridian"><i class="fa fa-chevron-down"></i></a></td>
		</tr>
	</tbody>
</table>
</div>
<div class="modal-footer"><a
	href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
	class="btn btn-sm btn-primary" data-dismiss="modal">OK</a></div>
</div>
</div>
</div>
<input id="tp-ex-2" type="text" class="form-control"> <span
	class="input-group-addon"><i class="fa fa-clock-o"></i></span></div>
</div>
<div class="col-sm-4"></div>
</div>
<!-- /.row --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-check"></i> Checkbox &amp; Radio Fields</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row">
<div class="col-sm-6">
<h4>Checkbox (stacked)</h4>
<div class="form-group">
<div class="checkbox"><input type="checkbox" name="checkbox-2"
	class="" checked=""> Option 1</div>
<div class="checkbox"><label> <input type="checkbox"
	name="checkbox-2" class=""> Option 2 </label></div>
<div class="checkbox"><label> <input type="checkbox"
	name="checkbox-2" class=""> Option 3 </label></div>
</div>
<!-- /.form-group -->

<h4>Checkbox (inline)</h4>
<div class="form-group"><label class="checkbox-inline"> <input
	type="checkbox" id="inlineCheckbox1" class="" value="option1"
	checked=""> Option 1 </label> <label class="checkbox-inline">
<input type="checkbox" id="inlineCheckbox2" class="" value="option2">
Option 2 </label> <label class="checkbox-inline"> <input type="checkbox"
	id="inlineCheckbox3" class="" value="option3"> Option 3 </label></div>
<!-- /.form-group --></div>
<div class="col-sm-6">
<h4>Radio (stacked)</h4>
<div class="form-group">
<div class="radio"><label> <input type="radio"
	name="radio-2" class="" checked=""> Option 1 </label></div>
<div class="radio"><label> <input type="radio"
	name="radio-2" class="" data-required="true"> Option 2 </label></div>
<div class="radio"><label> <input type="radio"
	name="radio-2" class="" data-required="true"> Option 3 </label></div>
</div>
<!-- /.form-group -->

<h4>Radio (inline)</h4>
<div class="form-group"><label class="radio-inline"> <input
	type="radio" name="radio-1" class="" value="option1" checked="">
Option 1 </label> <label class="radio-inline"> <input type="radio"
	name="radio-1" class="" value="option2"> Option 2 </label> <label
	class="radio-inline"> <input type="radio" name="radio-1"
	class="" value="option3"> Option 3 </label></div>
<!-- /.form-group --></div>
</div>
<!-- /.row --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-tasks"></i> Select2</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row">
<div class="col-sm-6 ">
<h4 class="heading_a">Basic</h4>
<select id="s2_basic" class="form-control select2-offscreen"
	tabindex="-1">
	<optgroup label="Alaskan/Hawaiian Time Zone">
		<option value="AK">Alaska</option>
		<option value="HI">Hawaii</option>
	</optgroup>
	<optgroup label="Pacific Time Zone">
		<option value="CA">California</option>
		<option value="NV" selected="">Nevada</option>
		<option value="OR">Oregon</option>
		<option value="WA">Washington</option>
	</optgroup>
	<optgroup label="Mountain Time Zone">
		<option value="AZ">Arizona</option>
		<option value="CO">Colorado</option>
		<option value="ID">Idaho</option>
		<option value="MT">Montana</option>
		<option value="NE">Nebraska</option>
		<option value="NM">New Mexico</option>
		<option value="ND">North Dakota</option>
		<option value="UT">Utah</option>
		<option value="WY">Wyoming</option>
	</optgroup>
	<optgroup label="Central Time Zone">
		<option value="AL">Alabama</option>
		<option value="AR">Arkansas</option>
		<option value="IL">Illinois</option>
		<option value="IA">Iowa</option>
		<option value="KS">Kansas</option>
		<option value="KY">Kentucky</option>
		<option value="LA">Louisiana</option>
		<option value="MN">Minnesota</option>
		<option value="MS">Mississippi</option>
		<option value="MO">Missouri</option>
		<option value="OK">Oklahoma</option>
		<option value="SD">South Dakota</option>
		<option value="TX">Texas</option>
		<option value="TN">Tennessee</option>
		<option value="WI">Wisconsin</option>
	</optgroup>
	<optgroup label="Eastern Time Zone">
		<option value="CT">Connecticut</option>
		<option value="DE">Delaware</option>
		<option value="FL">Florida</option>
		<option value="GA">Georgia</option>
		<option value="IN">Indiana</option>
		<option value="ME">Maine</option>
		<option value="MD">Maryland</option>
		<option value="MA">Massachusetts</option>
		<option value="MI">Michigan</option>
		<option value="NH">New Hampshire</option>
		<option value="NJ">New Jersey</option>
		<option value="NY">New York</option>
		<option value="NC">North Carolina</option>
		<option value="OH">Ohio</option>
		<option value="PA">Pennsylvania</option>
		<option value="RI">Rhode Island</option>
		<option value="SC">South Carolina</option>
		<option value="VT">Vermont</option>
		<option value="VA">Virginia</option>
		<option value="WV">West Virginia</option>
	</optgroup>
</select></div>
<div class="col-sm-6">
<h4 class="heading_a">Multi Value</h4>
<select id="s2_multi_value" class="form-control select2-offscreen"
	multiple="" tabindex="-1">
	<optgroup label="Alaskan/Hawaiian Time Zone">
		<option value="AK">Alaska</option>
		<option value="HI">Hawaii</option>
	</optgroup>
	<optgroup label="Pacific Time Zone">
		<option value="CA">California</option>
		<option value="NV">Nevada</option>
		<option value="OR">Oregon</option>
		<option value="WA">Washington</option>
	</optgroup>
	<optgroup label="Mountain Time Zone">
		<option value="AZ">Arizona</option>
		<option value="CO">Colorado</option>
		<option value="ID">Idaho</option>
		<option value="MT">Montana</option>
		<option value="NE">Nebraska</option>
		<option value="NM">New Mexico</option>
		<option value="ND">North Dakota</option>
		<option value="UT">Utah</option>
		<option value="WY">Wyoming</option>
	</optgroup>
	<optgroup label="Central Time Zone">
		<option value="AL">Alabama</option>
		<option value="AR">Arkansas</option>
		<option value="IL">Illinois</option>
		<option value="IA">Iowa</option>
		<option value="KS">Kansas</option>
		<option value="KY">Kentucky</option>
		<option value="LA">Louisiana</option>
		<option value="MN">Minnesota</option>
		<option value="MS">Mississippi</option>
		<option value="MO">Missouri</option>
		<option value="OK">Oklahoma</option>
		<option value="SD">South Dakota</option>
		<option value="TX">Texas</option>
		<option value="TN">Tennessee</option>
		<option value="WI">Wisconsin</option>
	</optgroup>
	<optgroup label="Eastern Time Zone">
		<option value="CT">Connecticut</option>
		<option value="DE">Delaware</option>
		<option value="FL">Florida</option>
		<option value="GA">Georgia</option>
		<option value="IN">Indiana</option>
		<option value="ME">Maine</option>
		<option value="MD">Maryland</option>
		<option value="MA">Massachusetts</option>
		<option value="MI">Michigan</option>
		<option value="NH">New Hampshire</option>
		<option value="NJ">New Jersey</option>
		<option value="NY">New York</option>
		<option value="NC">North Carolina</option>
		<option value="OH">Ohio</option>
		<option value="PA">Pennsylvania</option>
		<option value="RI">Rhode Island</option>
		<option value="SC">South Carolina</option>
		<option value="VT">Vermont</option>
		<option value="VA">Virginia</option>
		<option value="WV">West Virginia</option>
	</optgroup>
</select></div>
</div>
<!-- /.row -->

<div class="row">
<div class="col-sm-6">
<h4 class="heading_a">Auto Tokenization</h4>
<div class="select2-container select2-container-multi form-control"
	id="s2id_s2_tokenization"></div>
<input type="text" id="s2_tokenization"
	class="form-control select2-offscreen" value="green,red" tabindex="-1">
<span class="help-block">Try typing in the search field above and
entering a space or a comma.</span></div>
</div>
<!-- /.row --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-cloud-upload"></i> File Upload</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row">
<div class="col-sm-6">
<div class="fileupload fileupload-new" data-provides="fileupload">
<div class="input-group">
<div class="form-control"><i class="fa fa-file fileupload-exists"></i>
<span class="fileupload-preview"></span></div>
<div class="input-group-btn"><a
	href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
	class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
<span class="btn btn-default btn-file"> <span
	class="fileupload-new">Select file</span> <span
	class="fileupload-exists">Change</span> <input type="file"> </span></div>
</div>
</div>
</div>
<div class="col-sm-6">
<div class="fileupload fileupload-new text-center"
	data-provides="fileupload"><span class="btn btn-default btn-file">
<span class="fileupload-new">Select file</span><span
	class="fileupload-exists">Change</span> <input type="file"> </span> <span
	class="fileupload-preview"></span>
<button type="button" class="close fileupload-exists"
	data-dismiss="fileupload" style="float: none">×</button>
</div>
</div>
</div>
<!-- /.row -->

<div class="row">
<div class="col-sm-4">
<div class="fileupload fileupload-new" data-provides="fileupload">
<div class="fileupload-preview thumbnail"
	style="width: 200px; height: 150px;"></div>
<div><span class="btn btn-default btn-file"><span
	class="fileupload-new">Select image</span><span
	class="fileupload-exists">Change</span> <input type="file"> </span> <a
	href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
	class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
</div>
</div>
</div>
<div class="col-sm-4">
<div class="fileupload fileupload-new" data-provides="fileupload">
<div class="fileupload-new thumbnail"
	style="width: 200px; height: 150px;"><img
	src="./Extended Elements - Canvas Admin_files/AAAAAA&text=no+image"
	alt="Placeholder"></div>
<div class="fileupload-preview fileupload-exists thumbnail"
	style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
<div><span class="btn btn-default btn-file"><span
	class="fileupload-new">Select image</span><span
	class="fileupload-exists">Change</span> <input type="file"> </span> <a
	href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
	class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
</div>
</div>
</div>
<div class="col-sm-4">
<div class="fileupload fileupload-new" data-provides="fileupload">
<div class="fileupload-new thumbnail" style="width: 50px; height: 50px;">
<img src="./Extended Elements - Canvas Admin_files/AAAAAA"
	alt="Placeholder"></div>
<div class="fileupload-preview fileupload-exists thumbnail"
	style="width: 50px; height: 50px;"></div>
<span class="btn btn-default btn-file"> <span
	class="fileupload-new">Select image</span> <span
	class="fileupload-exists">Change</span> <input type="file"> </span> <a
	href="http://preview.jumpstartthemes.com/canvas-admin/form-extended.html#"
	class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
</div>
</div>
</div>
<!-- /.row --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-location-arrow"></i> Autosize Textarea</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row">
<div class="col-sm-6"><label>Regular</label> <textarea
	id="as-ex-1" class="form-control" rows="3"
	style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 74px;"></textarea>
</div>
<div class="col-sm-6"><label>Animated</label> <textarea
	id="as-ex-2" class="form-control autosize-animate" rows="3"
	style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 74px;"></textarea>
</div>
</div>
<!-- /.row --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-location-arrow"></i> Textarea Counter</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row">
<div class="col-sm-6"><label>Count characters and words</label> <textarea
	class="form-control" id="count-textarea1" rows="3"></textarea>
<div class="charleft originalTextareaInfo" style="width: 745px;">&nbsp;</div>
</div>
<div class="col-sm-6"><label>Count and limit characters</label> <textarea
	class="form-control" id="count-textarea2" rows="3"></textarea>
<div class="charleft originalTextareaInfo" style="width: 745px;">&nbsp;</div>
</div>
</div>
<!-- /.row --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /#content-container -->
