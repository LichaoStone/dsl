<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>最大长度</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Bootstrap Maxlength
    <small>bootstrap maxlength</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：限制input框输入内容的最大长度
			</p>
			<br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.js" target="_blank" >
					global/plugins/bootstrap-maxlength/bootstrap-maxlength.js
				</a>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/components-bootstrap-maxlength.js" target="_blank" >
					pages/scripts/components-bootstrap-maxlength.js
				</a>
		    </p><br>
		    <p> 更多资料：
		        <a href="http://mimo84.github.io/bootstrap-maxlength/" target="_blank">官方文档</a>
		    </p><br>
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
                    <i class="icon-bubble font-green"></i>
                    <span class="caption-subject font-green sbold uppercase">Bootstrap Input MaxLength</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn green btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
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
                            <label class="control-label col-md-3">Default usage</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_defaultconfig">
                                <span class="help-block"> Maxlength is 25 chars. The badge will show up by default when the remaining chars are 10 or less. </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Change the threshold value</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_thresholdconfig">
                                <span class="help-block"> Maxlength is 25 chars. Do you want the badge to show up when there are 20 chars or less? Use the threshold option: <code>threshold: 20</code> </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Advance usage</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_alloptions">
                                <span class="help-block"> This is a complete example where all the options configured for the bootstrap-maxlength counter are setted. Please note: if the <code>alwaysShow</code> option is enabled, the <code>threshold</code> </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Textarea</label>
                            <div class="col-md-9">
                                <textarea id="maxlength_textarea" class="form-control" maxlength="225" rows="2" placeholder="This textarea has a limit of 225 chars."></textarea>
                                <span class="help-block"> Bootstrap maxlength supports textarea as well as inputs. Even on old IE. </span>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Position</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_placement">
                                <span class="help-block"> The field counter can be positioned at the top, bottom, left or right. You can also place the maxlength indicator on the corners: <code>bottom-right</code>, <code>top-right</code>, <code>top-left</code>,
                                    <code>bottom-left</code> and <code>centered-right</code>. All you need to do is specify the <code>placement</code> option, with one of those strings. </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <a href="javascript:;" class="btn green">
                                    <i class="fa fa-check"></i> Submit</a>
                                <a href="javascript:;" class="btn btn-outline grey-salsa">Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/bootstrap-maxlength/bootstrap-maxlength.js" />
<lambo:script path="pages/scripts/components-bootstrap-maxlength.js" />

</body>