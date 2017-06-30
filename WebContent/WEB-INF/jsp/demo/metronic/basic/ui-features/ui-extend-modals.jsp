<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>Extend modals</title>
</head>
<body>

<lambo:link path="global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css,
			      global/plugins/bootstrap-modal/css/bootstrap-modal.css" />

<!-- BEGIN PAGE TITLE-->
<h3 class="page-title">  模态框扩展
    <small>extended bootstrap modals</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE BANNER-->
<div class="row">
	<div class="col-md-12">
		<div class="note note-success note-bordered">
			<p>
				用途：模态框扩展
			</p><br>
			<p>
		    	插件的css与js:<br>
		    	<a href="/theme/assets/global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" target="_blank">
					global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-modal/css/bootstrap-modal.css" target="_blank">
					global/plugins/bootstrap-modal/css/bootstrap-modal.css
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" target="_blank">
					global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js
				</a><br>
				<a href="/theme/assets/global/plugins/bootstrap-modal/js/bootstrap-modal.js" target="_blank">
					global/plugins/bootstrap-modal/js/bootstrap-modal.js
				</a><br>
			</p><br>
			<p>
				本demo页面的js:<br>
				<a href="/theme/assets/pages/scripts/ui-extended-modals.js" target="_blank">
					pages/scripts/ui-extended-modals.js
				</a><br>
		    </p><br>
		    <p> 更多资料：
		        <a href="https://github.com/jschr/bootstrap-modal" target="_blank">官方文档</a>
		    </p>
		</div>
	</div>
</div>
<!-- END PAGE BANNER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bubble font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp sbold">Extended Modals Example</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn green-haze btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
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
                <table class="table table-hover table-striped table-bordered">
                    <tr>
                        <td> Responsive </td>
                        <td>
                            <a class="btn btn-outline dark" data-toggle="modal" href="#responsive"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Stackable </td>
                        <td>
                            <a class="btn btn-outline dark" data-target="#stack1" data-toggle="modal"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Ajax </td>
                        <td>
                            <a class="btn btn-outline dark" id="ajax-demo" data-url="ui_extended_modals_ajax_sample.html" data-toggle="modal"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Static Background </td>
                        <td>
                            <a class="btn btn-outline dark" data-target="#static2" data-toggle="modal"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Static Background with Animation </td>
                        <td>
                            <a class="btn btn-outline dark" data-target="#static" data-toggle="modal"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Full Width </td>
                        <td>
                            <a class="btn btn-outline dark" data-target="#full-width" data-toggle="modal"> View Demo </a>
                        </td>
                    </tr>
                    <tr>
                        <td> Long Modals </td>
                        <td>
                            <a class="btn btn-outline dark" data-target="#long" data-toggle="modal"> View Demo </a>
                        </td>
                    </tr>
                </table>
                <!-- responsive -->
                <div id="responsive" class="modal fade" tabindex="-1" data-width="760">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Responsive</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Some Input</h4>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                            </div>
                            <div class="col-md-6">
                                <h4>Some More Input</h4>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                                <p>
                                    <input class="form-control" type="text"> </p>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Close</button>
                        <button type="button" class="btn green">Save changes</button>
                    </div>
                </div>
                <!-- stackable -->
                <div id="stack1" class="modal fade" tabindex="-1" data-focus-on="input:first">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Stack One</h4>
                    </div>
                    <div class="modal-body">
                        <p> One fine body… </p>
                        <p> One fine body… </p>
                        <p> One fine body… </p>
                        <div class="form-group">
                            <input class="form-control" type="text" data-tabindex="1"> </div>
                        <div class="form-group">
                            <input class="form-control" type="text" data-tabindex="2"> </div>
                        <button class="btn blue" data-toggle="modal" href="#stack2">Launch modal</button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Close</button>
                        <button type="button" class="btn green">Ok</button>
                    </div>
                </div>
                <div id="stack2" class="modal fade" tabindex="-1" data-focus-on="input:first">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Stack Two</h4>
                    </div>
                    <div class="modal-body">
                        <p> One fine body… </p>
                        <p> One fine body… </p>
                        <div class="form-group">
                            <input class="form-control" type="text" data-tabindex="1"> </div>
                        <div class="form-group">
                            <input class="form-control" type="text" data-tabindex="2"> </div>
                        <button class="btn blue" data-toggle="modal" href="#stack3">Launch modal</button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Close</button>
                        <button type="button" class="btn red">Ok</button>
                    </div>
                </div>
                <div id="stack3" class="modal fade" tabindex="-1" data-focus-on="input:first">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Stack Three</h4>
                    </div>
                    <div class="modal-body">
                        <p> One fine body… </p>
                        <input class="form-control" type="text" data-tabindex="1">
                        <input class="form-control" type="text" data-tabindex="2"> </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Close</button>
                        <button type="button" class="btn green">Ok</button>
                    </div>
                </div>
                <!-- ajax -->
                <div id="ajax-modal" class="modal fade" tabindex="-1"> </div>
                <!-- static -->
                <div id="static" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
                    <div class="modal-body">
                        <p> Would you like to continue with some arbitrary task? </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Cancel</button>
                        <button type="button" data-dismiss="modal" class="btn green">Continue Task</button>
                    </div>
                </div>
                <div id="static2" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-attention-animation="false">
                    <div class="modal-body">
                        <p> Would you like to continue with some arbitrary task? </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Cancel</button>
                        <button type="button" data-dismiss="modal" class="btn green">Continue Task</button>
                    </div>
                </div>
                <!-- full width -->
                <div id="full-width" class="modal container fade" tabindex="-1">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Full Width</h4>
                    </div>
                    <div class="modal-body">
                        <p> This modal will resize itself to the same dimensions as the container class. </p>
                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sollicitudin ipsum ac ante fermentum suscipit. In ac augue non purus accumsan lobortis id sed nibh. Nunc egestas hendrerit ipsum, et porttitor augue
                            volutpat non. Aliquam erat volutpat. Vestibulum scelerisque lobortis pulvinar. Aenean hendrerit risus neque, eget tincidunt leo. Vestibulum est tortor, commodo nec cursus nec, vestibulum vel nibh. Morbi
                            elit magna, ornare placerat euismod semper, dignissim vel odio. Phasellus elementum quam eu ipsum euismod pretium. </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Close</button>
                        <button type="button" class="btn green">Save changes</button>
                    </div>
                </div>
                <!-- long modals -->
                <div id="long" class="modal fade modal-scroll" tabindex="-1" data-replace="true">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">A Fairly Long Modal</h4>
                    </div>
                    <div class="modal-body">
                        <img style="height: 800px" src="http://i.imgur.com/KwPYo.jpg"> </div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-outline dark">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<lambo:script path="global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js,
					global/plugins/bootstrap-modal/js/bootstrap-modal.js,
					pages/scripts/ui-extended-modals.js" />
</body>