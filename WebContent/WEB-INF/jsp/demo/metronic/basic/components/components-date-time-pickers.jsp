<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>日期时间插件</title>
</head>
<body>
<lambo:link path="global/plugins/bootstrap-daterangepicker/daterangepicker.css,
					global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css,
					global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css,
					global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css,
					global/plugins/clockface/css/clockface.css" />
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Date & Time Pickers
    <small>date, datetime and daterange pickers</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：日期、时间选择框
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.css">
					global/plugins/bootstrap-daterangepicker/daterangepicker.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css">
					global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css">
					global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css">
					global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/clockface/css/clockface.css">
					global/plugins/clockface/css/clockface.css
				</a><br>
				
				<a target="_blank" href = "/theme/assets/global/plugins/moment.min.js">
					global/plugins/moment.min.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js">
					global/plugins/bootstrap-daterangepicker/daterangepicker.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js">
					global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js">
					global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js">
					global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js
				</a><br>
				<a target="_blank" href = "/theme/assets/global/plugins/clockface/js/clockface.js">
					global/plugins/clockface/js/clockface.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a target="_blank" href = "/theme/assets/pages/scripts/components-date-time-pickers.js">
					pages/scripts/components-date-time-pickers.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://vadimg.com/twitter-bootstrap-wizard-example" target="_blank">官方文档</a>
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
                    <i class="icon-pin font-red"></i>
                    <span class="caption-subject font-red sbold uppercase">Date Pickers</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn red btn-outline btn-circle btn-sm uppercase sbold" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="javascript:;"> Option 1</a>
                            </li>
                            <li class="divider"> </li>
                            <li>
                                <a href="javascript:;">Option 2</a>
                            </li>
                            <li>
                                <a href="javascript:;">Option 3</a>
                            </li>
                            <li>
                                <a href="javascript:;">Option 4</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default Datepicker</label>
                            <div class="col-md-3">
                                <input class="form-control form-control-inline input-medium date-picker" size="16" type="text" value="" />
                                <span class="help-block"> Select date </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Disable Past Dates</label>
                            <div class="col-md-3">
                                <div class="input-group input-medium date date-picker" data-date-format="dd-mm-yyyy" data-date-start-date="+0d">
                                    <input type="text" class="form-control" readonly>
                                    <span class="input-group-btn">
                                        <button class="btn default" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                                <span class="help-block"> Select date </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Start With Years</label>
                            <div class="col-md-3">
                                <div class="input-group input-medium date date-picker" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-viewmode="years">
                                    <input type="text" class="form-control" readonly>
                                    <span class="input-group-btn">
                                        <button class="btn default" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                                <span class="help-block"> Select date </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Months Only</label>
                            <div class="col-md-3">
                                <div class="input-group input-medium date date-picker" data-date="10/2012" data-date-format="mm/yyyy" data-date-viewmode="years" data-date-minviewmode="months">
                                    <input type="text" class="form-control" readonly>
                                    <span class="input-group-btn">
                                        <button class="btn default" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                                <span class="help-block"> Select month only </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Date Range</label>
                            <div class="col-md-4">
                                <div class="input-group input-large date-picker input-daterange" data-date="10/11/2012" data-date-format="mm/dd/yyyy">
                                    <input type="text" class="form-control" name="from">
                                    <span class="input-group-addon"> to </span>
                                    <input type="text" class="form-control" name="to"> </div>
                                <!-- /input-group -->
                                <span class="help-block"> Select date range </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Inline</label>
                            <div class="col-md-3">
                                <div class="date-picker" data-date-format="mm/dd/yyyy"> </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3"></label>
                            <div class="col-md-3">
                                <a class="btn green btn-outline sbold uppercase" href="#form_modal2" data-toggle="modal"> View Datepicker in modal
                                    <i class="fa fa-share"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="form_modal2" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Datepickers In Modal</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Default Datepicker</label>
                                        <div class="col-md-8">
                                            <input class="form-control input-medium date-picker" size="16" type="text" value="" /> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Disable Past Dates</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-medium date date-picker" data-date-format="dd-mm-yyyy" data-date-start-date="+0d">
                                                <input type="text" class="form-control" readonly>
                                                <span class="input-group-btn">
                                                    <button class="btn default" type="button">
                                                        <i class="fa fa-calendar"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <!-- /input-group -->
                                            <span class="help-block"> Select date </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Start With Years</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-medium date date-picker" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-viewmode="years">
                                                <input type="text" class="form-control" readonly>
                                                <span class="input-group-btn">
                                                    <button class="btn default" type="button">
                                                        <i class="fa fa-calendar"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <!-- /input-group -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Months Only</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-medium date date-picker" data-date="10/2012" data-date-format="mm/yyyy" data-date-viewmode="years" data-date-minviewmode="months">
                                                <input type="text" class="form-control" readonly>
                                                <span class="input-group-btn">
                                                    <button class="btn default" type="button">
                                                        <i class="fa fa-calendar"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <!-- /input-group -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Date Range</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-medium date-picker input-daterange" data-date="10/11/2012" data-date-format="mm/dd/yyyy">
                                                <input type="text" class="form-control" name="from">
                                                <span class="input-group-addon"> to </span>
                                                <input type="text" class="form-control" name="to"> </div>
                                            <!-- /input-group -->
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button class="btn dark btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
                                <button class="btn green" data-dismiss="modal">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END FORM-->
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
                    <i class="icon-pin font-blue"></i>
                    <span class="caption-subject font-blue sbold uppercase">Datetime Pickers</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-outline grey-salsa btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">New</label>
                        <label class="btn btn-outline grey-salsa btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Returning</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default Datetimepicker</label>
                            <div class="col-md-4">
                                <div class="input-group date form_datetime">
                                    <input type="text" size="16" readonly class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn default date-set" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Advance Datetimepicker</label>
                            <div class="col-md-4">
                                <div class="input-group date form_datetime" data-date="2012-12-21T15:25:00Z">
                                    <input type="text" size="16" readonly class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn default date-reset" type="button">
                                            <i class="fa fa-times"></i>
                                        </button>
                                        <button class="btn default date-set" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Meridian Format</label>
                            <div class="col-md-4">
                                <div class="input-group date form_meridian_datetime" data-date="2012-12-21T15:25:00Z">
                                    <input type="text" size="16" class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn default date-reset" type="button">
                                            <i class="fa fa-times"></i>
                                        </button>
                                        <button class="btn default date-set" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Inline</label>
                            <div class="col-md-4">
                                <div class="form_datetime" data-date="2012-12-21T15:25:00Z"> </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3"></label>
                            <div class="col-md-4">
                                <a class="btn btn-outline red" href="#form_modal1" data-toggle="modal"> View Datetimepicker in modal
                                    <i class="fa fa-share"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn grey-salsa btn-outline">
                                    <i class="fa fa-check"></i> Submit</button>
                                <button type="button" class="btn green">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="form_modal1" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Datetimepicker in Modal</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Default Datetimepicker</label>
                                        <div class="col-md-8">
                                            <div class="input-group date form_datetime input-large">
                                                <input type="text" size="16" readonly class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn default date-set" type="button">
                                                        <i class="fa fa-calendar"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <!-- /input-group -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Advance Datetimepicker</label>
                                        <div class="col-md-8">
                                            <div class="input-group date form_datetime input-large" data-date="2012-12-21T15:25:00Z">
                                                <input type="text" size="16" readonly class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn default date-reset" type="button">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                    <button class="btn default date-set" type="button">
                                                        <i class="fa fa-calendar"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <!-- /input-group -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Meridian Format</label>
                                        <div class="col-md-8">
                                            <div class="input-group date form_meridian_datetime input-large" data-date="2012-12-21T15:25:00Z">
                                                <input type="text" size="16" class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn default date-reset" type="button">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                    <button class="btn default date-set" type="button">
                                                        <i class="fa fa-calendar"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <!-- /input-group -->
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button class="btn grey-salsa btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
                                <button class="btn green btn-primary" data-dismiss="modal">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Time Pickers </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body form">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default Timepicker</label>
                            <div class="col-md-3">
                                <div class="input-icon">
                                    <i class="fa fa-clock-o"></i>
                                    <input type="text" class="form-control timepicker timepicker-default"> </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Without Seconds</label>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <input type="text" class="form-control timepicker timepicker-no-seconds">
                                    <span class="input-group-btn">
                                        <button class="btn default" type="button">
                                            <i class="fa fa-clock-o"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">24hr Timepicker</label>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <input type="text" class="form-control timepicker timepicker-24">
                                    <span class="input-group-btn">
                                        <button class="btn default" type="button">
                                            <i class="fa fa-clock-o"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3"></label>
                            <div class="col-md-3">
                                <a class="btn dark btn-outline" href="#form_modal4" data-toggle="modal"> View Timepicker in modal
                                    <i class="fa fa-share"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="form_modal4" class="modal fade" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Timepickers In Modal</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Default Timepicker</label>
                                        <div class="col-md-5">
                                            <div class="input-icon">
                                                <i class="fa fa-clock-o"></i>
                                                <input type="text" class="form-control timepicker timepicker-default"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Without Seconds</label>
                                        <div class="col-md-5">
                                            <div class="input-group">
                                                <input type="text" class="form-control timepicker timepicker-no-seconds">
                                                <span class="input-group-btn">
                                                    <button class="btn default" type="button">
                                                        <i class="fa fa-clock-o"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">24hr Timepicker</label>
                                        <div class="col-md-5">
                                            <div class="input-group">
                                                <input type="text" class="form-control timepicker timepicker-24">
                                                <span class="input-group-btn">
                                                    <button class="btn default" type="button">
                                                        <i class="fa fa-clock-o"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button class="btn dark btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
                                <button class="btn green btn-primary" data-dismiss="modal">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Daterange Pickers </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default Date Ranges</label>
                            <div class="col-md-4">
                                <div class="input-group" id="defaultrange">
                                    <input type="text" class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn default date-range-toggle" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label class="control-label col-md-3">Advance Date Ranges</label>
                            <div class="col-md-4">
                                <div id="reportrange" class="btn default">
                                    <i class="fa fa-calendar"></i> &nbsp;
                                    <span> </span>
                                    <b class="fa fa-angle-down"></b>
                                </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3"></label>
                            <div class="col-md-4">
                                <a class="btn green btn-outline" href="#daterangepicker_modal" data-toggle="modal"> View Daterange Picker in modal
                                    <i class="fa fa-share"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn red">
                                    <i class="fa fa-check"></i> Submit</button>
                                <button type="button" class="btn default">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="daterangepicker_modal" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Daterange Picker in Modal</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Default Date Ranges</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-large" id="defaultrange_modal">
                                                <input type="text" class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn default date-range-toggle" type="button">
                                                        <i class="fa fa-calendar"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button class="btn dark btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
                                <button class="btn green btn-primary" data-dismiss="modal">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i> Clockface Time Pickers </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                </div>
            </div>
            <div class="portlet-body form">
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Input</label>
                            <div class="col-md-3">
                                <input type="text" value="2:30 PM" data-format="hh:mm A" class="form-control clockface_1" /> </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Button</label>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <input type="text" id="clockface_2" value="14:30" class="form-control" readonly="" />
                                    <span class="input-group-btn">
                                        <button class="btn default" type="button" id="clockface_2_toggle">
                                            <i class="fa fa-clock-o"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Inline</label>
                            <div class="col-md-4">
                                <div class="well clockface_3" style="padding: 0; width: 162px;"> </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3"></label>
                            <div class="col-md-3">
                                <a class="btn dark btn-outline" href="#form_modal5" data-toggle="modal"> View Clockface Time Pickers in modal
                                    <i class="fa fa-share"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="form_modal5" class="modal fade" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Clockface In Modal</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Input</label>
                                        <div class="col-md-4">
                                            <input type="text" value="2:30 PM" data-format="hh:mm A" class="form-control clockface_1" /> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Button</label>
                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <input type="text" id="clockface_2_modal" value="14:30" class="form-control" readonly="" />
                                                <span class="input-group-btn">
                                                    <button class="btn default" type="button" id="clockface_2_modal_toggle">
                                                        <i class="fa fa-clock-o"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Inline</label>
                                        <div class="col-md-4">
                                            <div class="well clockface_3" style="padding: 0; width: 162px;"> </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button class="btn default" data-dismiss="modal" aria-hidden="true">Close</button>
                                <button class="btn green" data-dismiss="modal">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<lambo:script path="global/plugins/moment.min.js,
					global/plugins/bootstrap-daterangepicker/daterangepicker.js,
					global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js,
					global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js,
					global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js,
					global/plugins/clockface/js/clockface.js" />
<lambo:script path="pages/scripts/components-date-time-pickers.js" />
</body>