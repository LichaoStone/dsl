<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" buffer="none"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%> 
<%@ page import="com.inspur.lambo.plantform.service.support.uc.context.UcContext"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
        	<sitemesh:write property='title' />
        </title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        
        <link rel="shortcut icon" href="favicon.ico" />
        
        
        
        <!-- 全局样式 -->
        <lambo:link path="global/plugins/font-awesome/css/font-awesome.css,
        global/plugins/simple-line-icons/simple-line-icons.css,
        global/plugins/bootstrap/css/bootstrap.css,
        global/plugins/uniform/css/uniform.default.css,
        global/css/components.css,
        layouts/layout-mrt/css/layout.css,
        layouts/layout-mrt/css/themes/default.css,
        layouts/layout/css/custom.css" />


        <!-- 基础库 -->
        <lambo:script path="global/plugins/jquery.min.js,
        global/plugins/bootstrap/js/bootstrap.js,
        global/plugins/js.cookie.min.js,
        global/scripts/app.js"/>

        <sitemesh:write property='head'/>
        
     </head>
     <!-- END HEAD -->

    <body class="page-sidebar-closed-hide-logo page-content-white page-header-fixed page-sidebar-fixed">
    
    	<input id="ctx" type="hidden" value="${ctx}" />
    	<input id="homePageUrl" type="hidden" value="${homePageUrl}" />
    	
        <!-- BEGIN HEADER -->
        <div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner ">
                <!-- BEGIN LOGO -->
                <div class="page-logo">
                   <!--  <a href="index.html">
                        <img src="/theme/assets/layouts/layout/img/logo.png" alt="logo" class="logo-default" /> </a>
                    --> 
                    <div class="menu-toggler sidebar-toggler fa fa-list-ul"> </div>
                </div>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                
                <div class="mrt-logo">易商·云&nbsp;POS</div>
                <!-- BEGIN TOP NAVIGATION MENU -->
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">
                        <!-- BEGIN USER LOGIN DROPDOWN -->
                        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                        <li class="dropdown dropdown-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <span class="username username-hide-on-mobile"> 哈哈哈 </span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-default">
                                <li>
                                    <a href="${ctx}/logout">
                                        <i class="icon-user"></i> 退出登录 </a>
                                </li>
                            </ul>
                        </li>
                        <!-- END USER LOGIN DROPDOWN -->
                    </ul>
                </div>
                <!-- END TOP NAVIGATION MENU -->
            </div>
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        <!-- BEGIN HEADER & CONTENT DIVIDER -->
        <div class="clearfix"> </div>
        <!-- END HEADER & CONTENT DIVIDER -->
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN SIDEBAR -->
            <div class="page-sidebar-wrapper">
                <!-- BEGIN SIDEBAR -->
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <div class="page-sidebar navbar-collapse collapse">
					<ul id="page-menu" class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" 
					data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
					</ul>
                </div>
                <!-- END SIDEBAR -->
            </div>
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">
                    <!-- BEGIN PAGE BAR -->
                    <div class="page-bar">
                        <ul id="page-breadcrumb" class="page-breadcrumb">

                        </ul>
                    </div>
                    <!-- END PAGE BAR -->
                    
					<sitemesh:write property='body'/>
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END CONTAINER -->
        <!--[if lt IE 9]>
		<lambo:script path="global/plugins/respond.min.js,global/plugins/excanvas.min.js" />
		<![endif]-->
		
		
		<!-- 全局javascirpt -->
		<lambo:script path="global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.js,
		global/plugins/jquery-slimscroll/jquery.slimscroll.js"/>
		
		<lambo:script path="global/plugins/jquery.blockui.min.js" />
		<lambo:script path="global/plugins/uniform/jquery.uniform.js" />
		<lambo:script path="layouts/layout/scripts/layout.js"/>		
		<!--layouts/global/scripts/quick-sidebar.js-->
		<lambo:script path="layouts/layout-mrt/js/menu.js" />
		
		<lambo:link path="global/css/plugins.css" />
		
    </body>

</html>