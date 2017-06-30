<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<div id="content-header">
<h1>tablesAdvanced-bal</h1>
</div>
<div id="content-container">
<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-table"></i> Kitchen Sink</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="table-responsive">
<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper"
	role="grid">
<div class="row dt-rt">
<div class="col-sm-6">
<div id="DataTables_Table_0_length" class="dataTables_length"><label>
<select size="1" name="DataTables_Table_0_length"
	aria-controls="DataTables_Table_0">
	<option value="10" selected="selected">10</option>
	<option value="25">25</option>
	<option value="50">50</option>
	<option value="100">100</option>
</select> </label></div>
</div>
<div class="col-sm-6">
<div class="dataTables_filter" id="DataTables_Table_0_filter"><label>
<input type="text" aria-controls="DataTables_Table_0"
	placeholder="Search..."> </label></div>
</div>
</div>
<table
	class="table table-striped table-bordered table-hover table-highlight table-checkable dataTable-helper dataTable datatable-columnfilter"
	data-provide="datatable" data-display-rows="10" data-info="true"
	data-search="true" data-length-change="true" data-paginate="true"
	id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
	<thead>
		<tr role="row">
			<th class="checkbox-column sorting_disabled" role="columnheader"
				rowspan="1" colspan="1" aria-label="
												
											"
				style="width: 22px;"><input type="checkbox"
				class="icheck-input"></th>
			<th data-filterable="true" data-sortable="true" data-direction="desc"
				class="sorting_desc" role="columnheader" tabindex="0"
				aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
				aria-sort="descending"
				aria-label="Rendering engine: activate to sort column ascending"
				style="width: 287px;">Rendering engine</th>
			<th data-direction="asc" data-filterable="true" data-sortable="true"
				class="sorting_asc" role="columnheader" tabindex="0"
				aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
				aria-label="Browser: activate to sort column ascending"
				style="width: 393px;">Browser</th>
			<th data-filterable="true" data-sortable="true" class="sorting"
				role="columnheader" tabindex="0" aria-controls="DataTables_Table_0"
				rowspan="1" colspan="1"
				aria-label="Platform(s): activate to sort column ascending"
				style="width: 346px;">Platform(s)</th>
			<th data-filterable="false"
				class="hidden-xs hidden-sm sorting_disabled" role="columnheader"
				rowspan="1" colspan="1" aria-label="Engine version"
				style="width: 244px;">Engine version</th>
			<th data-filterable="true"
				class="hidden-xs hidden-sm sorting_disabled" role="columnheader"
				rowspan="1" colspan="1" aria-label="CSS grade" style="width: 170px;">CSS
			grade</th>
		</tr>
		<tr cls="dataTable-filter-row">
			<th class="checkbox-column"><input type="text"
				class="form-control input-sm hide" placeholder=""></th>
			<th class=""><input type="text"
				class="form-control input-sm show" placeholder="Rendering engine"></th>
			<th class=""><input type="text"
				class="form-control input-sm show" placeholder="Browser"></th>
			<th class=""><input type="text"
				class="form-control input-sm show" placeholder="Platform(s)"></th>
			<th class="hidden-xs hidden-sm"><input type="text"
				class="form-control input-sm hide" placeholder="Engine version"></th>
			<th class="hidden-xs hidden-sm"><input type="text"
				class="form-control input-sm show" placeholder="CSS grade"></th>
		</tr>
	</thead>
	<tbody role="alert" aria-live="polite" aria-relevant="all">
		<tr class="odd">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Webkit</td>
			<td class=" sorting_2">Safari 1.2</td>
			<td class=" ">OSX.3</td>
			<td class="hidden-xs hidden-sm ">125.5</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Webkit</td>
			<td class=" sorting_2">Safari 1.3</td>
			<td class=" ">OSX.3</td>
			<td class="hidden-xs hidden-sm ">312.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Webkit</td>
			<td class=" sorting_2">Safari 2.0</td>
			<td class=" ">OSX.4+</td>
			<td class="hidden-xs hidden-sm ">419.3</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Webkit</td>
			<td class=" sorting_2">Safari 3.0</td>
			<td class=" ">OSX.4+</td>
			<td class="hidden-xs hidden-sm ">522.1</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Trident</td>
			<td class=" sorting_2">AOL browser (AOL desktop)</td>
			<td class=" ">Win XP</td>
			<td class="hidden-xs hidden-sm ">6</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Trident</td>
			<td class=" sorting_2">Internet Explorer 5.0</td>
			<td class=" ">Win 95+</td>
			<td class="hidden-xs hidden-sm ">5</td>
			<td class="hidden-xs hidden-sm ">C</td>
		</tr>
		<tr class="odd">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Trident</td>
			<td class=" sorting_2">Internet Explorer 5.5</td>
			<td class=" ">Win 95+</td>
			<td class="hidden-xs hidden-sm ">5.5</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Trident</td>
			<td class=" sorting_2">Internet Explorer 6</td>
			<td class=" ">Win 98+</td>
			<td class="hidden-xs hidden-sm ">6</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Trident</td>
			<td class=" sorting_2">Internet Explorer 7</td>
			<td class=" ">Win XP SP2+</td>
			<td class="hidden-xs hidden-sm ">7</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class="checkbox-column "><input type="checkbox"
				class="icheck-input"></td>
			<td class=" sorting_1">Presto</td>
			<td class=" sorting_2">Nintendo DS browser</td>
			<td class=" ">Nintendo DS</td>
			<td class="hidden-xs hidden-sm ">8.5</td>
			<td class="hidden-xs hidden-sm ">C/A</td>
		</tr>
	</tbody>
</table>
<div class="row dt-rb">
<div class="col-sm-6">
<div class="dataTables_info" id="DataTables_Table_0_info">Showing
1 to 10 of 20 entries</div>
</div>
<div class="col-sm-6">
<div class="dataTables_paginate paging_bootstrap">
<ul class="pagination">
	<li class="prev disabled"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">←
	Previous</a></li>
	<li class="active"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">1</a></li>
	<li><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">2</a></li>
	<li class="next"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">Next
	→ </a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<!-- /.table-responsive --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row -->

<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-filter"></i> Column Filtering</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="table-responsive">
<div id="DataTables_Table_1_wrapper" class="dataTables_wrapper"
	role="grid">
<div class="row dt-rt">
<div class="col-sm-6"></div>
<div class="col-sm-6"></div>
</div>
<table
	class="table table-striped table-bordered table-hover dataTable-helper dataTable datatable-columnfilter"
	data-provide="datatable" data-info="true" id="DataTables_Table_1"
	aria-describedby="DataTables_Table_1_info">
	<thead>
		<tr role="row">
			<th data-filterable="true" class="sorting_disabled"
				role="columnheader" rowspan="1" colspan="1"
				aria-label="Rendering engine" style="width: 299px;">Rendering
			engine</th>
			<th data-direction="asc" data-filterable="true"
				class="sorting_disabled" role="columnheader" rowspan="1" colspan="1"
				aria-label="Browser" style="width: 398px;">Browser</th>
			<th data-filterable="true" class="sorting_disabled"
				role="columnheader" rowspan="1" colspan="1" aria-label="Platform(s)"
				style="width: 350px;">Platform(s)</th>
			<th data-filterable="false"
				class="hidden-xs hidden-sm sorting_disabled" role="columnheader"
				rowspan="1" colspan="1" aria-label="Engine version"
				style="width: 258px;">Engine version</th>
			<th data-filterable="false"
				class="hidden-xs hidden-sm sorting_disabled" role="columnheader"
				rowspan="1" colspan="1" aria-label="CSS grade" style="width: 175px;">CSS
			grade</th>
		</tr>
		<tr cls="dataTable-filter-row">
			<th class=""><input type="text"
				class="form-control input-sm show" placeholder="Rendering engine"></th>
			<th class=""><input type="text"
				class="form-control input-sm show" placeholder="Browser"></th>
			<th class=""><input type="text"
				class="form-control input-sm show" placeholder="Platform(s)"></th>
			<th class="hidden-xs hidden-sm"><input type="text"
				class="form-control input-sm hide" placeholder="Engine version"></th>
			<th class="hidden-xs hidden-sm"><input type="text"
				class="form-control input-sm hide" placeholder="CSS grade"></th>
		</tr>
	</thead>
	<tbody role="alert" aria-live="polite" aria-relevant="all">
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" sorting_1">AOL browser (AOL desktop)</td>
			<td class=" ">Win XP</td>
			<td class="hidden-xs hidden-sm ">6</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Camino 1.0</td>
			<td class=" ">OSX.2+</td>
			<td class="hidden-xs hidden-sm ">1.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Camino 1.5</td>
			<td class=" ">OSX.3+</td>
			<td class="hidden-xs hidden-sm ">1.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Firefox 2.0</td>
			<td class=" ">Win 98+ / OSX.2+</td>
			<td class="hidden-xs hidden-sm ">1.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Firefox 3.0</td>
			<td class=" ">Win 2k+ / OSX.3+</td>
			<td class="hidden-xs hidden-sm ">1.9</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 5.0</td>
			<td class=" ">Win 95+</td>
			<td class="hidden-xs hidden-sm ">5</td>
			<td class="hidden-xs hidden-sm ">C</td>
		</tr>
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 5.5</td>
			<td class=" ">Win 95+</td>
			<td class="hidden-xs hidden-sm ">5.5</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 6</td>
			<td class=" ">Win 98+</td>
			<td class="hidden-xs hidden-sm ">6</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 7</td>
			<td class=" ">Win XP SP2+</td>
			<td class="hidden-xs hidden-sm ">7</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">KHTML</td>
			<td class=" sorting_1">Konqureror 3.1</td>
			<td class=" ">KDE 3.1</td>
			<td class="hidden-xs hidden-sm ">3.1</td>
			<td class="hidden-xs hidden-sm ">C</td>
		</tr>
		<tr class="odd">
			<td class=" ">KHTML</td>
			<td class=" sorting_1">Konqureror 3.3</td>
			<td class=" ">KDE 3.3</td>
			<td class="hidden-xs hidden-sm ">3.3</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Netscape 7.2</td>
			<td class=" ">Win 95+ / Mac OS 8.6-9.2</td>
			<td class="hidden-xs hidden-sm ">1.7</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Presto</td>
			<td class=" sorting_1">Nintendo DS browser</td>
			<td class=" ">Nintendo DS</td>
			<td class="hidden-xs hidden-sm ">8.5</td>
			<td class="hidden-xs hidden-sm ">C/A</td>
		</tr>
		<tr class="even">
			<td class=" ">Presto</td>
			<td class=" sorting_1">Nokia N800</td>
			<td class=" ">N800</td>
			<td class="hidden-xs hidden-sm ">-</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Webkit</td>
			<td class=" sorting_1">Safari 1.2</td>
			<td class=" ">OSX.3</td>
			<td class="hidden-xs hidden-sm ">125.5</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Webkit</td>
			<td class=" sorting_1">Safari 1.3</td>
			<td class=" ">OSX.3</td>
			<td class="hidden-xs hidden-sm ">312.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Webkit</td>
			<td class=" sorting_1">Safari 2.0</td>
			<td class=" ">OSX.4+</td>
			<td class="hidden-xs hidden-sm ">419.3</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Webkit</td>
			<td class=" sorting_1">Safari 3.0</td>
			<td class=" ">OSX.4+</td>
			<td class="hidden-xs hidden-sm ">522.1</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
	</tbody>
</table>
<div class="row dt-rb">
<div class="col-sm-6">
<div class="dataTables_info" id="DataTables_Table_1_info">Showing
1 to 18 of 18 entries</div>
</div>
<div class="col-sm-6"></div>
</div>
</div>
</div>
<!-- /.table-responsive --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row -->

<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-check"></i> Checkable Table</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="table-responsive">
<table
	class="table table-striped table-bordered table-hover table-checkable">
	<thead>
		<tr>
			<th class="checkbox-column"><input type="checkbox"
				class="icheck-input"></th>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input"></td>
			<td>Trident</td>
			<td>Internet Explorer 4.0</td>
			<td>Win 95+</td>
			<td>4</td>
			<td>X</td>
		</tr>
		<tr class="checked">
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input" checked=""></td>
			<td>Trident</td>
			<td>Internet Explorer 5.0</td>
			<td>Win 95+</td>
			<td>5</td>
			<td>C</td>
		</tr>
		<tr class="checked">
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input" checked=""></td>
			<td>Trident</td>
			<td>AOL browser (AOL desktop)</td>
			<td>Win XP</td>
			<td>6</td>
			<td>A</td>
		</tr>
		<tr class="">
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input"></td>
			<td>Gecko</td>
			<td>Firefox 1.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.7</td>
			<td>A</td>
		</tr>
		<tr class="">
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input"></td>
			<td>Gecko</td>
			<td>Firefox 1.5</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input"></td>
			<td>Gecko</td>
			<td>Firefox 2.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr class="checked">
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input" checked=""></td>
			<td>Gecko</td>
			<td>Firefox 3.0</td>
			<td>Win 2k+ / OSX.3+</td>
			<td>1.9</td>
			<td>A</td>
		</tr>
		<tr>
			<td class="checkbox-column"><input type="checkbox"
				class="icheck-input"></td>
			<td>Gecko</td>
			<td>Camino 1.0</td>
			<td>OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
	</tbody>
</table>
</div>
<!-- /.table-responsive --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row -->

<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-hand-o-up"></i> Table Pagination</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="table-responsive">
<div id="DataTables_Table_2_wrapper" class="dataTables_wrapper"
	role="grid">
<div class="row dt-rt">
<div class="col-sm-6"></div>
<div class="col-sm-6"></div>
</div>
<table
	class="table table-striped table-bordered table-hover dataTable-helper dataTable"
	data-provide="datatable" data-display-rows="6" data-paginate="true"
	data-info="true" id="DataTables_Table_2"
	aria-describedby="DataTables_Table_2_info">
	<thead>
		<tr role="row">
			<th class="sorting_disabled" role="columnheader" rowspan="1"
				colspan="1" aria-label="Rendering engine" style="width: 299px;">Rendering
			engine</th>
			<th class="sorting_disabled" role="columnheader" rowspan="1"
				colspan="1" aria-label="Browser" style="width: 398px;">Browser</th>
			<th class="sorting_disabled" role="columnheader" rowspan="1"
				colspan="1" aria-label="Platform(s)" style="width: 350px;">Platform(s)</th>
			<th class="sorting_disabled" role="columnheader" rowspan="1"
				colspan="1" aria-label="Engine version" style="width: 258px;">Engine
			version</th>
			<th class="sorting_disabled" role="columnheader" rowspan="1"
				colspan="1" aria-label="CSS grade" style="width: 175px;">CSS
			grade</th>
		</tr>
	</thead>
	<tbody role="alert" aria-live="polite" aria-relevant="all">
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" ">Internet Explorer 4.0</td>
			<td class=" ">Win 95+</td>
			<td class=" ">4</td>
			<td class=" ">X</td>
		</tr>
		<tr class="even">
			<td class=" ">Trident</td>
			<td class=" ">Internet Explorer 5.0</td>
			<td class=" ">Win 95+</td>
			<td class=" ">5</td>
			<td class=" ">C</td>
		</tr>
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" ">Internet Explorer 5.5</td>
			<td class=" ">Win 95+</td>
			<td class=" ">5.5</td>
			<td class=" ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Trident</td>
			<td class=" ">Internet Explorer 6</td>
			<td class=" ">Win 98+</td>
			<td class=" ">6</td>
			<td class=" ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" ">Internet Explorer 7</td>
			<td class=" ">Win XP SP2+</td>
			<td class=" ">7</td>
			<td class=" ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Trident</td>
			<td class=" ">AOL browser (AOL desktop)</td>
			<td class=" ">Win XP</td>
			<td class=" ">6</td>
			<td class=" ">A</td>
		</tr>
	</tbody>
</table>
<div class="row dt-rb">
<div class="col-sm-6">
<div class="dataTables_info" id="DataTables_Table_2_info">Showing
1 to 6 of 13 entries</div>
</div>
<div class="col-sm-6">
<div class="dataTables_paginate paging_bootstrap">
<ul class="pagination">
	<li class="prev disabled"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">←
	Previous</a></li>
	<li class="active"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">1</a></li>
	<li><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">2</a></li>
	<li><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">3</a></li>
	<li class="next"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/table-advanced.html#">Next
	→ </a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<!-- /.table-responsive --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row -->

<div class="row">
<div class="col-md-12">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-sort-alpha-asc"></i> Table Sorting</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="table-responsive">
<div id="DataTables_Table_3_wrapper" class="dataTables_wrapper"
	role="grid">
<div class="row dt-rt">
<div class="col-sm-6"></div>
<div class="col-sm-6"></div>
</div>
<table
	class="table table-striped table-bordered table-hover dataTable-helper dataTable"
	data-provide="datatable" id="DataTables_Table_3">
	<thead>
		<tr role="row">
			<th data-sortable="true" class="sorting" role="columnheader"
				tabindex="0" aria-controls="DataTables_Table_3" rowspan="1"
				colspan="1"
				aria-label="Rendering engine: activate to sort column ascending"
				style="width: 299px;">Rendering engine</th>
			<th data-sortable="true" data-direction="asc" class="sorting_asc"
				role="columnheader" tabindex="0" aria-controls="DataTables_Table_3"
				rowspan="1" colspan="1" aria-sort="ascending"
				aria-label="Browser: activate to sort column descending"
				style="width: 398px;">Browser</th>
			<th data-sortable="true" class="sorting" role="columnheader"
				tabindex="0" aria-controls="DataTables_Table_3" rowspan="1"
				colspan="1"
				aria-label="Platform(s): activate to sort column ascending"
				style="width: 350px;">Platform(s)</th>
			<th class="hidden-xs hidden-sm sorting_disabled" role="columnheader"
				rowspan="1" colspan="1" aria-label="Engine version"
				style="width: 258px;">Engine version</th>
			<th class="hidden-xs hidden-sm sorting_disabled" role="columnheader"
				rowspan="1" colspan="1" aria-label="CSS grade" style="width: 175px;">CSS
			grade</th>
		</tr>
	</thead>
	<tbody role="alert" aria-live="polite" aria-relevant="all">
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" sorting_1">AOL browser (AOL desktop)</td>
			<td class=" ">Win XP</td>
			<td class="hidden-xs hidden-sm ">6</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Camino 1.0</td>
			<td class=" ">OSX.2+</td>
			<td class="hidden-xs hidden-sm ">1.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Camino 1.5</td>
			<td class=" ">OSX.3+</td>
			<td class="hidden-xs hidden-sm ">1.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Firefox 2.0</td>
			<td class=" ">Win 98+ / OSX.2+</td>
			<td class="hidden-xs hidden-sm ">1.8</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Firefox 3.0</td>
			<td class=" ">Win 2k+ / OSX.3+</td>
			<td class="hidden-xs hidden-sm ">1.9</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 5.0</td>
			<td class=" ">Win 95+</td>
			<td class="hidden-xs hidden-sm ">5</td>
			<td class="hidden-xs hidden-sm ">C</td>
		</tr>
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 5.5</td>
			<td class=" ">Win 95+</td>
			<td class="hidden-xs hidden-sm ">5.5</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 6</td>
			<td class=" ">Win 98+</td>
			<td class="hidden-xs hidden-sm ">6</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="odd">
			<td class=" ">Trident</td>
			<td class=" sorting_1">Internet Explorer 7</td>
			<td class=" ">Win XP SP2+</td>
			<td class="hidden-xs hidden-sm ">7</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
		<tr class="even">
			<td class=" ">Gecko</td>
			<td class=" sorting_1">Netscape 7.2</td>
			<td class=" ">Win 95+ / Mac OS 8.6-9.2</td>
			<td class="hidden-xs hidden-sm ">1.7</td>
			<td class="hidden-xs hidden-sm ">A</td>
		</tr>
	</tbody>
</table>
<div class="row dt-rb">
<div class="col-sm-6"></div>
<div class="col-sm-6"></div>
</div>
</div>
</div>
<!-- /.table-responsive --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->
