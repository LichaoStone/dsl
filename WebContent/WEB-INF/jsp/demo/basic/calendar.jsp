<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<div id="content-header">
<h1>calendar</h1>
</div>
<div id="content-container">


<div class="row">

<div class="col-md-8">

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
	style="position: absolute; left: 149px; width: 287px; top: 48px;">
<div class="fc-event-inner"><span class="fc-event-title">All
Day Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-yellow"
	style="position: absolute; left: 295px; width: 579px; top: 418px;">
<div class="fc-event-inner"><span class="fc-event-title">Long
Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-grey"
	style="position: absolute; left: 587px; width: 141px; top: 443px;">
<div class="fc-event-inner"><span class="fc-event-time">4p</span><span
	class="fc-event-title">Repeating Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-charcoal"
	style="position: absolute; left: 149px; width: 433px; top: 541px;">
<div class="fc-event-inner"><span class="fc-event-time">2p</span><span
	class="fc-event-title">Repeating Event</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-grey"
	style="position: absolute; left: 149px; width: 433px; top: 295px;">
<div class="fc-event-inner"><span class="fc-event-time">10:30a</span><span
	class="fc-event-title">Meeting</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
<div
	class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end fc-red"
	style="position: absolute; left: 3px; width: 141px; top: 541px;">
<div class="fc-event-inner"><span class="fc-event-time">12p</span><span
	class="fc-event-title">Lunch</span></div>
<div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
</div>
</div>
<table class="fc-border-separate" style="width: 100%" cellspacing="0">
	<thead>
		<tr class="fc-first fc-last">
			<th class="fc-day-header fc-sun fc-widget-header fc-first"
				style="width: 146px;">Sun</th>
			<th class="fc-day-header fc-mon fc-widget-header"
				style="width: 146px;">Mon</th>
			<th class="fc-day-header fc-tue fc-widget-header"
				style="width: 146px;">Tue</th>
			<th class="fc-day-header fc-wed fc-widget-header"
				style="width: 146px;">Wed</th>
			<th class="fc-day-header fc-thu fc-widget-header"
				style="width: 146px;">Thu</th>
			<th class="fc-day-header fc-fri fc-widget-header"
				style="width: 146px;">Fri</th>
			<th class="fc-day-header fc-sat fc-widget-header fc-last">Sat</th>
		</tr>
	</thead>
	<tbody>
		<tr class="fc-week fc-first">
			<td
				class="fc-day fc-sun fc-widget-content fc-other-month fc-past fc-first"
				data-date="2014-08-31">
			<div style="min-height: 123px;">
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
			<div style="min-height: 122px;">
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
			<div style="min-height: 122px;">
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
			<div style="min-height: 122px;">
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
			<div style="min-height: 122px;">
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
			<div style="min-height: 121px;">
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
<!-- /#full-calendar --></div>
<!-- /.portlet-content --></div>
<!-- /.portlet --></div>
<!-- /.col-md-8 -->



<div class="col-md-4">

<div class="well">

<div id="external-events">
<h4>Add an Event</h4>

<form id="event-form" class="form">
<div class="form-group"><input type="text" value=""
	class="form-control" placeholder="Event Title..." id="event_title">
</div>
<!-- /.form-group -->

<div class="form-group"><select id="event_category"
	name="event_category" class="form-control">
	<option value="fc-red">Red Event</option>
	<option value="fc-yellow">Yellow Event</option>
	<option value="fc-grey">Grey Event</option>
	<option value="fc-charcoal">Charcoal Event</option>
</select></div>
<!-- /.form-group -->

<div class="form-group">
<button type="submit" id="event_add" class="btn btn-tertiary btn-sm">Add
Event</button>
</div>
<!-- /.form-group --></form>

<hr>

<h4>Draggable Events</h4>


<div id="event_box">
<div class="external-event label ui-draggable fc-red"
	data-category="fc-red" style="position: relative;">My Event 1</div>
<div class="external-event label ui-draggable fc-yellow"
	data-category="fc-yellow" style="position: relative;">My Event 2</div>
<div class="external-event label ui-draggable fc-grey"
	data-category="fc-grey" style="position: relative;">My Event 3</div>
<div class="external-event label ui-draggable fc-charcoal"
	data-category="fc-charcoal" style="position: relative;">My Event
4</div>
</div>
</div>

</div>
<!-- /.well --></div>
<!-- /.col-md-4 --></div>
<!-- /.row --></div>
<!-- /#content-container -->
