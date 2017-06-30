<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<div id="content-header">
<h1>基本表格样式</h1>
</div>
<div id="content-container">


<div class="row">

<div class="col-md-6">


<h4 class="heading">Light Bordered Table</h4>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Larry</td>
			<td>Smith</td>
			<td>@lsmith</td>
			<td><span class="label label-primary">Approved</span></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Mark</td>
			<td>Williams</td>
			<td>@mwills</td>
			<td><span class="label label-secondary">Pending</span></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Jeremy</td>
			<td>Jones</td>
			<td>@jj</td>
			<td><span class="label label-success">Success</span></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Carlos</td>
			<td>Martin</td>
			<td>@cmar</td>
			<td><span class="label label-default">Suspended</span></td>
		</tr>
	</tbody>
</table>

</div>
<!-- /.col -->

<div class="col-md-6">

<h4 class="heading">Dark Bordered Table</h4>

<table class="table table-bordered table-highlight">
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Larry</td>
			<td>Smith</td>
			<td>@lsmith</td>
			<td><span class="label label-primary">Approved</span></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Mark</td>
			<td>Williams</td>
			<td>@mwills</td>
			<td><span class="label label-secondary">Pending</span></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Jeremy</td>
			<td>Jones</td>
			<td>@jj</td>
			<td><span class="label label-success">Success</span></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Carlos</td>
			<td>Martin</td>
			<td>@cmar</td>
			<td><span class="label label-default">Suspended</span></td>
		</tr>
	</tbody>
</table>

</div>
<!-- /.col --></div>
<!-- /.row -->


<div class="row">

<div class="col-md-6">

<h4 class="heading">Basic Table</h4>

<table class="table">
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Larry</td>
			<td>Smith</td>
			<td>@lsmith</td>
			<td><span class="label label-primary">Approved</span></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Mark</td>
			<td>Williams</td>
			<td>@mwills</td>
			<td><span class="label label-secondary">Pending</span></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Jeremy</td>
			<td>Jones</td>
			<td>@jj</td>
			<td><span class="label label-success">Success</span></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Carlos</td>
			<td>Martin</td>
			<td>@cmar</td>
			<td><span class="label label-default">Suspended</span></td>
		</tr>
	</tbody>
</table>

</div>
<!-- /.col -->

<div class="col-md-6">

<h4 class="heading">Condensed Table</h4>

<table class="table table-condensed">
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Larry</td>
			<td>Smith</td>
			<td>@lsmith</td>
			<td><span class="label label-primary">Approved</span></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Mark</td>
			<td>Williams</td>
			<td>@mwills</td>
			<td><span class="label label-secondary">Pending</span></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Jeremy</td>
			<td>Jones</td>
			<td>@jj</td>
			<td><span class="label label-success">Success</span></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Carlos</td>
			<td>Martin</td>
			<td>@cmar</td>
			<td><span class="label label-default">Suspended</span></td>
		</tr>
	</tbody>
</table>

</div>
<!-- /.col --></div>
<!-- /.row -->


<div class="row">

<div class="col-md-6">

<h4 class="heading"><i class="fa fa-table"></i> Hover Rows</h4>

<table class="table table-hover">
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Larry</td>
			<td>Smith</td>
			<td>@lsmith</td>
			<td><span class="label label-primary">Approved</span></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Mark</td>
			<td>Williams</td>
			<td>@mwills</td>
			<td><span class="label label-secondary">Pending</span></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Jeremy</td>
			<td>Jones</td>
			<td>@jj</td>
			<td><span class="label label-success">Success</span></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Carlos</td>
			<td>Martin</td>
			<td>@cmar</td>
			<td><span class="label label-default">Suspended</span></td>
		</tr>
	</tbody>
</table>

</div>
<!-- /.col -->

<div class="col-md-6">

<h4 class="heading">Striped Table</h4>

<table class="table table-striped">
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Larry</td>
			<td>Smith</td>
			<td>@lsmith</td>
			<td><span class="label label-primary">Approved</span></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Mark</td>
			<td>Williams</td>
			<td>@mwills</td>
			<td><span class="label label-secondary">Pending</span></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Jeremy</td>
			<td>Jones</td>
			<td>@jj</td>
			<td><span class="label label-success">Success</span></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Carlos</td>
			<td>Martin</td>
			<td>@cmar</td>
			<td><span class="label label-default">Suspended</span></td>
		</tr>
	</tbody>
</table>

</div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->
