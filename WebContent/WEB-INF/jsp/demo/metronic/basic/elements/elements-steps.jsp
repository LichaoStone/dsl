<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%> 
<!DOCTYPE html>
<html>
<head>
<title>Elements steps</title>
</head>
<body>
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> Step Elements
    <small>Elements是用来布局的控件</small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->
<!-- BEGIN : STEPS -->
<div class="row">
    <div class="col-md-12">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Default</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-default">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">Default</div>
                            <div class="caption-desc font-grey-cascade">Default element style. Activate by adding <pre class="mt-code">.step-default</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 bg-grey mt-step-col">
                            <div class="mt-step-number bg-white font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 bg-grey mt-step-col active">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 bg-grey mt-step-col ">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-thin">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">Thin</div>
                            <div class="caption-desc font-grey-cascade">Thin variation for default element style. Activate by adding <pre class="mt-code">.step-thin</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 bg-grey mt-step-col">
                            <div class="mt-step-number bg-white font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 bg-grey mt-step-col">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 bg-grey done mt-step-col active">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-no-background">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">No Background</div>
                            <div class="caption-desc font-grey-cascade">No background variation for default element style. Activate by adding <pre class="mt-code">.step-no-background</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col">
                            <div class="mt-step-number font-grey-cascade">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col error">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col done">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-no-background-thin">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">No Background Thin</div>
                            <div class="caption-desc font-grey-cascade">Thin variation for default no background element style. Activate by adding <pre class="mt-code">.step-no-background-thin</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col">
                            <div class="mt-step-number font-grey-cascade">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col error">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col done">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Default - Dark</span>
                </div>
            </div>
            <div class="portlet-body bg-dark">
                <div class="mt-element-step">
                    <div class="row step-no-background">
                        <div class="mt-step-desc">
                            <div class="font-white bold uppercase">No Background</div>
                            <div class="caption-desc font-grey-cascade">No background variation for default element style. Activate by adding <pre class="mt-code">.step-no-background</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col">
                            <div class="mt-step-number font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col error">
                            <div class="mt-step-number font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col done">
                            <div class="mt-step-number font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-no-background-thin">
                        <div class="mt-step-desc">
                            <div class="font-white bold uppercase">No Background Thin</div>
                            <div class="caption-desc font-grey-cascade">Thin variation for default no background element style. Activate by adding <pre class="mt-code">.step-no-background-thin</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col">
                            <div class="mt-step-number font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col error">
                            <div class="mt-step-number font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col done">
                            <div class="mt-step-number font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Numbered Background</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-background">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">Background</div>
                            <div class="caption-desc font-grey-cascade">Numbered background element style. Activate by adding <pre class="mt-code">.step-background</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 bg-grey-steel mt-step-col">
                            <div class="mt-step-number">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 bg-grey-steel mt-step-col active">
                            <div class="mt-step-number">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 bg-grey-steel mt-step-col">
                            <div class="mt-step-number">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-background-thin">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">Background Thin</div>
                            <div class="caption-desc font-grey-cascade">Thin variation for Numbered Background element style. Activate by adding <pre class="mt-code">.step-background-thin</pre> class to the <pre class="mt-code">.row</pre> element</div>
                            <br/> </div>
                        <div class="col-md-4 bg-grey-steel mt-step-col">
                            <div class="mt-step-number">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 bg-grey-steel mt-step-col active">
                            <div class="mt-step-number">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 bg-grey-steel mt-step-col error">
                            <div class="mt-step-number">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Line</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-line">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">Line</div>
                            <div class="caption-desc font-grey-cascade"> Numbered Line element style. Activate by adding <pre class="mt-code">.step-line</pre> class to the <pre class="mt-code">.row</pre> element. <pre class="mt-code">.first</pre> and <pre class="mt-code">.last</pre>                                                    classes are required to be added into <pre class="mt-code">.mt-step-col</pre> to indicate the first and last step. </div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col first done">
                            <div class="mt-step-number bg-white">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col error">
                            <div class="mt-step-number bg-white">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col last">
                            <div class="mt-step-number bg-white">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-line">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">4 Steps Line</div>
                            <div class="caption-desc font-grey-cascade"> 4 Steps Numbered Line element style. Activate by adding <pre class="mt-code">.step-line</pre> class to the <pre class="mt-code">.row</pre> element. <pre class="mt-code">.first</pre> and <pre class="mt-code">.last</pre>                                                    classes are required to be added into <pre class="mt-code">.mt-step-col</pre> to indicate the first and last step. </div>
                            <br/> </div>
                        <div class="col-md-3 mt-step-col first done">
                            <div class="mt-step-number bg-white">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Setup</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                        <div class="col-md-3 mt-step-col done">
                            <div class="mt-step-number bg-white">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Develop</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                        <div class="col-md-3 mt-step-col active">
                            <div class="mt-step-number bg-white">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Testing</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                        <div class="col-md-3 mt-step-col last">
                            <div class="mt-step-number bg-white">4</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Launch</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Line - Dark</span>
                </div>
            </div>
            <div class="portlet-body bg-dark">
                <div class="mt-element-step">
                    <div class="row step-line">
                        <div class="mt-step-desc">
                            <div class="font-white bold uppercase">Line</div>
                            <div class="caption-desc font-grey-cascade"> Numbered Line element style. Activate by adding <pre class="mt-code">.step-line</pre> class to the <pre class="mt-code">.row</pre> element. <pre class="mt-code">.first</pre> and <pre class="mt-code">.last</pre>                                                    classes are required to be added into <pre class="mt-code">.mt-step-col</pre> to indicate the first and last step. </div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col first done">
                            <div class="mt-step-number bg-dark font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col error">
                            <div class="mt-step-number bg-dark font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col last">
                            <div class="mt-step-number bg-dark font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-line">
                        <div class="mt-step-desc">
                            <div class="font-white bold uppercase">4 Steps Line</div>
                            <div class="caption-desc font-grey-cascade"> 4 Steps Numbered Line element style. Activate by adding <pre class="mt-code">.step-line</pre> class to the <pre class="mt-code">.row</pre> element. <pre class="mt-code">.first</pre> and <pre class="mt-code">.last</pre>                                                    classes are required to be added into <pre class="mt-code">.mt-step-col</pre> to indicate the first and last step. </div>
                            <br/> </div>
                        <div class="col-md-3 mt-step-col first done">
                            <div class="mt-step-number bg-dark font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Setup</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                        <div class="col-md-3 mt-step-col done">
                            <div class="mt-step-number bg-dark font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Develop</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                        <div class="col-md-3 mt-step-col active">
                            <div class="mt-step-number bg-dark font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Testing</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                        <div class="col-md-3 mt-step-col last">
                            <div class="mt-step-number bg-dark font-grey">4</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Launch</div>
                            <div class="mt-step-content font-grey-cascade">Lorem ipsum dolor sit amet</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Default 50%</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-default">
                        <div class="col-lg-4 bg-grey mt-step-col">
                            <div class="mt-step-number first bg-white font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-lg-4 bg-grey mt-step-col active error">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-lg-4 bg-grey mt-step-col">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Thin 50%</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-thin">
                        <div class="col-lg-4 bg-grey mt-step-col">
                            <div class="mt-step-number first bg-white font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-lg-4 bg-grey mt-step-col active">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-lg-4 bg-grey mt-step-col">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">No Background 50%</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-no-background">
                        <div class="col-lg-4 mt-step-col active">
                            <div class="mt-step-number first bg-white font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-lg-4 mt-step-col error">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-lg-4 mt-step-col">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">No Background Thin 50%</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-no-background-thin">
                        <div class="col-lg-4 mt-step-col">
                            <div class="mt-step-number first bg-white font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-lg-4 mt-step-col active">
                            <div class="mt-step-number bg-white font-grey">2</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-lg-4 mt-step-col">
                            <div class="mt-step-number bg-white font-grey">3</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Active Status </span>
                    <div class="caption-desc font-grey-cascade">All active status is controlled by adding a <pre class="mt-code">.active</pre> class to the <pre class="mt-code">.mt-step-col</pre> element</div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-default">
                        <div class="col-md-12 bg-grey mt-step-col active">
                            <div class="mt-step-number first bg-white font-grey">1</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Active</div>
                            <div class="mt-step-content font-grey-cascade">Active status preview</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Completed Status </span>
                    <div class="caption-desc font-grey-cascade">All active status is controlled by adding a <pre class="mt-code">.done</pre> class to the <pre class="mt-code">.mt-step-col</pre> element</div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-default">
                        <div class="col-md-12 bg-grey mt-step-col done">
                            <div class="mt-step-number first bg-white font-grey">6</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Complete</div>
                            <div class="mt-step-content font-grey-cascade">Preview for done/completed status</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Error Status </span>
                    <div class="caption-desc font-grey-cascade">All active status is controlled by adding a <pre class="mt-code">.error</pre> class to the <pre class="mt-code">.mt-step-col</pre> element</div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-default">
                        <div class="col-md-12 bg-grey mt-step-col error">
                            <div class="mt-step-number first bg-white font-grey">4</div>
                            <div class="mt-step-title uppercase font-grey-cascade">Error</div>
                            <div class="mt-step-content font-grey-cascade">Error status preview</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light portlet-fit bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class=" icon-layers font-green"></i>
                    <span class="caption-subject font-green bold uppercase">Numbered Icons</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="mt-element-step">
                    <div class="row step-line">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">Simple Line Icons</div>
                            <div class="caption-desc font-grey-cascade"> Icons in place of numbers for steps. Replace the <pre class="mt-code">.mt-step-number</pre> text with the icon of your choice. </div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col first done">
                            <div class="mt-step-number bg-white">
                                <i class="icon-basket"></i>
                            </div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col error">
                            <div class="mt-step-number bg-white">
                                <i class="icon-credit-card"></i>
                            </div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col last">
                            <div class="mt-step-number bg-white">
                                <i class="icon-rocket"></i>
                            </div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row step-line">
                        <div class="mt-step-desc">
                            <div class="font-dark bold uppercase">FontAwesome Icons</div>
                            <div class="caption-desc font-grey-cascade"> Icons in place of numbers for steps. Replace the <pre class="mt-code">.mt-step-number</pre> text with the icon of your choice. </div>
                            <br/> </div>
                        <div class="col-md-4 mt-step-col first done">
                            <div class="mt-step-number bg-white">
                                <i class="fa fa-shopping-cart"></i>
                            </div>
                            <div class="mt-step-title uppercase font-grey-cascade">Purchase</div>
                            <div class="mt-step-content font-grey-cascade">Purchasing the item</div>
                        </div>
                        <div class="col-md-4 mt-step-col active">
                            <div class="mt-step-number bg-white">
                                <i class="fa fa-cc-visa"></i>
                            </div>
                            <div class="mt-step-title uppercase font-grey-cascade">Payment</div>
                            <div class="mt-step-content font-grey-cascade">Complete your payment</div>
                        </div>
                        <div class="col-md-4 mt-step-col last">
                            <div class="mt-step-number bg-white">
                                <i class="fa fa-rocket"></i>
                            </div>
                            <div class="mt-step-title uppercase font-grey-cascade">Deploy</div>
                            <div class="mt-step-content font-grey-cascade">Receive item integration</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END : STEPS -->     
</body>