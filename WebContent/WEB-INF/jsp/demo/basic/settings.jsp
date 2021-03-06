<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<div id="content-header">
<h1>settings</h1>
</div>
<div id="content-container">
<div class="row">
<div class="col-md-3 col-sm-4">
<ul id="myTab" class="nav nav-pills nav-stacked">
	<li class="active"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/page-settings.html#profile-tab"
		data-toggle="tab"> <i class="fa fa-user"></i> &nbsp;&nbsp;Profile
	Settings </a></li>
	<li class=""><a
		href="http://preview.jumpstartthemes.com/canvas-admin/page-settings.html#password-tab"
		data-toggle="tab"> <i class="fa fa-lock"></i> &nbsp;&nbsp;Change
	Password </a></li>
	<li class=""><a
		href="http://preview.jumpstartthemes.com/canvas-admin/page-settings.html#messaging"
		data-toggle="tab"> <i class="fa fa-envelope"></i>
	&nbsp;&nbsp;Message Settings </a></li>
	<li class=""><a
		href="http://preview.jumpstartthemes.com/canvas-admin/page-settings.html#payments"
		data-toggle="tab"> <i class="fa fa-dollar"></i>
	&nbsp;&nbsp;Payment Settings </a></li>
	<li class=""><a
		href="http://preview.jumpstartthemes.com/canvas-admin/page-settings.html#reports"
		data-toggle="tab"> <i class="fa fa-signal"></i>
	&nbsp;&nbsp;Configure Reports </a></li>
</ul>
</div>
<!-- /.col -->

<div class="col-md-9 col-sm-8">
<div class="tab-content stacked-content">
<div class="tab-pane fade active in" id="profile-tab">
<h3 class="">Edit Profile Settings</h3>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit.</p>
<hr>
<br>
<form
	action="./Settings - Canvas Admin_files/Settings - Canvas Admin.htm"
	class="form-horizontal">
<div class="form-group"><label class="col-md-3">Avatar</label>
<div class="col-md-7">
<div class="fileupload fileupload-new" data-provides="fileupload">
<input type="hidden">
<div class="fileupload-new thumbnail"
	style="width: 180px; height: 180px;"><img
	src="./Settings - Canvas Admin_files/avatar-large-1.jpg"
	alt="Profile Avatar"></div>
<div class="fileupload-preview fileupload-exists thumbnail"
	style="max-width: 200px; max-height: 200px; line-height: 10px;"></div>
<div><span class="btn btn-default btn-file"><span
	class="fileupload-new">Select image</span><span
	class="fileupload-exists">Change</span> <input type="file"> </span> <a
	href="http://preview.jumpstartthemes.com/canvas-admin/page-settings.html#"
	class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
</div>
</div>
</div>
<!-- /.col --></div>
<!-- /.form-group -->

<div class="form-group"><label class="col-md-3">Username</label>
<div class="col-md-7"><input type="text" name="user-name"
	value="jumpstartui" class="form-control" disabled=""></div>
<!-- /.col --></div>
<!-- /.form-group -->

<div class="form-group"><label class="col-md-3">First Name</label>
<div class="col-md-7"><input type="text" name="first-name"
	value="Rod" class="form-control"></div>
<!-- /.col --></div>
<!-- /.form-group -->

<div class="form-group"><label class="col-md-3">Last Name</label>
<div class="col-md-7"><input type="text" name="last-name"
	value="Howard" class="form-control"></div>
<!-- /.col --></div>
<!-- /.form-group -->

<div class="form-group"><label class="col-md-3">Email
Address</label>
<div class="col-md-7"><input type="text" name="email-address"
	value="rod@example.com" class="form-control"></div>
<!-- /.col --></div>
<!-- /.form-group -->

<div class="form-group"><label class="col-md-3">Website</label>
<div class="col-md-7"><input type="text" name="website"
	value="http://jumpstartthemes.com" class="form-control"></div>
<!-- /.col --></div>
<!-- /.form-group -->

<div class="form-group"><label class="col-md-3">About You</label>
<div class="col-md-7"><textarea id="about-textarea"
	name="about-you" rows="6" class="form-control">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</textarea>
<div class="charleft originalTextareaInfo" style="width: 658px;">&nbsp;</div>
</div>
<!-- /.col --></div>
<!-- /.form-group --> <br>
<div class="form-group">
<div class="col-md-7 col-md-push-3">
<button type="submit" class="btn btn-primary">Save Changes</button>
&nbsp;
<button type="reset" class="btn btn-default">Cancel</button>
</div>
<!-- /.col --></div>
<!-- /.form-group --></form>
</div>
<div class="tab-pane fade" id="password-tab">
<h3 class="">Change Your Password</h3>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes.</p>
<br>
<form
	action="./Settings - Canvas Admin_files/Settings - Canvas Admin.htm"
	class="form-horizontal">
<div class="form-group"><label class="col-md-3">Old
Password</label>
<div class="col-md-7"><input type="password" name="old-password"
	class="form-control"></div>
<!-- /.col --></div>
<!-- /.form-group -->

<hr>
<div class="form-group"><label class="col-md-3">New
Password</label>
<div class="col-md-7"><input type="password" name="new-password-1"
	class="form-control"></div>
<!-- /.col --></div>
<!-- /.form-group -->

<div class="form-group"><label class="col-md-3">New
Password Confirm</label>
<div class="col-md-7"><input type="password" name="new-password-2"
	class="form-control"></div>
<!-- /.col --></div>
<!-- /.form-group --> <br>
<div class="form-group">
<div class="col-md-7 col-md-push-3">
<button type="submit" class="btn btn-primary">Save Changes</button>
&nbsp;
<button type="reset" class="btn btn-default">Cancel</button>
</div>
<!-- /.col --></div>
<!-- /.form-group --></form>
</div>
<div class="tab-pane fade" id="messaging">
<h3>Message Settings</h3>
<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they
sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table
readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY
synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.
Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel
fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't
heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable
tofu synth chambray yr.</p>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>
<div class="tab-pane fade" id="payments">
<h3>Payments Settings</h3>
<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they
sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table
readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY
synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.
Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel
fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't
heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable
tofu synth chambray yr.</p>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>
<div class="tab-pane fade" id="reports">
<h3>Reports Settings</h3>
<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they
sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table
readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY
synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.
Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel
fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't
heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable
tofu synth chambray yr.</p>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>
</div>
</div>
<!-- /.col --></div>
<!-- /.row --></div>
<!-- /#content-container -->



$(function () { $('#about-textarea').textareaCount({ maxCharacterSize:
400 }); });
