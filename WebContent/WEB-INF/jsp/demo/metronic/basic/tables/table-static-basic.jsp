<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Static basic table</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> 普通表格
    <small>普通表格示例</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-social-dribbble font-green"></i>
                    <span class="caption-subject font-green bold uppercase">普通表格</span>
                </div>
                <div class="actions">
                    <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                        <i class="icon-cloud-upload"></i>
                    </a>
                    <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                        <i class="icon-wrench"></i>
                    </a>
                    <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                        <i class="icon-trash"></i>
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th> Username </th>
                                <th> Status </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> 1 </td>
                                <td> Mark </td>
                                <td> Otto </td>
                                <td> makr124 </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td> Jacob </td>
                                <td> Nilson </td>
                                <td> jac123 </td>
                                <td>
                                    <span class="label label-sm label-info"> Pending </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td> Larry </td>
                                <td> Cooper </td>
                                <td> lar </td>
                                <td>
                                    <span class="label label-sm label-warning"> Suspended </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 4 </td>
                                <td> Sandy </td>
                                <td> Lim </td>
                                <td> sanlim </td>
                                <td>
                                    <span class="label label-sm label-danger"> Blocked </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN BORDERED TABLE PORTLET-->
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-dark"></i>
                    <span class="caption-subject font-dark bold uppercase">Bordered Table</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn dark btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
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
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th> Username </th>
                                <th> Status </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="2"> 1 </td>
                                <td> Mark </td>
                                <td> Otto </td>
                                <td> makr124 </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr>
                                <td> Jacob </td>
                                <td> Nilson </td>
                                <td> jac123 </td>
                                <td>
                                    <span class="label label-sm label-info"> Pending </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td> Larry </td>
                                <td> Cooper </td>
                                <td> lar </td>
                                <td>
                                    <span class="label label-sm label-warning"> Suspended </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td> Sandy </td>
                                <td> Lim </td>
                                <td> sanlim </td>
                                <td>
                                    <span class="label label-sm label-danger"> Blocked </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END BORDERED TABLE PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-comments"></i>Striped Table </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th> Username </th>
                                <th> Status </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> 1 </td>
                                <td> Mark </td>
                                <td> Otto </td>
                                <td> makr124 </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td> Jacob </td>
                                <td> Nilson </td>
                                <td> jac123 </td>
                                <td>
                                    <span class="label label-sm label-info"> Pending </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td> Larry </td>
                                <td> Cooper </td>
                                <td> lar </td>
                                <td>
                                    <span class="label label-sm label-warning"> Suspended </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 4 </td>
                                <td> Sandy </td>
                                <td> Lim </td>
                                <td> sanlim </td>
                                <td>
                                    <span class="label label-sm label-danger"> Blocked </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN CONDENSED TABLE PORTLET-->
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-picture"></i>Condensed Table </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-condensed table-hover">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th> Username </th>
                                <th> Status </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> 1 </td>
                                <td> Mark </td>
                                <td> Otto </td>
                                <td> makr124 </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td> Jacob </td>
                                <td> Nilson </td>
                                <td> jac123 </td>
                                <td>
                                    <span class="label label-sm label-info"> Pending </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td> Larry </td>
                                <td> Cooper </td>
                                <td> lar </td>
                                <td>
                                    <span class="label label-sm label-warning"> Suspended </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 4 </td>
                                <td> Sandy </td>
                                <td> Lim </td>
                                <td> sanlim </td>
                                <td>
                                    <span class="label label-sm label-danger"> Blocked </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 5 </td>
                                <td> Sandy </td>
                                <td> Lim </td>
                                <td> sanlim </td>
                                <td>
                                    <span class="label label-sm label-danger"> Blocked </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END CONDENSED TABLE PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-settings font-red"></i>
                    <span class="caption-subject font-red sbold uppercase">Light Table 1</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                        <label class="btn btn-transparent red btn-outline btn-circle btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-hover table-light">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th> Username </th>
                                <th> Status </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> 1 </td>
                                <td> Mark </td>
                                <td> Otto </td>
                                <td> makr124 </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td> Jacob </td>
                                <td> Nilson </td>
                                <td> jac123 </td>
                                <td>
                                    <span class="label label-sm label-info"> Pending </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td> Larry </td>
                                <td> Cooper </td>
                                <td> lar </td>
                                <td>
                                    <span class="label label-sm label-warning"> Suspended </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 4 </td>
                                <td> Sandy </td>
                                <td> Lim </td>
                                <td> sanlim </td>
                                <td>
                                    <span class="label label-sm label-danger"> Blocked </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN BORDERED TABLE PORTLET-->
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-settings font-red"></i>
                    <span class="caption-subject font-red sbold uppercase">Light Table 2</span>
                </div>
                <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label class="btn grey-salsa btn-sm active">
                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                        <label class="btn grey-salsa btn-sm">
                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable table-scrollable-borderless">
                    <table class="table table-hover table-light">
                        <thead>
                            <tr class="uppercase">
                                <th> # </th>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th> Username </th>
                                <th> Status </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> 1 </td>
                                <td> Mark </td>
                                <td> Otto </td>
                                <td> makr124 </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td> Jacob </td>
                                <td> Nilson </td>
                                <td> jac123 </td>
                                <td>
                                    <span class="label label-sm label-info"> Pending </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td> Larry </td>
                                <td> Cooper </td>
                                <td> lar </td>
                                <td>
                                    <span class="label label-sm label-warning"> Suspended </span>
                                </td>
                            </tr>
                            <tr>
                                <td> 4 </td>
                                <td> Sandy </td>
                                <td> Lim </td>
                                <td> sanlim </td>
                                <td>
                                    <span class="label label-sm label-danger"> Blocked </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END BORDERED TABLE PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-comments"></i>Contextual Rows </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> Class Name </th>
                                <th> Column </th>
                                <th> Column </th>
                                <th> Column </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="active">
                                <td> 1 </td>
                                <td> active </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                            </tr>
                            <tr class="success">
                                <td> 2 </td>
                                <td> success </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                            </tr>
                            <tr class="warning">
                                <td> 3 </td>
                                <td> warning </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                            </tr>
                            <tr class="danger">
                                <td> 4 </td>
                                <td> danger </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                                <td> Column heading </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-comments"></i>Contextual Columns </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> Column </th>
                                <th> Column </th>
                                <th> Column </th>
                                <th> Column </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> 1 </td>
                                <td class="active"> active </td>
                                <td class="success"> success </td>
                                <td class="warning"> warning </td>
                                <td class="danger"> danger </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td class="active"> active </td>
                                <td class="success"> success </td>
                                <td class="warning"> warning </td>
                                <td class="danger"> danger </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td class="active"> active </td>
                                <td class="success"> success </td>
                                <td class="warning"> warning </td>
                                <td class="danger"> danger </td>
                            </tr>
                            <tr>
                                <td> 4 </td>
                                <td class="active"> active </td>
                                <td class="success"> success </td>
                                <td class="warning"> warning </td>
                                <td class="danger"> danger </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-bell-o"></i>Advance Table </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-advance table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <i class="fa fa-briefcase"></i> Company </th>
                                <th class="hidden-xs">
                                    <i class="fa fa-user"></i> Contact </th>
                                <th>
                                    <i class="fa fa-shopping-cart"></i> Total </th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="highlight">
                                    <div class="success"></div>
                                    <a href="javascript:;"> RedBull </a>
                                </td>
                                <td class="hidden-xs"> Mike Nilson </td>
                                <td> 2560.60$ </td>
                                <td>
                                    <a href="javascript:;" class="btn btn-outline btn-circle btn-sm purple">
                                        <i class="fa fa-edit"></i> Edit </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="highlight">
                                    <div class="info"> </div>
                                    <a href="javascript:;"> Google </a>
                                </td>
                                <td class="hidden-xs"> Adam Larson </td>
                                <td> 560.60$ </td>
                                <td>
                                    <a href="javascript:;" class="btn btn-outline btn-circle dark btn-sm black">
                                        <i class="fa fa-trash-o"></i> Delete </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="highlight">
                                    <div class="success"> </div>
                                    <a href="javascript:;"> Apple </a>
                                </td>
                                <td class="hidden-xs"> Daniel Kim </td>
                                <td> 3460.60$ </td>
                                <td>
                                    <a href="javascript:;" class="btn btn-outline btn-circle green btn-sm purple">
                                        <i class="fa fa-edit"></i> Edit </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="highlight">
                                    <div class="warning"> </div>
                                    <a href="javascript:;"> Microsoft </a>
                                </td>
                                <td class="hidden-xs"> Nick </td>
                                <td> 2560.60$ </td>
                                <td>
                                    <a href="javascript:;" class="btn btn-outline btn-circle red btn-sm blue">
                                        <i class="fa fa-share"></i> Share </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
    <div class="col-md-6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-shopping-cart"></i>Advance Table </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"> </a>
                    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                    <a href="javascript:;" class="reload"> </a>
                    <a href="javascript:;" class="remove"> </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-advance table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <i class="fa fa-briefcase"></i> From </th>
                                <th class="hidden-xs">
                                    <i class="fa fa-question"></i> Descrition </th>
                                <th>
                                    <i class="fa fa-bookmark"></i> Total </th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <a href="javascript:;"> Pixel Ltd </a>
                                </td>
                                <td class="hidden-xs"> Server hardware purchase </td>
                                <td> 52560.10$
                                    <span class="label label-sm label-success label-mini"> Paid </span>
                                </td>
                                <td>
                                    <a href="javascript:;" class="btn dark btn-sm btn-outline sbold uppercase">
                                        <i class="fa fa-share"></i> View </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:;"> Smart House </a>
                                </td>
                                <td class="hidden-xs"> Office furniture purchase </td>
                                <td> 5760.00$
                                    <span class="label label-sm label-warning label-mini"> Pending </span>
                                </td>
                                <td>
                                    <a href="javascript:;" class="btn dark btn-sm btn-outline sbold uppercase">
                                        <i class="fa fa-share"></i> View </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:;"> FoodMaster Ltd </a>
                                </td>
                                <td class="hidden-xs"> Company Anual Dinner Catering </td>
                                <td> 12400.00$
                                    <span class="label label-sm label-success label-mini"> Paid </span>
                                </td>
                                <td>
                                    <a href="javascript:;" class="btn dark btn-sm btn-outline sbold uppercase">
                                        <i class="fa fa-share"></i> View </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:;"> WaterPure Ltd </a>
                                </td>
                                <td class="hidden-xs"> Payment for Jan 2013 </td>
                                <td> 610.50$
                                    <span class="label label-sm label-danger label-mini"> Overdue </span>
                                </td>
                                <td>
                                    <a href="javascript:;" class="btn dark btn-sm btn-outline sbold uppercase">
                                        <i class="fa fa-share"></i> View </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>
</body>