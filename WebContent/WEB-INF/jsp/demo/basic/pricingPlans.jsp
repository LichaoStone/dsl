<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<div id="content-header">
<h1>pricingPlans</h1>
</div>
<div id="content-container">

<div class="row">

<div class="col-md-12">

<div class="align-center">

<h2>Start your 14-day free trial today!</h2>

<h4>No sign-up fees. No credit card required. No long-term
commitments.</h4>

<br>


<div class="btn-group" data-toggle="buttons"><label
	class="btn btn-tertiary active" style="width: 125px;"> <input
	type="radio" name="options" id="option1"> Monthly </label> <label
	class="btn btn-tertiary" style="width: 125px;"> <input
	type="radio" name="options" id="option2"> Yearly <small>(15%
off)</small> </label></div>

<br>
<br>
<br>

</div>
<!-- /.align-center -->




<div class="row">

<div class="col-md-3 col-sm-6">

<div class="pricing-plan">

<h3 class="pricing-title">Starter</h3>

<p class="pricing-label">For Individuals</p>

<hr>

<span class="pricing-price"> <span class="pricing-amount">$19</span>
/ month </span>

<hr>

<ul class="pricing-details">
	<li><strong>5</strong> users</li>
	<li><strong>10</strong> projects</li>
	<li><strong>10BG</strong> of space</li>
	<li><strong>5</strong> email accounts</li>
</ul>

<a href="javascript:;" class="btn btn-primary btn-lg">Choose plan</a></div>
<!-- /.pricing --></div>
<!-- /.col -->


<div class="col-md-3 col-sm-6">
<div class="pricing-plan">

<h3 class="pricing-title">Basic</h3>

<p class="pricing-label">For blogs &amp; small business</p>

<hr>

<span class="pricing-price"> <span class="pricing-amount">$29</span>
/ month </span>

<hr>

<ul class="pricing-details">
	<li><strong>10</strong> users</li>
	<li><strong>50</strong> projects</li>
	<li><strong>50BG</strong> of space</li>
	<li><strong>10</strong> email accounts</li>
</ul>

<a href="javascript:;" class="btn btn-primary btn-lg">Choose plan</a></div>
<!-- /.pricing --></div>
<!-- /.col -->


<div class="col-md-3 col-sm-6">
<div class="pricing-plan promoted"><img
	src="resource/css/label-yellow.png" class="pricing-best-value"
	alt="Best Label">

<h3 class="pricing-title">Pro</h3>

<p class="pricing-label">For consultants &amp; corporate teams</p>

<hr>

<span class="pricing-price"> <span class="pricing-amount">$49</span>
/ month </span>

<hr>

<ul class="pricing-details">
	<li><span class="pricing-help" title=""
		data-content="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
		data-original-title="What&#39;s a user?"><strong>100</strong>
	users</span></li>
	<li><span class="pricing-help" title=""
		data-content="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
		data-original-title="What&#39;s a project?"><strong>Unlimited</strong>
	projects</span></li>
	<li><span class="pricing-help" title=""
		data-content="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
		data-original-title="What&#39;s storage for?"><strong>1TB</strong>
	of space</span></li>
	<li><span class="pricing-help" title=""
		data-content="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
		data-original-title="What&#39;s an email for?"><strong>100</strong>
	email accounts</span></li>
</ul>

<a href="javascript:;" class="btn btn-primary btn-lg">Choose plan</a></div>
<!-- /.pricing --></div>
<!-- /.col -->


<div class="col-md-3 col-sm-6">
<div class="pricing-plan">

<h3 class="pricing-title">Ultra</h3>

<p class="pricing-label">For large enterprises</p>

<hr>

<span class="pricing-price"> <span class="pricing-amount">$99</span>
/ month </span>

<hr>

<ul class="pricing-details">
	<li><strong>500</strong> users</li>
	<li><strong>Unlimited</strong> projects</li>
	<li><strong>5TB</strong> of space</li>
	<li><strong>500</strong> email accounts</li>
</ul>

<a href="javascript:;" class="btn btn-primary btn-lg">Choose plan</a></div>
<!-- /.pricing --></div>
<!-- /.col --></div>
<!-- /.row --> <br>

<h4 class="align-center"><strong>Need More?</strong> <span>We
offer larger plans for companies with even more contacts.</span> <a
	href="javascript:;">Learn More <i class="fa fa-expand"></i></a></h4>

</div>
<!-- /.col-md-12 --></div>
<!-- /.row --> <br>
<br>


<div class="row">

<h3 class="align-center">All Plans Come With</h3>

<hr>

<div class="col-md-3 col-sm-6">
<ul class="icons-list">
	<li><i class="icon-li fa fa-check-square"></i> Free Setup</li>

	<li><i class="icon-li fa fa-check-square"></i> SSL Protection</li>

	<li><i class="icon-li fa fa-check-square"></i> Unlimited Downloads
	</li>

	<li><i class="icon-li fa fa-check-square"></i> Unlimited Pushes</li>
</ul>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<ul class="icons-list">

	<li><i class="icon-li fa fa-check-square"></i> Over the Air
	Install and Update</li>

	<li><i class="icon-li fa fa-check-square"></i> Realtime Dashboard
	</li>

	<li><i class="icon-li fa fa-check-square"></i> Package History
	Archive</li>

	<li><i class="icon-li fa fa-check-square"></i> Easy to Use
	Interface</li>
</ul>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<ul class="icons-list">

	<li><i class="icon-li fa fa-check-square"></i> Full Featured</li>

	<li><i class="icon-li fa fa-check-square"></i> Crash Reporting
	(with SDK)</li>

	<li><i class="icon-li fa fa-check-square"></i> Custom Event
	Logging (with SDK)</li>

	<li><i class="icon-li fa fa-check-square"></i> Commandline Tools</li>
</ul>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<ul class="icons-list">

	<li><i class="icon-li fa fa-check-square"></i> Over the Air
	Install and Update</li>

	<li><i class="icon-li fa fa-check-square"></i> Realtime Dashboard
	</li>

	<li><i class="icon-li fa fa-check-square"></i> Package History
	Archive</li>

	<li><i class="icon-li fa fa-check-square"></i> Easy to Use
	Interface</li>
</ul>
</div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->
