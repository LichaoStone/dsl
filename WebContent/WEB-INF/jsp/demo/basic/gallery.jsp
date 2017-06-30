<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<div id="content-header">
<h1>gallery</h1>
</div>
<div id="content-container">
<h3 class="heading">Table Gallery</h3>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table table-striped table-bordered media-table">
	<thead>
		<tr>
			<th style="width: 150px">Image</th>
			<th>Description</th>
			<th>Date</th>
			<th>File info</th>
			<th class="text-center">Actions</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
			<div class="thumbnail">
			<div class="thumbnail-view"><a
				class="thumbnail-view-hover ui-lightbox"
				href="resource/img/photos/blur-lg.jpg"> </a> <img
				src="./Gallery - Canvas Admin_files/blur-sm.jpg" width="125"
				alt="Gallery Image"></div>
			</div>
			<!-- /.thumbnail --></td>
			<td><a href="javascript:;" title="">Donec quam felis</a>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
			</td>
			<td>Feb 12, 2012. 12:28</td>
			<td class="file-info"><span><strong>Size:</strong> 215 Kb</span>
			<br>
			<span><strong>Format:</strong> .jpg</span> <br>
			<span><strong>Dimensions:</strong> 120 x 120</span></td>
			<td class="text-center">
			<button class="btn btn-xs btn-primary"><i
				class="fa fa-pencil"></i></button>
			&nbsp;
			<button class="btn btn-xs btn-secondary"><i
				class="fa fa-times"></i></button>
			</td>
		</tr>
		<tr>
			<td>
			<div class="thumbnail">
			<div class="thumbnail-view"><a
				href="resource/img/photos/clock-lg.jpg"
				class="thumbnail-view-hover ui-lightbox"></a> <img
				src="./Gallery - Canvas Admin_files/clock-sm.jpg" width="125"
				alt="Gallery Image"></div>
			</div>
			<!-- /.thumbnail --></td>
			<td><a href="javascript:;" title="">Donec quam felis</a>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
			</td>
			<td>Feb 12, 2012. 12:28</td>
			<td class="file-info"><span><strong>Size:</strong> 215 Kb</span>
			<br>
			<span><strong>Format:</strong> .jpg</span> <br>
			<span><strong>Dimensions:</strong> 120 x 120</span></td>
			<td class="text-center">
			<button class="btn btn-xs btn-primary"><i
				class="fa fa-pencil"></i></button>
			&nbsp;
			<button class="btn btn-xs btn-secondary"><i
				class="fa fa-times"></i></button>
			</td>
		</tr>
		<tr>
			<td>
			<div class="thumbnail">
			<div class="thumbnail-view"><a
				href="resource/img/photos/lens-lg.jpg"
				class="thumbnail-view-hover ui-lightbox"></a> <img
				src="./Gallery - Canvas Admin_files/lens-sm.jpg" width="125"
				alt="Gallery Image"></div>
			</div>
			<!-- /.thumbnail --></td>
			<td><a href="javascript:;" title="">Donec quam felis</a>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
			</td>
			<td>Feb 12, 2012. 12:28</td>
			<td class="file-info"><span><strong>Size:</strong> 215 Kb</span>
			<br>
			<span><strong>Format:</strong> .jpg</span> <br>
			<span><strong>Dimensions:</strong> 120 x 120</span></td>
			<td class="text-center">
			<button class="btn btn-xs btn-primary"><i
				class="fa fa-pencil"></i></button>
			&nbsp;
			<button class="btn btn-xs btn-secondary"><i
				class="fa fa-times"></i></button>
			</td>
		</tr>
		<tr>
			<td>
			<div class="thumbnail">
			<div class="thumbnail-view"><a
				href="resource/img/photos/rust-lg.jpg"
				class="thumbnail-view-hover ui-lightbox"></a> <img
				src="./Gallery - Canvas Admin_files/rust-sm.jpg" width="125"
				alt="Gallery Image"></div>
			</div>
			<!-- /.thumbnail --></td>
			<td><a href="javascript:;" title="">Donec quam felis</a>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
			</td>
			<td>Feb 12, 2012. 12:28</td>
			<td class="file-info"><span><strong>Size:</strong> 215 Kb</span>
			<br>
			<span><strong>Format:</strong> .jpg</span> <br>
			<span><strong>Dimensions:</strong> 120 x 120</span></td>
			<td class="text-center">
			<button class="btn btn-xs btn-primary"><i
				class="fa fa-pencil"></i></button>
			&nbsp;
			<button class="btn btn-xs btn-secondary"><i
				class="fa fa-times"></i></button>
			</td>
		</tr>
	</tbody>
</table>
</div>
<!-- /.table-responsive --></div>
<!-- /.col --></div>
<!-- /.row --> <br>
<h3 class="heading">Grid Gallery</h3>
<div class="row">
<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/blur-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/blur-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
<div class="caption">
<h3>Thumbnail label</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
Donec id elit non mi porta gravida at eget metus. Nullam id dolor id
nibh ultricies vehicula ut id elit.</p>
<p><a href="javascript:;" class="btn btn-primary btn-sm btn-sm">Button</a>
<a href="javascript:;" class="btn btn-secondary btn-sm btn-sm">Button</a></p>
</div>
<div class="thumbnail-footer">
<div class="pull-left"><a href="javascript:;"><i
	class="fa fa-thumbs-up"></i> 123</a> <a href="javascript:;"><i
	class="fa fa-thumbs-down"></i> 29</a></div>
<div class="pull-right"><a href="javascript:;"><i
	class="fa fa-clock-o"></i> 2 days ago</a></div>
</div>
</div>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/clock-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/clock-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
<div class="caption">
<h3>Thumbnail label</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
Donec id elit non mi porta gravida at eget metus. Nullam id dolor id
nibh ultricies vehicula ut id elit.</p>
<p><a href="javascript:;" class="btn btn-primary btn-sm btn-sm">Button</a>
<a href="javascript:;" class="btn btn-secondary btn-sm btn-sm">Button</a></p>
</div>
<div class="thumbnail-footer">
<div class="pull-left"><a href="javascript:;"><i
	class="fa fa-thumbs-up"></i> 123</a> <a href="javascript:;"><i
	class="fa fa-thumbs-down"></i> 29</a></div>
<div class="pull-right"><a href="javascript:;"><i
	class="fa fa-clock-o"></i> 2 days ago</a></div>
</div>
</div>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/lens-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/lens-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
<div class="caption">
<h3>Thumbnail label</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
Donec id elit non mi porta gravida at eget metus. Nullam id dolor id
nibh ultricies vehicula ut id elit.</p>
<p><a href="javascript:;" class="btn btn-primary btn-sm btn-sm">Button</a>
<a href="javascript:;" class="btn btn-secondary btn-sm btn-sm">Button</a></p>
</div>
<div class="thumbnail-footer">
<div class="pull-left"><a href="javascript:;"><i
	class="fa fa-thumbs-up"></i> 123</a> <a href="javascript:;"><i
	class="fa fa-thumbs-down"></i> 29</a></div>
<div class="pull-right"><a href="javascript:;"><i
	class="fa fa-clock-o"></i> 2 days ago</a></div>
</div>
</div>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/rust-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/rust-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
<div class="caption">
<h3>Thumbnail label</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
Donec id elit non mi porta gravida at eget metus. Nullam id dolor id
nibh ultricies vehicula ut id elit.</p>
<p><a href="javascript:;" class="btn btn-primary btn-sm btn-sm">Button</a>
<a href="javascript:;" class="btn btn-secondary btn-sm btn-sm">Button</a></p>
</div>
<div class="thumbnail-footer">
<div class="pull-left"><a href="javascript:;"><i
	class="fa fa-thumbs-up"></i> 123</a> <a href="javascript:;"><i
	class="fa fa-thumbs-down"></i> 29</a></div>
<div class="pull-right"><a href="javascript:;"><i
	class="fa fa-clock-o"></i> 2 days ago</a></div>
</div>
</div>
</div>
<!-- /.col --></div>
<!-- /.row --> <br>
<h3 class="heading">Image Only</h3>
<div class="row">
<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/blur-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/blur-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
</div>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/clock-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/clock-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
</div>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/lens-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/lens-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
</div>
</div>
<!-- /.col -->

<div class="col-md-3 col-sm-6">
<div class="thumbnail">
<div class="thumbnail-view"><a
	href="resource/img/photos/rust-lg.jpg"
	class="thumbnail-view-hover ui-lightbox"></a> <img
	src="./Gallery - Canvas Admin_files/rust-sm.jpg" style="width: 100%"
	alt="Gallery Image"></div>
</div>
</div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->
