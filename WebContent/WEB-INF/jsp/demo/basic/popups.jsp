<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<script>
		$(function () {
	
			$('.howler').click (function (e) {
	
				$.howl ({
					type: $(this).data ('type')
					, title: 'Howl Message'
					, content: 'Lorem ipsum dolor sit amet, consect adipisicing elit.'
					, sticky: $(this).data ('sticky')
					, lifetime: 7500
					, iconCls: $(this).data ('icon')
				});
	
			});
				
		});
	</script>
<style>
.howler {
	margin: 0 .75em 1em 0;
}
</style>
<div id="content-header">
<h1>popups</h1>
</div>
<div id="content-container">


<div class="row">

<div class="col-md-4">

<h4 class="heading">Single Image Popup</h4>

<a class="ui-lightbox"
	href="http://preview.jumpstartthemes.com/canvas-admin/img/photos/rust-lg.jpg"
	title="Caption. Can be aligned it to any side and contain any HTML.">
<img src="resource/css/rust-sm.jpg" width="125" alt="Gallery Image">
</a> <a class="ui-lightbox"
	href="http://preview.jumpstartthemes.com/canvas-admin/img/photos/blur-lg.jpg"
	title="This image fits only horizontally."> <img
	src="resource/css/blur-sm.jpg" width="125" alt="Gallery Image"> </a>
<a class=" ui-lightbox"
	href="http://preview.jumpstartthemes.com/canvas-admin/img/photos/lens-lg.jpg">
<img src="resource/css/lens-sm.jpg" width="125" alt="Gallery Image">
</a></div>

<div class="col-md-4">

<h4 class="heading">Gallery Image Popup</h4>

<div class="ui-lightbox-gallery"><a class=""
	href="http://preview.jumpstartthemes.com/canvas-admin/img/photos/rust-lg.jpg"
	title="Caption. Can be aligned it to any side and contain any HTML.">
<img src="resource/css/rust-sm.jpg" width="125" alt="Gallery Image">
</a> <a class=""
	href="http://preview.jumpstartthemes.com/canvas-admin/img/photos/blur-lg.jpg"
	title="This image fits only horizontally."> <img
	src="resource/css/blur-sm.jpg" width="125" alt="Gallery Image"> </a>
<a class=""
	href="http://preview.jumpstartthemes.com/canvas-admin/img/photos/lens-lg.jpg">
<img src="resource/css/lens-sm.jpg" width="125" alt="Gallery Image">
</a></div>
<!-- /.ui-lightbox-gallery --></div>

<div class="col-md-4">

<h4 class="heading">Video Popup</h4>

<a class="ui-lightbox-video"
	href="http://www.youtube.com/watch?v=0O2aH4XLbto">Open YouTube
video</a><br>
<a class="ui-lightbox-video" href="https://vimeo.com/45830194">Open
Vimeo video</a><br>
<a class="ui-lightbox-video"
	href="https://maps.google.com/maps?q=221B+Baker+Street,+London,+United+Kingdom&hl=en&t=v&hnear=221B+Baker+St,+London+NW1+6XE,+United+Kingdom">Open
Google Map</a></div>

</div>



<br>
<br>
<br>
<br>



<div class="row">

<div class="col-md-4">

<h4 class="heading">Howl Status</h4>

<button class="btn btn-default howler" data-type="">Default</button>
<button class="btn btn-success howler" data-type="success">Success</button>
<button class="btn btn-warning howler" data-type="warning">Warning</button>
<button class="btn btn-danger howler" data-type="danger">Danger</button>
<button class="btn btn-info howler" data-type="info">Info</button>

</div>

<div class="col-md-4">

<h4 class="heading">Howl Icons</h4>

<button class="btn btn-default howler" data-type=""
	data-icon="fa fa-table">Default</button>
<button class="btn btn-success howler" data-type="success"
	data-icon="fa fa-check-square-o">Success</button>
<button class="btn btn-warning howler" data-type="warning"
	data-icon="fa fa-exclamation">Warning</button>
<button class="btn btn-danger howler" data-type="danger"
	data-icon="fa fa-ban">Danger</button>
<button class="btn btn-info howler" data-type="info"
	data-icon="fa fa-info">Info</button>

</div>

<div class="col-md-4">
<h4 class="heading">Sticky</h4>

<button class="btn btn-default howler" data-sticky="true">Sticky
Howl</button>
</div>

</div>

<br>
<br>
<br>
<br>
<br>





<h4 class="heading">Modal</h4>

<p><a data-toggle="modal"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-popups.html#basicModal"
	class="btn btn-default">Basic Modal</a> &nbsp;&nbsp; <a
	data-toggle="modal"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-popups.html#styledModal"
	class="btn btn-primary">Styled Modal</a></p>



<br>
<br>
<br>
<br>
<br>


<h4 class="heading">Popovers</h4>

<div class="row">

<div class="col-md-3">

<button type="button" class="btn btn-default ui-popover"
	data-toggle="tooltip" data-placement="right" data-trigger="hover"
	data-content="Sed posuere consectetur est at lobortis. Aenean eu leo quam."
	title="" data-original-title="Tooltip on right">Popover on
right</button>

</div>

<div class="col-md-3">

<button type="button" class="btn btn-default ui-popover"
	data-toggle="tooltip" data-placement="top" data-trigger="hover"
	data-content="Sed posuere consectetur est at lobortis. Aenean eu leo quam."
	title="" data-original-title="Tooltip on top">Popover on top</button>

</div>

<div class="col-md-3">

<button type="button" class="btn btn-default ui-popover"
	data-toggle="tooltip" data-placement="bottom" data-trigger="hover"
	data-content="Sed posuere consectetur est at lobortis. Aenean eu leo quam."
	title="" data-original-title="Tooltip on bottom">Popover on
bottom</button>

</div>

<div class="col-md-3">

<button type="button" class="btn btn-default ui-popover"
	data-toggle="tooltip" data-placement="left" data-trigger="hover"
	data-content="Sed posuere consectetur est at lobortis. Aenean eu leo quam."
	title="" data-original-title="Tooltip on left">Popover on left
</button>

</div>

</div>
<!-- /.row --> <br>
<br>



<h4 class="heading">Tooltip</h4>



<div class="row">

<div class="col-md-3">
<button type="button" class="btn btn-default ui-tooltip"
	data-toggle="tooltip" data-placement="right" title=""
	data-original-title="Tooltip on right">Tooltip on right</button>
</div>

<div class="col-md-3">
<button type="button" class="btn btn-default ui-tooltip"
	data-toggle="tooltip" data-placement="top" title=""
	data-original-title="Tooltip on top">Tooltip on top</button>
</div>

<div class="col-md-3">
<button type="button" class="btn btn-default ui-tooltip"
	data-toggle="tooltip" data-placement="bottom" title=""
	data-original-title="Tooltip on bottom">Tooltip on bottom</button>
</div>

<div class="col-md-3">
<button type="button" class="btn btn-default ui-tooltip"
	data-toggle="tooltip" data-placement="left" title=""
	data-original-title="Tooltip on left">Tooltip on left</button>
</div>

</div>
<!-- /.row --> <br>
<br>
<br>
<br>



<h4 class="heading">Alerts</h4>

<div class="alert alert-success"><a class="close"
	data-dismiss="alert"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-popups.html#"
	aria-hidden="true">×</a> <strong>Well done!</strong> You successfully
read this important alert message.</div>

<div class="alert alert-info"><a class="close"
	data-dismiss="alert"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-popups.html#"
	aria-hidden="true">×</a> <strong>Heads up!</strong> This alert needs
your attention, but it's not super important.</div>

<div class="alert alert-warning"><a class="close"
	data-dismiss="alert"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-popups.html#"
	aria-hidden="true">×</a> <strong>Warning!</strong> Best check yo self,
you're not looking too good.</div>

<div class="alert alert-danger"><a class="close"
	data-dismiss="alert"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-popups.html#"
	aria-hidden="true">×</a> <strong>Oh snap!</strong> Change a few things
up and try submitting again.</div>



<br>
<br>
<br>
<br>

<h4 class="heading">Progress Bars</h4>


<h5>Basic Progress Bars</h5>

<div class="progress">
<div class="progress-bar progress-bar-primary" role="progressbar"
	aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
	style="width: 60%;"><span class="sr-only">60% Complete</span></div>
</div>

<div class="progress">
<div class="progress-bar progress-bar-secondary" role="progressbar"
	aria-valuenow="44" aria-valuemin="0" aria-valuemax="100"
	style="width: 44%;"><span class="sr-only">44% Complete</span></div>
</div>

<div class="progress">
<div class="progress-bar progress-bar-tertiary" role="progressbar"
	aria-valuenow="31" aria-valuemin="0" aria-valuemax="100"
	style="width: 31%;"><span class="sr-only">31% Complete</span></div>
</div>

<br>

<h5>Striped Progress Bars</h5>

<div class="progress progress-striped">
<div class="progress-bar progress-bar-primary" role="progressbar"
	aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
	style="width: 60%;"><span class="sr-only">60% Complete</span></div>
</div>

<div class="progress progress-striped">
<div class="progress-bar progress-bar-secondary" role="progressbar"
	aria-valuenow="44" aria-valuemin="0" aria-valuemax="100"
	style="width: 44%;"><span class="sr-only">44% Complete</span></div>
</div>

<div class="progress progress-striped">
<div class="progress-bar progress-bar-tertiary" role="progressbar"
	aria-valuenow="31" aria-valuemin="0" aria-valuemax="100"
	style="width: 31%;"><span class="sr-only">31% Complete</span></div>
</div>

<br>

<h5>Animated Progress Bars</h5>

<div class="progress progress-striped active">
<div class="progress-bar progress-bar-primary" role="progressbar"
	aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
	style="width: 60%;"><span class="sr-only">60% Complete</span></div>
</div>

<div class="progress progress-striped active">
<div class="progress-bar progress-bar-secondary" role="progressbar"
	aria-valuenow="44" aria-valuemin="0" aria-valuemax="100"
	style="width: 44%;"><span class="sr-only">44% Complete</span></div>
</div>

<div class="progress progress-striped active">
<div class="progress-bar progress-bar-tertiary" role="progressbar"
	aria-valuenow="31" aria-valuemin="0" aria-valuemax="100"
	style="width: 31%;"><span class="sr-only">31% Complete</span></div>
</div>

<br>

<h5>Stacked Progress Bar</h5>

<div class="progress">
<div class="progress-bar progress-bar-primary" style="width: 35%">
<span class="sr-only">35% Complete (success)</span></div>
<div class="progress-bar progress-bar-secondary" style="width: 20%">
<span class="sr-only">20% Complete (warning)</span></div>
<div class="progress-bar progress-bar-tertiary" style="width: 10%">
<span class="sr-only">10% Complete (danger)</span></div>
</div>



</div>
<!-- /#content-container -->
