<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid : DXImageTransform.Microsoft.gradient ( startColorstr =
		#99000000, endColorstr = #99000000 );
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
<script>
$(function () {

	$('#column-chart').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: ''
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: [
                'Jan',
                'Feb',
                'Mar',
                'Apr',
                'May',
                'Jun',
                'Jul',
                'Aug',
                'Sep',
                'Oct',
                'Nov',
                'Dec'
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Rainfall (mm)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Tokyo',
            data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

        }, {
            name: 'New York',
            data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

        }, {
            name: 'London',
            data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

        }, {
            name: 'Berlin',
            data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

        }]
    });
	
	$('#donut-chart').highcharts({
		chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: ''
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            data: [
                ['Firefox',   45.0],
                ['IE',       26.8],
                {
                    name: 'Chrome',
                    y: 12.8,
                    sliced: true,
                    selected: true
                },
                ['Safari',    8.5],
                ['Opera',     6.2],
                ['Others',   0.7]
            ]
        }]
    });

});
</script>

<div id="content-header">
<h1>dashboard</h1>
</div>
<div id="content-container">
<div>
<h4 class="heading-inline">Weekly Sales Stats &nbsp;&nbsp;<small>For
the week of Jun 15 - Jun 22, 2011</small> &nbsp;&nbsp;</h4>
<div class="btn-group ">
<button class="btn btn-default btn-sm dropdown-toggle" type="button"
	data-toggle="dropdown"><i class="fa fa-clock-o"></i> &nbsp;
Change Week <span class="caret"></span></button>
<ul class="dropdown-menu" role="menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>
</div>
<br>
<div class="row">
<div class="col-md-3 col-sm-6"><a href="javascript:;"
	class="dashboard-stat primary">
<div class="visual"><i class="fa fa-star"></i></div>
<!-- /.visual -->

<div class="details"><span class="content">New Orders</span> <span
	class="value">1,236</span></div>
<!-- /.details --> <i class="fa fa-play-circle more"></i> </a> <!-- /.dashboard-stat -->

</div>
<!-- /.col-md-3 -->

<div class="col-md-3 col-sm-6"><a href="javascript:;"
	class="dashboard-stat secondary">
<div class="visual"><i class="fa fa-shopping-cart"></i></div>
<!-- /.visual -->

<div class="details"><span class="content">Abandoned Carts</span>
<span class="value">256</span></div>
<!-- /.details --> <i class="fa fa-play-circle more"></i> </a> <!-- /.dashboard-stat -->

</div>
<!-- /.col-md-3 -->

<div class="col-md-3 col-sm-6"><a href="javascript:;"
	class="dashboard-stat tertiary">
<div class="visual"><i class="fa fa-clock-o"></i></div>
<!-- /.visual -->

<div class="details"><span class="content">Avg. Support
Time</span> <span class="value">4:37</span></div>
<!-- /.details --> <i class="fa fa-play-circle more"></i> </a> <!-- /.dashboard-stat -->

</div>
<!-- /.col-md-3 -->

<div class="col-md-3 col-sm-6"><a href="javascript:;"
	class="dashboard-stat">
<div class="visual"><i class="fa fa-money"></i></div>
<!-- /.visual -->

<div class="details"><span class="content">Total Revenue</span> <span
	class="value">$173K</span></div>
<!-- /.details --> <i class="fa fa-play-circle more"></i> </a> <!-- /.dashboard-stat -->

</div>
<!-- /.col-md-9 --></div>
<!-- /.row -->

<div class="row">
<div class="col-md-9">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-bar-chart-o"></i> Area Chart</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="pull-left">
<div class="btn-group" data-toggle="buttons"><label
	class="btn btn-sm btn-default"> <input type="radio"
	name="options" id="option1"> Day </label> <label
	class="btn btn-sm btn-default"> <input type="radio"
	name="options" id="option2"> Week </label> <label
	class="btn btn-sm btn-default active"> <input type="radio"
	name="options" id="option3"> Month </label></div>
&nbsp;
<div class="btn-group">
<button type="button" class="btn btn-sm btn-default dropdown-toggle"
	data-toggle="dropdown">Custom Date <span class="caret"></span>
</button>
<ul class="dropdown-menu">
	<li><a href="javascript:;">Dropdown link</a></li>
	<li><a href="javascript:;">Dropdown link</a></li>
</ul>
</div>
</div>
<div class="pull-right">
<div class="btn-group">
<button type="button" class="btn btn-sm btn-default dropdown-toggle"
	data-toggle="dropdown"><i class="fa fa-cog"></i> &nbsp;&nbsp;<span
	class="caret"></span></button>
<ul class="dropdown-menu pull-right" role="menu">
	<li><a href="javascript:;">Action</a></li>
	<li><a href="javascript:;">Another action</a></li>
	<li><a href="javascript:;">Something else here</a></li>
	<li class="divider"></li>
	<li><a href="javascript:;">Separated link</a></li>
</ul>
</div>
</div>
<div class="clear"></div>
<hr>
<div id="column-chart" class="chart-holder" style="height: 250px">

</div>
<!-- /#bar-chart --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="row">
<div class="col-md-6">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-money"></i> Recent Orders</h3>
<ul class="portlet-tools pull-right">
	<li>
	<button class="btn btn-sm btn-default">Add Order</button>
	</li>
</ul>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="table-responsive">
<table class="table">
	<thead>
		<tr>
			<th>Purchased On</th>
			<th>Items</th>
			<th>Amount</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>09/21/2013</td>
			<td>3</td>
			<td>$108.35</td>
			<td><a href="javascript:;" class="btn btn-xs btn-tertiary">View
			&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a></td>
		</tr>
		<tr>
			<td>09/21/2013</td>
			<td>1</td>
			<td>$30.89</td>
			<td><a href="javascript:;" class="btn btn-xs btn-tertiary">View
			&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a></td>
		</tr>
		<tr>
			<td>09/20/2013</td>
			<td>2</td>
			<td>$52.06</td>
			<td><a href="javascript:;" class="btn btn-xs btn-tertiary">View
			&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a></td>
		</tr>
		<tr>
			<td>09/19/2013</td>
			<td>4</td>
			<td>$73.54</td>
			<td><a href="javascript:;" class="btn btn-xs btn-tertiary">View
			&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a></td>
		</tr>
		<tr>
			<td>09/19/2013</td>
			<td>4</td>
			<td>$73.54</td>
			<td><a href="javascript:;" class="btn btn-xs btn-tertiary">View
			&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a></td>
		</tr>
		<tr>
			<td>09/19/2013</td>
			<td>4</td>
			<td>$73.54</td>
			<td><a href="javascript:;" class="btn btn-xs btn-tertiary">View
			&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a></td>
		</tr>
	</tbody>
</table>
</div>
<!-- /.table-responsive -->

<hr>
<a href="javascript:;" class="btn btn-sm btn-secondary">View All
Orders</a></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col-md-4 -->

<div class="col-md-6">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-group"></i> Recent Signups</h3>
<ul class="portlet-tools pull-right">
	<li>
	<button class="btn btn-sm btn-default">Add User</button>
	</li>
</ul>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="table-responsive">
<table id="user-signups" class="table table-striped table-checkable">
	<thead>
		<tr>
			<th class="checkbox-column">
			<div class="icheckbox_minimal-blue icheck-input"
				style="position: relative;"><input type="checkbox"
				id="check-all" class="icheck-input"
				style="position: absolute; opacity: 0;"> <ins
				class="iCheck-helper"
				style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			</th>
			<th class="hidden-xs">First Name</th>
			<th>Last Name</th>
			<th>Status</th>
			<th class="align-center">Approve</th>
		</tr>
	</thead>
	<tbody>
		<tr class="">
			<td class="checkbox-column">
			<div class="icheckbox_minimal-blue icheck-input"
				style="position: relative;"><input type="checkbox"
				name="actiony" value="joey" class="icheck-input"
				style="position: absolute; opacity: 0;"> <ins
				class="iCheck-helper"
				style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			</td>
			<td class="hidden-xs">Joey</td>
			<td>Greyson</td>
			<td><span class="label label-success">Approved</span></td>
			<td class="align-center"><a href="javascript:void(0);"
				class="btn btn-xs btn-primary" data-original-title="Approve"> <i
				class="fa fa-check"></i> </a></td>
		</tr>
		<tr class="">
			<td class="checkbox-column">
			<div class="icheckbox_minimal-blue icheck-input"
				style="position: relative;"><input type="checkbox"
				name="actiony" value="wolf" class="icheck-input"
				style="position: absolute; opacity: 0;"> <ins
				class="iCheck-helper"
				style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			</td>
			<td class="hidden-xs">Wolf</td>
			<td>Bud</td>
			<td><span class="label label-default">Pending</span></td>
			<td class="align-center"><a href="javascript:void(0);"
				class="btn btn-xs btn-primary" data-original-title="Approve"> <i
				class="fa fa-check"></i> </a></td>
		</tr>
		<tr class="">
			<td class="checkbox-column">
			<div class="icheckbox_minimal-blue icheck-input"
				style="position: relative;"><input type="checkbox"
				name="actiony" value="sam" class="icheck-input"
				style="position: absolute; opacity: 0;"> <ins
				class="iCheck-helper"
				style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			</td>
			<td class="hidden-xs">Sam</td>
			<td>Mitchell</td>
			<td><span class="label label-success">Approved</span></td>
			<td class="align-center"><a href="javascript:void(0);"
				class="btn btn-xs btn-primary" data-original-title="Approve"> <i
				class="fa fa-check"></i> </a></td>
		</tr>
		<tr class="">
			<td class="checkbox-column">
			<div class="icheckbox_minimal-blue icheck-input"
				style="position: relative;"><input type="checkbox"
				value="carlos" name="actiony" class="icheck-input"
				style="position: absolute; opacity: 0;"> <ins
				class="iCheck-helper"
				style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			</td>
			<td class="hidden-xs">Carlos</td>
			<td>Lopez</td>
			<td><span class="label label-success">Approved</span></td>
			<td class="align-center"><a href="javascript:void(0);"
				class="btn btn-xs btn-primary" data-original-title="Approve"> <i
				class="fa fa-check"></i> </a></td>
		</tr>
		<tr class="">
			<td class="checkbox-column">
			<div class="icheckbox_minimal-blue icheck-input"
				style="position: relative;"><input type="checkbox"
				name="actiony" value="rob" class="icheck-input"
				style="position: absolute; opacity: 0;"> <ins
				class="iCheck-helper"
				style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			</td>
			<td class="hidden-xs">Rob</td>
			<td>Johnson</td>
			<td><span class="label label-default">Pending</span></td>
			<td class="align-center"><a href="javascript:void(0);"
				class="btn btn-xs btn-primary" data-original-title="Approve"> <i
				class="fa fa-check"></i> </a></td>
		</tr>
		<tr class="">
			<td class="checkbox-column">
			<div class="icheckbox_minimal-blue icheck-input"
				style="position: relative;"><input type="checkbox"
				value="mike" name="actiony" class="icheck-input"
				style="position: absolute; opacity: 0;"> <ins
				class="iCheck-helper"
				style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			</td>
			<td class="hidden-xs">Mike</td>
			<td>Jones</td>
			<td><span class="label label-default">Pending</span></td>
			<td class="align-center"><a href="javascript:void(0);"
				class="btn btn-xs btn-primary" data-original-title="Approve"> <i
				class="fa fa-check"></i> </a></td>
		</tr>
	</tbody>
</table>
</div>
<!-- /.table-responsive -->

<hr>
Apply to Selected: &nbsp;&nbsp; <select id="apply-selected"
	name="table-select" class="ui-select2 select2-offscreen"
	style="width: 125px" tabindex="-1">
	<option value="">Select Action</option>
	<option value="approve">Approve</option>
	<option value="edit">Edit</option>
	<option value="delete">Delete</option>
</select></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col-md-4 --></div>
<!-- /.row -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-calendar"></i> Full Calendar</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div id="full-calendar" class="fc fc-ltr">
<table class="fc-header" style="width: 100%">
	<tbody>
		<tr>
			<td class="fc-header-left"><span
				class="fc-button fc-button-prev fc-state-default fc-corner-left"
				unselectable="on"><span class="fc-text-arrow">‹</span></span><span
				class="fc-button fc-button-next fc-state-default fc-corner-right"
				unselectable="on"><span class="fc-text-arrow">›</span></span></td>
			<td class="fc-header-center"><span class="fc-header-title">
			<h2>September 2014</h2>
			</span></td>
			<td class="fc-header-right"><span
				class="fc-button fc-button-month fc-state-default fc-corner-left fc-state-active"
				unselectable="on">month</span><span
				class="fc-button fc-button-agendaWeek fc-state-default"
				unselectable="on">week</span><span
				class="fc-button fc-button-agendaDay fc-state-default fc-corner-right"
				unselectable="on">day</span></td>
		</tr>
	</tbody>
</table>
<div class="fc-content" style="position: relative;">
<div class="fc-view fc-view-month fc-grid" style="position: relative"
	unselectable="on">
<div class="fc-event-container"
	style="position: absolute; z-index: 8; top: 0; left: 0">
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-red"
	style="position: absolute; left: 169px; width: 327px; top: 48px;">
<div class="fc-event-inner"><span class="fc-event-title">All
Day Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-yellow"
	style="position: absolute; left: 335px; width: 659px; top: 466px;">
<div class="fc-event-inner"><span class="fc-event-title">Long
Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-grey"
	style="position: absolute; left: 667px; width: 161px; top: 491px;">
<div class="fc-event-inner"><span class="fc-event-time">4p</span><span
	class="fc-event-title">Repeating Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-charcoal"
	style="position: absolute; left: 169px; width: 493px; top: 605px;">
<div class="fc-event-inner"><span class="fc-event-time">2p</span><span
	class="fc-event-title">Repeating Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-grey"
	style="position: absolute; left: 169px; width: 493px; top: 327px;">
<div class="fc-event-inner"><span class="fc-event-time">10:30a</span><span
	class="fc-event-title">Meeting</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-red"
	style="position: absolute; left: 3px; width: 161px; top: 605px;">
<div class="fc-event-inner"><span class="fc-event-time">12p</span><span
	class="fc-event-title">Lunch</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
</div>
<table class="fc-border-separate" style="width: 100%" cellspacing="0">
	<thead>
		<tr class="fc-first fc-last">
			<th class="fc-day-header fc-sun fc-widget-header fc-first"
				style="width: 166px;">Sun</th>
			<th class="fc-day-header fc-mon fc-widget-header"
				style="width: 166px;">Mon</th>
			<th class="fc-day-header fc-tue fc-widget-header"
				style="width: 166px;">Tue</th>
			<th class="fc-day-header fc-wed fc-widget-header"
				style="width: 166px;">Wed</th>
			<th class="fc-day-header fc-thu fc-widget-header"
				style="width: 166px;">Thu</th>
			<th class="fc-day-header fc-fri fc-widget-header"
				style="width: 166px;">Fri</th>
			<th class="fc-day-header fc-sat fc-widget-header fc-last">Sat</th>
		</tr>
	</thead>
	<tbody>
		<tr class="fc-week fc-first">
			<td
				class="fc-day fc-sun fc-widget-content fc-other-month fc-past fc-first"
				data-date="2014-08-31">
			<div style="min-height: 139px;">
			<div class="fc-day-number">31</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-mon fc-widget-content fc-past"
				data-date="2014-09-01">
			<div>
			<div class="fc-day-number">1</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-tue fc-widget-content fc-past"
				data-date="2014-09-02">
			<div>
			<div class="fc-day-number">2</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-wed fc-widget-content fc-past"
				data-date="2014-09-03">
			<div>
			<div class="fc-day-number">3</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-thu fc-widget-content fc-past"
				data-date="2014-09-04">
			<div>
			<div class="fc-day-number">4</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-fri fc-widget-content fc-past"
				data-date="2014-09-05">
			<div>
			<div class="fc-day-number">5</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-sat fc-widget-content fc-past fc-last"
				data-date="2014-09-06">
			<div>
			<div class="fc-day-number">6</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
		</tr>
		<tr class="fc-week">
			<td class="fc-day fc-sun fc-widget-content fc-past fc-first"
				data-date="2014-09-07">
			<div style="min-height: 138px;">
			<div class="fc-day-number">7</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-mon fc-widget-content fc-past"
				data-date="2014-09-08">
			<div>
			<div class="fc-day-number">8</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-tue fc-widget-content fc-past"
				data-date="2014-09-09">
			<div>
			<div class="fc-day-number">9</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-wed fc-widget-content fc-past"
				data-date="2014-09-10">
			<div>
			<div class="fc-day-number">10</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-thu fc-widget-content fc-past"
				data-date="2014-09-11">
			<div>
			<div class="fc-day-number">11</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-fri fc-widget-content fc-past"
				data-date="2014-09-12">
			<div>
			<div class="fc-day-number">12</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-sat fc-widget-content fc-past fc-last"
				data-date="2014-09-13">
			<div>
			<div class="fc-day-number">13</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
		</tr>
		<tr class="fc-week">
			<td class="fc-day fc-sun fc-widget-content fc-past fc-first"
				data-date="2014-09-14">
			<div style="min-height: 138px;">
			<div class="fc-day-number">14</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-mon fc-widget-content fc-past"
				data-date="2014-09-15">
			<div>
			<div class="fc-day-number">15</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-tue fc-widget-content fc-past"
				data-date="2014-09-16">
			<div>
			<div class="fc-day-number">16</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-wed fc-widget-content fc-past"
				data-date="2014-09-17">
			<div>
			<div class="fc-day-number">17</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-thu fc-widget-content fc-past"
				data-date="2014-09-18">
			<div>
			<div class="fc-day-number">18</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-fri fc-widget-content fc-past"
				data-date="2014-09-19">
			<div>
			<div class="fc-day-number">19</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-sat fc-widget-content fc-past fc-last"
				data-date="2014-09-20">
			<div>
			<div class="fc-day-number">20</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
		</tr>
		<tr class="fc-week">
			<td class="fc-day fc-sun fc-widget-content fc-past fc-first"
				data-date="2014-09-21">
			<div style="min-height: 138px;">
			<div class="fc-day-number">21</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 50px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-mon fc-widget-content fc-past"
				data-date="2014-09-22">
			<div>
			<div class="fc-day-number">22</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 50px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-tue fc-widget-content fc-past"
				data-date="2014-09-23">
			<div>
			<div class="fc-day-number">23</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 50px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-wed fc-widget-content fc-past"
				data-date="2014-09-24">
			<div>
			<div class="fc-day-number">24</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 50px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-thu fc-widget-content fc-past"
				data-date="2014-09-25">
			<div>
			<div class="fc-day-number">25</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 50px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-fri fc-widget-content fc-past"
				data-date="2014-09-26">
			<div>
			<div class="fc-day-number">26</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 50px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-sat fc-widget-content fc-past fc-last"
				data-date="2014-09-27">
			<div>
			<div class="fc-day-number">27</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 50px;">&nbsp;</div>
			</div>
			</div>
			</td>
		</tr>
		<tr class="fc-week">
			<td
				class="fc-day fc-sun fc-widget-content fc-today fc-state-highlight fc-first"
				data-date="2014-09-28">
			<div style="min-height: 138px;">
			<div class="fc-day-number">28</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-mon fc-widget-content fc-future"
				data-date="2014-09-29">
			<div>
			<div class="fc-day-number">29</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-tue fc-widget-content fc-future"
				data-date="2014-09-30">
			<div>
			<div class="fc-day-number">30</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-wed fc-widget-content fc-other-month fc-future"
				data-date="2014-10-01">
			<div>
			<div class="fc-day-number">1</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-thu fc-widget-content fc-other-month fc-future"
				data-date="2014-10-02">
			<div>
			<div class="fc-day-number">2</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-fri fc-widget-content fc-other-month fc-future"
				data-date="2014-10-03">
			<div>
			<div class="fc-day-number">3</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td
				class="fc-day fc-sat fc-widget-content fc-other-month fc-future fc-last"
				data-date="2014-10-04">
			<div>
			<div class="fc-day-number">4</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 25px;">&nbsp;</div>
			</div>
			</div>
			</td>
		</tr>
		<tr class="fc-week fc-last">
			<td
				class="fc-day fc-sun fc-widget-content fc-other-month fc-future fc-first"
				data-date="2014-10-05">
			<div style="min-height: 141px;">
			<div class="fc-day-number">5</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-mon fc-widget-content fc-other-month fc-future"
				data-date="2014-10-06">
			<div>
			<div class="fc-day-number">6</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-tue fc-widget-content fc-other-month fc-future"
				data-date="2014-10-07">
			<div>
			<div class="fc-day-number">7</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-wed fc-widget-content fc-other-month fc-future"
				data-date="2014-10-08">
			<div>
			<div class="fc-day-number">8</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-thu fc-widget-content fc-other-month fc-future"
				data-date="2014-10-09">
			<div>
			<div class="fc-day-number">9</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td class="fc-day fc-fri fc-widget-content fc-other-month fc-future"
				data-date="2014-10-10">
			<div>
			<div class="fc-day-number">10</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
			<td
				class="fc-day fc-sat fc-widget-content fc-other-month fc-future fc-last"
				data-date="2014-10-11">
			<div>
			<div class="fc-day-number">11</div>
			<div class="fc-day-content">
			<div style="position: relative; height: 0px;">&nbsp;</div>
			</div>
			</div>
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
</div>
</div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col-md-9 -->

<div class="col-md-3">
<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-bar-chart-o"></i> Donut Chart</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div id="donut-chart" class="chart-holder" style="height: 250px">
</div>
</div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-compass"></i> Traffic Overview</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="progress-stat">
<div class="stat-header">
<div class="stat-label">% New Visits</div>
<!-- /.stat-label -->

<div class="stat-value">77.7%</div>
<!-- /.stat-value --></div>
<!-- /stat-header -->

<div class="progress progress-striped active">
<div class="progress-bar progress-bar-primary" role="progressbar"
	aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
	style="width: 77%"><span class="sr-only">77.74% Visit Rate</span>
</div>
</div>
<!-- /.progress --></div>
<!-- /.progress-stat -->

<div class="progress-stat">
<div class="stat-header">
<div class="stat-label">% Mobile Visitors</div>
<!-- /.stat-label -->

<div class="stat-value">33.2%</div>
<!-- /.stat-value --></div>
<!-- /stat-header -->

<div class="progress progress-striped active">
<div class="progress-bar progress-bar-tertiary" role="progressbar"
	aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"
	style="width: 33%"><span class="sr-only">33% Mobile
Visitors</span></div>
</div>
<!-- /.progress --></div>
<!-- /.progress-stat -->

<div class="progress-stat">
<div class="stat-header">
<div class="stat-label">Bounce Rate</div>
<!-- /.stat-label -->

<div class="stat-value">42.7%</div>
<!-- /.stat-value --></div>
<!-- /stat-header -->

<div class="progress progress-striped active">
<div class="progress-bar progress-bar-secondary" role="progressbar"
	aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"
	style="width: 42%"><span class="sr-only">42.7% Bounce Rate</span>
</div>
</div>
<!-- /.progress --></div>
<!-- /.progress-stat --> <br>
</div>
<!-- /.portlet-content --></div>
<!-- /.portlet -->

<div class="portlet">
<div class="portlet-header">
<h3><i class="fa fa-bar-chart-o"></i> Sparkline</h3>
</div>
<!-- /.portlet-header -->

<div class="portlet-content">
<div class="row row-marginless">
<div class="spark-stat col-md-6 col-sm-6 col-xs-6">
<div id="total-visits"><canvas width="54" height="35"
	style="display: inline-block; width: 54px; height: 35px; vertical-align: top;"></canvas>
</div>
<span class="value">1,564</span>
<h5>Total Visits</h5>
</div>
<!-- /.col -->

<div class="spark-stat col-md-6 col-sm-6 col-xs-6">
<div id="new-visits"><canvas width="54" height="35"
	style="display: inline-block; width: 54px; height: 35px; vertical-align: top;"></canvas>
</div>
<span class="value">872</span>
<h5>New Visits</h5>
</div>
<!-- /.col --></div>
<!-- /.row -->

<div class="row row-marginless">
<div class="spark-stat col-md-6 col-sm-6 col-xs-6">
<div id="unique-visits"><canvas width="54" height="35"
	style="display: inline-block; width: 54px; height: 35px; vertical-align: top;"></canvas>
</div>
<span class="value">845</span>
<h5>Unique Visits</h5>
</div>
<!-- /.col -->

<div class="spark-stat col-md-6 col-sm-6 col-xs-6">
<div id="revenue-visits" data-bar-color="#c00"><canvas width="54"
	height="35"
	style="display: inline-block; width: 54px; height: 35px; vertical-align: top;"></canvas>
</div>
<span class="value">$13,492</span>
<h5>Revenue Visits</h5>
</div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->
