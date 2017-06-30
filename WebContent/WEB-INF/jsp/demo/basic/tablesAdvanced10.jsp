<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<script>
	$(document).ready(function() {
	    var table = $('#example').DataTable();
	 
	    $('button').click( function() {
	        var data = table.$('input, select').serialize();
	        alert(
	            data
	        );
	        return false;
	    } );
	} );
</script>
<div id="content-header">
<h1>tablesAdvanced10</h1>
</div>
<div id="content-container">
<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3>简单前端分页表格</h3>
</div>
<!-- /.portlet-header -->
<div class="portlet-content">
<div class="row">
<div class="col-md-12">
<button class="btn btn-primary pull-right" type="button">提交</button>
</div>
</div>

<table width="100%"
	class="table table-striped table-bordered table-hover table-highlight"
	id="example" cellspacing="0">
	<thead>
		<tr>
			<th>Name</th>
			<th>Age</th>
			<th>Position</th>
			<th>Office</th>
		</tr>
	</thead>

	<tfoot>
		<tr>
			<th>Name</th>
			<th>Age</th>
			<th>Position</th>
			<th>Office</th>
		</tr>
	</tfoot>

	<tbody>
		<tr>
			<td>Tiger Nixon</td>
			<td><input name="row-1-age" id="row-1-age" type="text"
				value="61"></td>
			<td><input name="row-1-position" id="row-1-position" type="text"
				value="System Architect"></td>
			<td><select name="row-1-office" id="row-1-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Garrett Winters</td>
			<td><input name="row-2-age" id="row-2-age" type="text"
				value="63"></td>
			<td><input name="row-2-position" id="row-2-position" type="text"
				value="Accountant"></td>
			<td><select name="row-2-office" id="row-2-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo" selected="">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Ashton Cox</td>
			<td><input name="row-3-age" id="row-3-age" type="text"
				value="66"></td>
			<td><input name="row-3-position" id="row-3-position" type="text"
				value="Junior Technical Author"></td>
			<td><select name="row-3-office" id="row-3-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Cedric Kelly</td>
			<td><input name="row-4-age" id="row-4-age" type="text"
				value="22"></td>
			<td><input name="row-4-position" id="row-4-position" type="text"
				value="Senior Javascript Developer"></td>
			<td><select name="row-4-office" id="row-4-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Airi Satou</td>
			<td><input name="row-5-age" id="row-5-age" type="text"
				value="33"></td>
			<td><input name="row-5-position" id="row-5-position" type="text"
				value="Accountant"></td>
			<td><select name="row-5-office" id="row-5-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo" selected="">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Brielle Williamson</td>
			<td><input name="row-6-age" id="row-6-age" type="text"
				value="61"></td>
			<td><input name="row-6-position" id="row-6-position" type="text"
				value="Integration Specialist"></td>
			<td><select name="row-6-office" id="row-6-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Herrod Chandler</td>
			<td><input name="row-7-age" id="row-7-age" type="text"
				value="59"></td>
			<td><input name="row-7-position" id="row-7-position" type="text"
				value="Sales Assistant"></td>
			<td><select name="row-7-office" id="row-7-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Rhona Davidson</td>
			<td><input name="row-8-age" id="row-8-age" type="text"
				value="55"></td>
			<td><input name="row-8-position" id="row-8-position" type="text"
				value="Integration Specialist"></td>
			<td><select name="row-8-office" id="row-8-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo" selected="">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Colleen Hurst</td>
			<td><input name="row-9-age" id="row-9-age" type="text"
				value="39"></td>
			<td><input name="row-9-position" id="row-9-position" type="text"
				value="Javascript Developer"></td>
			<td><select name="row-9-office" id="row-9-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Sonya Frost</td>
			<td><input name="row-10-age" id="row-10-age" type="text"
				value="23"></td>
			<td><input name="row-10-position" id="row-10-position"
				type="text" value="Software Engineer"></td>
			<td><select name="row-10-office" id="row-10-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Jena Gaines</td>
			<td><input name="row-11-age" id="row-11-age" type="text"
				value="30"></td>
			<td><input name="row-11-position" id="row-11-position"
				type="text" value="Office Manager"></td>
			<td><select name="row-11-office" id="row-11-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Quinn Flynn</td>
			<td><input name="row-12-age" id="row-12-age" type="text"
				value="22"></td>
			<td><input name="row-12-position" id="row-12-position"
				type="text" value="Support Lead"></td>
			<td><select name="row-12-office" id="row-12-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Charde Marshall</td>
			<td><input name="row-13-age" id="row-13-age" type="text"
				value="36"></td>
			<td><input name="row-13-position" id="row-13-position"
				type="text" value="Regional Director"></td>
			<td><select name="row-13-office" id="row-13-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Haley Kennedy</td>
			<td><input name="row-14-age" id="row-14-age" type="text"
				value="43"></td>
			<td><input name="row-14-position" id="row-14-position"
				type="text" value="Senior Marketing Designer"></td>
			<td><select name="row-14-office" id="row-14-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Tatyana Fitzpatrick</td>
			<td><input name="row-15-age" id="row-15-age" type="text"
				value="19"></td>
			<td><input name="row-15-position" id="row-15-position"
				type="text" value="Regional Director"></td>
			<td><select name="row-15-office" id="row-15-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Michael Silva</td>
			<td><input name="row-16-age" id="row-16-age" type="text"
				value="66"></td>
			<td><input name="row-16-position" id="row-16-position"
				type="text" value="Marketing Designer"></td>
			<td><select name="row-16-office" id="row-16-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Paul Byrd</td>
			<td><input name="row-17-age" id="row-17-age" type="text"
				value="64"></td>
			<td><input name="row-17-position" id="row-17-position"
				type="text" value="Chief Financial Officer (CFO)"></td>
			<td><select name="row-17-office" id="row-17-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Gloria Little</td>
			<td><input name="row-18-age" id="row-18-age" type="text"
				value="59"></td>
			<td><input name="row-18-position" id="row-18-position"
				type="text" value="Systems Administrator"></td>
			<td><select name="row-18-office" id="row-18-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Bradley Greer</td>
			<td><input name="row-19-age" id="row-19-age" type="text"
				value="41"></td>
			<td><input name="row-19-position" id="row-19-position"
				type="text" value="Software Engineer"></td>
			<td><select name="row-19-office" id="row-19-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Dai Rios</td>
			<td><input name="row-20-age" id="row-20-age" type="text"
				value="35"></td>
			<td><input name="row-20-position" id="row-20-position"
				type="text" value="Personnel Lead"></td>
			<td><select name="row-20-office" id="row-20-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Jenette Caldwell</td>
			<td><input name="row-21-age" id="row-21-age" type="text"
				value="30"></td>
			<td><input name="row-21-position" id="row-21-position"
				type="text" value="Development Lead"></td>
			<td><select name="row-21-office" id="row-21-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Yuri Berry</td>
			<td><input name="row-22-age" id="row-22-age" type="text"
				value="40"></td>
			<td><input name="row-22-position" id="row-22-position"
				type="text" value="Chief Marketing Officer (CMO)"></td>
			<td><select name="row-22-office" id="row-22-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Caesar Vance</td>
			<td><input name="row-23-age" id="row-23-age" type="text"
				value="21"></td>
			<td><input name="row-23-position" id="row-23-position"
				type="text" value="Pre-Sales Support"></td>
			<td><select name="row-23-office" id="row-23-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Doris Wilder</td>
			<td><input name="row-24-age" id="row-24-age" type="text"
				value="23"></td>
			<td><input name="row-24-position" id="row-24-position"
				type="text" value="Sales Assistant"></td>
			<td><select name="row-24-office" id="row-24-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Angelica Ramos</td>
			<td><input name="row-25-age" id="row-25-age" type="text"
				value="47"></td>
			<td><input name="row-25-position" id="row-25-position"
				type="text" value="Chief Executive Officer (CEO)"></td>
			<td><select name="row-25-office" id="row-25-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Gavin Joyce</td>
			<td><input name="row-26-age" id="row-26-age" type="text"
				value="42"></td>
			<td><input name="row-26-position" id="row-26-position"
				type="text" value="Developer"></td>
			<td><select name="row-26-office" id="row-26-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Jennifer Chang</td>
			<td><input name="row-27-age" id="row-27-age" type="text"
				value="28"></td>
			<td><input name="row-27-position" id="row-27-position"
				type="text" value="Regional Director"></td>
			<td><select name="row-27-office" id="row-27-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Brenden Wagner</td>
			<td><input name="row-28-age" id="row-28-age" type="text"
				value="28"></td>
			<td><input name="row-28-position" id="row-28-position"
				type="text" value="Software Engineer"></td>
			<td><select name="row-28-office" id="row-28-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Fiona Green</td>
			<td><input name="row-29-age" id="row-29-age" type="text"
				value="48"></td>
			<td><input name="row-29-position" id="row-29-position"
				type="text" value="Chief Operating Officer (COO)"></td>
			<td><select name="row-29-office" id="row-29-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Shou Itou</td>
			<td><input name="row-30-age" id="row-30-age" type="text"
				value="20"></td>
			<td><input name="row-30-position" id="row-30-position"
				type="text" value="Regional Marketing"></td>
			<td><select name="row-30-office" id="row-30-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo" selected="">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Michelle House</td>
			<td><input name="row-31-age" id="row-31-age" type="text"
				value="37"></td>
			<td><input name="row-31-position" id="row-31-position"
				type="text" value="Integration Specialist"></td>
			<td><select name="row-31-office" id="row-31-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Suki Burks</td>
			<td><input name="row-32-age" id="row-32-age" type="text"
				value="53"></td>
			<td><input name="row-32-position" id="row-32-position"
				type="text" value="Developer"></td>
			<td><select name="row-32-office" id="row-32-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Prescott Bartlett</td>
			<td><input name="row-33-age" id="row-33-age" type="text"
				value="27"></td>
			<td><input name="row-33-position" id="row-33-position"
				type="text" value="Technical Author"></td>
			<td><select name="row-33-office" id="row-33-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Gavin Cortez</td>
			<td><input name="row-34-age" id="row-34-age" type="text"
				value="22"></td>
			<td><input name="row-34-position" id="row-34-position"
				type="text" value="Team Leader"></td>
			<td><select name="row-34-office" id="row-34-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Martena Mccray</td>
			<td><input name="row-35-age" id="row-35-age" type="text"
				value="46"></td>
			<td><input name="row-35-position" id="row-35-position"
				type="text" value="Post-Sales support"></td>
			<td><select name="row-35-office" id="row-35-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Unity Butler</td>
			<td><input name="row-36-age" id="row-36-age" type="text"
				value="47"></td>
			<td><input name="row-36-position" id="row-36-position"
				type="text" value="Marketing Designer"></td>
			<td><select name="row-36-office" id="row-36-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Howard Hatfield</td>
			<td><input name="row-37-age" id="row-37-age" type="text"
				value="51"></td>
			<td><input name="row-37-position" id="row-37-position"
				type="text" value="Office Manager"></td>
			<td><select name="row-37-office" id="row-37-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Hope Fuentes</td>
			<td><input name="row-38-age" id="row-38-age" type="text"
				value="41"></td>
			<td><input name="row-38-position" id="row-38-position"
				type="text" value="Secretary"></td>
			<td><select name="row-38-office" id="row-38-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Vivian Harrell</td>
			<td><input name="row-39-age" id="row-39-age" type="text"
				value="62"></td>
			<td><input name="row-39-position" id="row-39-position"
				type="text" value="Financial Controller"></td>
			<td><select name="row-39-office" id="row-39-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Timothy Mooney</td>
			<td><input name="row-40-age" id="row-40-age" type="text"
				value="37"></td>
			<td><input name="row-40-position" id="row-40-position"
				type="text" value="Office Manager"></td>
			<td><select name="row-40-office" id="row-40-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Jackson Bradshaw</td>
			<td><input name="row-41-age" id="row-41-age" type="text"
				value="65"></td>
			<td><input name="row-41-position" id="row-41-position"
				type="text" value="Director"></td>
			<td><select name="row-41-office" id="row-41-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Olivia Liang</td>
			<td><input name="row-42-age" id="row-42-age" type="text"
				value="64"></td>
			<td><input name="row-42-position" id="row-42-position"
				type="text" value="Support Engineer"></td>
			<td><select name="row-42-office" id="row-42-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Bruno Nash</td>
			<td><input name="row-43-age" id="row-43-age" type="text"
				value="38"></td>
			<td><input name="row-43-position" id="row-43-position"
				type="text" value="Software Engineer"></td>
			<td><select name="row-43-office" id="row-43-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Sakura Yamamoto</td>
			<td><input name="row-44-age" id="row-44-age" type="text"
				value="37"></td>
			<td><input name="row-44-position" id="row-44-position"
				type="text" value="Support Engineer"></td>
			<td><select name="row-44-office" id="row-44-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo" selected="">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Thor Walton</td>
			<td><input name="row-45-age" id="row-45-age" type="text"
				value="61"></td>
			<td><input name="row-45-position" id="row-45-position"
				type="text" value="Developer"></td>
			<td><select name="row-45-office" id="row-45-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Finn Camacho</td>
			<td><input name="row-46-age" id="row-46-age" type="text"
				value="47"></td>
			<td><input name="row-46-position" id="row-46-position"
				type="text" value="Support Engineer"></td>
			<td><select name="row-46-office" id="row-46-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Serge Baldwin</td>
			<td><input name="row-47-age" id="row-47-age" type="text"
				value="64"></td>
			<td><input name="row-47-position" id="row-47-position"
				type="text" value="Data Coordinator"></td>
			<td><select name="row-47-office" id="row-47-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Zenaida Frank</td>
			<td><input name="row-48-age" id="row-48-age" type="text"
				value="63"></td>
			<td><input name="row-48-position" id="row-48-position"
				type="text" value="Software Engineer"></td>
			<td><select name="row-48-office" id="row-48-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Zorita Serrano</td>
			<td><input name="row-49-age" id="row-49-age" type="text"
				value="56"></td>
			<td><input name="row-49-position" id="row-49-position"
				type="text" value="Software Engineer"></td>
			<td><select name="row-49-office" id="row-49-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Jennifer Acosta</td>
			<td><input name="row-50-age" id="row-50-age" type="text"
				value="43"></td>
			<td><input name="row-50-position" id="row-50-position"
				type="text" value="Junior Javascript Developer"></td>
			<td><select name="row-50-office" id="row-50-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Cara Stevens</td>
			<td><input name="row-51-age" id="row-51-age" type="text"
				value="46"></td>
			<td><input name="row-51-position" id="row-51-position"
				type="text" value="Sales Assistant"></td>
			<td><select name="row-51-office" id="row-51-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Hermione Butler</td>
			<td><input name="row-52-age" id="row-52-age" type="text"
				value="47"></td>
			<td><input name="row-52-position" id="row-52-position"
				type="text" value="Regional Director"></td>
			<td><select name="row-52-office" id="row-52-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Lael Greer</td>
			<td><input name="row-53-age" id="row-53-age" type="text"
				value="21"></td>
			<td><input name="row-53-position" id="row-53-position"
				type="text" value="Systems Administrator"></td>
			<td><select name="row-53-office" id="row-53-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London" selected="">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Jonas Alexander</td>
			<td><input name="row-54-age" id="row-54-age" type="text"
				value="30"></td>
			<td><input name="row-54-position" id="row-54-position"
				type="text" value="Developer"></td>
			<td><select name="row-54-office" id="row-54-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco" selected="">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Shad Decker</td>
			<td><input name="row-55-age" id="row-55-age" type="text"
				value="51"></td>
			<td><input name="row-55-position" id="row-55-position"
				type="text" value="Regional Director"></td>
			<td><select name="row-55-office" id="row-55-office" size="1">
				<option value="Edinburgh" selected="">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Michael Bruce</td>
			<td><input name="row-56-age" id="row-56-age" type="text"
				value="29"></td>
			<td><input name="row-56-position" id="row-56-position"
				type="text" value="Javascript Developer"></td>
			<td><select name="row-56-office" id="row-56-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
		<tr>
			<td>Donna Snider</td>
			<td><input name="row-57-age" id="row-57-age" type="text"
				value="27"></td>
			<td><input name="row-57-position" id="row-57-position"
				type="text" value="Customer Support"></td>
			<td><select name="row-57-office" id="row-57-office" size="1">
				<option value="Edinburgh">Edinburgh</option>

				<option value="London">London</option>

				<option value="New York" selected="">New York</option>

				<option value="San Francisco">San Francisco</option>

				<option value="Tokyo">Tokyo</option>
			</select></td>
		</tr>
	</tbody>
</table>
</div>
<!-- /.portlet-content --></div>
</div>
</div>
</div>
<!-- /#content-container -->
