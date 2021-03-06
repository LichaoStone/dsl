<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<style>
.btn,.btn-group {
	margin: 0 10px 15px 0;
}

.btn-block {
	margin-right: 0;
	margin-left: 0;
}

.btn-group .btn {
	margin: 0;
}
</style>

<script>
	$(document).ready(function() {
		$('#loading-ex-1').click(function() {
			var btn = $(this);
			btn.button('loading');
			setTimeout(function() {
				btn.button('reset');
			}, 3000);
		});
	});
</script>

<div id="content-header">
<h1>button</h1>
</div>
<div id="content-container">
<div class="row">

<div class="col-md-6 col-sm-6">

<div class="portlet">

<div class="portlet-header">

<h3><i class="fa fa-hand-o-up"></i> 常用按钮</h3>

</div>
<!-- /.portlet-header -->

<div class="portlet-content">

<button type="button" class="btn btn-default">Default</button>

<button type="button" class="btn btn-primary">Primary</button>

<button type="button" class="btn btn-secondary">Secondary</button>

<button type="button" class="btn btn-tertiary">Tertiary</button>

<button type="button" class="btn btn-link">Link</button>

<br>

<button type="button" class="btn btn-success">Success</button>

<button type="button" class="btn btn-info">Info</button>

<button type="button" class="btn btn-warning">Warning</button>

<button type="button" class="btn btn-danger">Danger</button>


</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col -->



<div class="col-md-6 col-sm-6">

<div class="portlet">

<div class="portlet-header">

<h3><i class="fa fa-hand-o-up"></i> 禁用状态</h3>

</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<button type="button" class="btn btn-default" disabled="disabled">Default</button>

<button type="button" class="btn btn-primary" disabled="disabled">Primary</button>

<button type="button" class="btn btn-secondary" disabled="disabled">Secondary</button>

<button type="button" class="btn btn-tertiary" disabled="disabled">Tertiary</button>

<button type="button" class="btn btn-link" disabled="disabled">Link</button>

<br>

<button type="button" class="btn btn-success" disabled="disabled">Success</button>

<button type="button" class="btn btn-info" disabled="disabled">Info</button>

<button type="button" class="btn btn-warning" disabled="disabled">Warning</button>

<button type="button" class="btn btn-danger" disabled="disabled">Danger</button>


</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row -->






<div class="row">

<div class="col-md-6">

<div class="portlet">

<div class="portlet-header">

<h3><i class="fa fa-hand-o-up"></i> 按钮尺寸</h3>

</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<p>
<button type="button" class="btn btn-primary btn-lg">Large
button</button>
<button type="button" class="btn btn-default btn-lg">Large
button</button>
</p>
<p>
<button type="button" class="btn btn-primary">Default button</button>
<button type="button" class="btn btn-default">Default button</button>
</p>
<p>
<button type="button" class="btn btn-primary btn-sm">Small
button</button>
<button type="button" class="btn btn-default btn-sm">Small
button</button>
</p>
<p>
<button type="button" class="btn btn-primary btn-xs">Extra
small button</button>
<button type="button" class="btn btn-default btn-xs">Extra
small button</button>
</p>

</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col -->



<div class="col-md-6">

<div class="portlet">

<div class="portlet-header">

<h3><i class="fa fa-hand-o-up"></i> 下拉按钮</h3>

</div>
<!-- /.portlet-header -->

<div class="portlet-content">

<div class="btn-group">
<button type="button" class="btn btn-primary dropdown-toggle"
	data-toggle="dropdown">Regular Dropdown <span class="caret"></span>
</button>
<ul class="dropdown-menu" role="menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>

<div class="btn-group">
<button type="button" class="btn btn-default dropdown-toggle"
	data-toggle="dropdown">Regular Dropdown <span class="caret"></span>
</button>
<ul class="dropdown-menu" role="menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>

<br>
<br>

<div class="btn-group">
<button type="button" class="btn btn-primary">Split Dropdown</button>
<button type="button" class="btn btn-primary dropdown-toggle"
	data-toggle="dropdown"><span class="caret"></span></button>
<ul class="dropdown-menu" role="menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>

<div class="btn-group">
<button type="button" class="btn btn-default">Split Dropdown</button>
<button type="button" class="btn btn-default dropdown-toggle"
	data-toggle="dropdown"><span class="caret"></span></button>
<ul class="dropdown-menu" role="menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>

<br>
<br>

<div class="btn-group dropup">
<button type="button" class="btn btn-primary">Dropup</button>
<button type="button" class="btn btn-primary dropdown-toggle"
	data-toggle="dropdown"><span class="caret"></span></button>
<ul class="dropdown-menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>

<div class="btn-group dropup">
<button type="button" class="btn btn-default">Dropup</button>
<button type="button" class="btn btn-default dropdown-toggle"
	data-toggle="dropdown"><span class="caret"></span></button>
<ul class="dropdown-menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>


</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row -->






<div class="row">

<div class="col-md-4">

<div class="portlet">

<div class="portlet-header">

<h3><i class="fa fa-hand-o-up"></i> 状态按钮</h3>

</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<button type="button" data-loading-text="Loading..." id="loading-ex-1"
	class="btn btn-tertiary">Loading state</button>

<button type="button" class="btn btn-tertiary" data-toggle="button">Single
toggle</button>

<br>
<br>

<h5>Checkbox Buttons</h5>

<div class="btn-group" data-toggle="buttons"><label
	class="btn btn-tertiary"> <input type="checkbox">
Option 1 </label> <label class="btn btn-tertiary"> <input
	type="checkbox"> Option 2 </label> <label class="btn btn-tertiary">
<input type="checkbox"> Option 3 </label></div>

<br>
<br>

<h5>Radio Button</h5>

<div class="btn-group" data-toggle="buttons"><label
	class="btn btn-tertiary"> <input type="radio" name="options"
	id="option1"> Option 1 </label> <label class="btn btn-tertiary">
<input type="radio" name="options" id="option2"> Option 2 </label> <label
	class="btn btn-tertiary"> <input type="radio" name="options"
	id="option3"> Option 3 </label></div>


</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col -->

<div class="col-md-4">

<div class="portlet">

<div class="portlet-header">

<h3><i class="fa fa-hand-o-up"></i> 按钮组</h3>

</div>
<!-- /.portlet-header -->

<div class="portlet-content">

<h5>Basic Toolbar</h5>

<div class="btn-group">
<button type="button" class="btn btn-default">Left</button>
<button type="button" class="btn btn-default">Middle</button>
<button type="button" class="btn btn-default">Right</button>
</div>

<br>

<div class="btn-group">
<button type="button" class="btn btn-default">1</button>
<button type="button" class="btn btn-default">2</button>
<button type="button" class="btn btn-default">3</button>
<button type="button" class="btn btn-default">4</button>
<button type="button" class="btn btn-default">5</button>
</div>

<br>
<br>

<h5>Toolbar Dropdown</h5>

<div class="btn-group">
<button type="button" class="btn btn-default">1</button>
<button type="button" class="btn btn-default">2</button>

<div class="btn-group">
<button type="button" class="btn btn-default dropdown-toggle"
	data-toggle="dropdown">Dropdown <span class="caret"></span></button>
<ul class="dropdown-menu">
	<li><a href="javascript:;">Dropdown link</a></li>
	<li><a href="javascript:;">Dropdown link</a></li>
</ul>
</div>
</div>


</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col -->


<div class="col-md-4">

<div class="portlet">

<div class="portlet-header">

<h3><i class="fa fa-hand-o-up"></i> 仅图标</h3>

</div>
<!-- /.portlet-header -->

<div class="portlet-content">

<button type="button" class="btn btn-sm btn-secondary"><i
	class="fa fa-star"></i></button>

<button type="button" class="btn btn-sm btn-secondary"><i
	class="fa fa-code"></i></button>

<button type="button" class="btn btn-sm btn-secondary"><i
	class="fa fa-cloud"></i></button>

<button type="button" class="btn btn-sm btn-secondary"><i
	class="fa fa-eraser"></i></button>

<button type="button" class="btn btn-sm btn-secondary"><i
	class="fa fa-check"></i></button>

<br>
<br>

<button type="button" class="btn btn-secondary"><i
	class="fa fa-star"></i></button>

<button type="button" class="btn btn-secondary"><i
	class="fa fa-code"></i></button>

<button type="button" class="btn btn-secondary"><i
	class="fa fa-cloud"></i></button>

<button type="button" class="btn btn-secondary"><i
	class="fa fa-eraser"></i></button>

<button type="button" class="btn btn-secondary"><i
	class="fa fa-check"></i></button>

<br>
<br>

<button type="button" class="btn btn-lg btn-secondary"><i
	class="fa fa-star"></i></button>

<button type="button" class="btn btn-lg btn-secondary"><i
	class="fa fa-code"></i></button>

<button type="button" class="btn btn-lg btn-secondary"><i
	class="fa fa-cloud"></i></button>

<button type="button" class="btn btn-lg btn-secondary"><i
	class="fa fa-eraser"></i></button>

<button type="button" class="btn btn-lg btn-secondary"><i
	class="fa fa-check"></i></button>

</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->
