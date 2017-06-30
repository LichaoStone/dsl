<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<div id="content-header">
<h1>tablesAccordings</h1>
</div>
<div id="content-container">


<div class="row">

<div class="col-md-12">

<h3 class="heading">Tab Nav</h3>

<ul id="myTab1" class="nav nav-tabs">
	<li class="active"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#home"
		data-toggle="tab">Home</a></li>
	<li><a
		href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#profile"
		data-toggle="tab">Profile</a></li>
	<li class="dropdown"><a href="javascript:;" id="myTabDrop1"
		class="dropdown-toggle" data-toggle="dropdown">Dropdown <b
		class="caret"></b> </a>

	<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
		<li><a
			href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#dropdown1"
			tabindex="-1" data-toggle="tab">@fat</a></li>
		<li><a
			href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#dropdown2"
			tabindex="-1" data-toggle="tab">@mdo</a></li>
	</ul>
	</li>
</ul>

<div id="myTab1Content" class="tab-content">
<div class="tab-pane fade in active" id="home">
<p>Raw denim you probably haven't heard of them jean shorts Austin.
Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui
irure terry richardson ex squid. Aliquip placeat salvia cillum iphone.
Seitan aliquip quis cardigan american apparel, butcher voluptate nisi
qui.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>

<div class="tab-pane fade" id="profile">
<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla
single-origin coffee squid. Exercitation +1 labore velit, blog sartorial
PBR leggings next level wes anderson artisan four loko farm-to-table
craft beer twee. Qui photo booth letterpress, commodo enim craft beer
mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
organic, assumenda labore aesthetic magna delectus mollit. Keytar
helvetica VHS salvia yr, vero magna velit sapiente labore stumptown.
Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts
beard ut DIY ethical culpa terry richardson biodiesel. Art party
scenester stumptown, tumblr butcher vero sint qui sapiente accusamus
tattooed echo park.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>

<div class="tab-pane fade" id="dropdown1">
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

<div class="tab-pane fade" id="dropdown2">
<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art
party before they sold out master cleanse gluten-free squid scenester
freegan cosby sweater. Fanny pack portland seitan DIY, art party
locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY
salvia PBR, banh mi before they sold out farm-to-table VHS viral
locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats
keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial
keffiyeh echo park vegan.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>
</div>





<br>
<br>
<br>




<h3 class="heading">Pill Tabs</h3>


<ul id="myTab2" class="nav nav-pills">
	<li class="active"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#home-2"
		data-toggle="tab">Home</a></li>
	<li><a
		href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#profile-2"
		data-toggle="tab">Profile</a></li>
	<li class="dropdown"><a href="javascript:;" id="myTabDrop2"
		class="dropdown-toggle" data-toggle="dropdown"> Dropdown <b
		class="caret"></b> </a>

	<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
		<li><a
			href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#dropdown3"
			tabindex="-1" data-toggle="tab">@fat</a></li>
		<li><a
			href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#dropdown4"
			tabindex="-1" data-toggle="tab">@mdo</a></li>
	</ul>
	</li>
</ul>

<div id="myTab2Content" class="tab-content">
<div class="tab-pane fade in active" id="home-2">
<p>Raw denim you probably haven't heard of them jean shorts Austin.
Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui
irure terry richardson ex squid. Aliquip placeat salvia cillum iphone.
Seitan aliquip quis cardigan american apparel, butcher voluptate nisi
qui.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>

<div class="tab-pane fade" id="profile-2">
<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla
single-origin coffee squid. Exercitation +1 labore velit, blog sartorial
PBR leggings next level wes anderson artisan four loko farm-to-table
craft beer twee. Qui photo booth letterpress, commodo enim craft beer
mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
organic, assumenda labore aesthetic magna delectus mollit. Keytar
helvetica VHS salvia yr, vero magna velit sapiente labore stumptown.
Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts
beard ut DIY ethical culpa terry richardson biodiesel. Art party
scenester stumptown, tumblr butcher vero sint qui sapiente accusamus
tattooed echo park.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>

<div class="tab-pane fade" id="dropdown3">
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

<div class="tab-pane fade" id="dropdown4">
<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art
party before they sold out master cleanse gluten-free squid scenester
freegan cosby sweater. Fanny pack portland seitan DIY, art party
locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY
salvia PBR, banh mi before they sold out farm-to-table VHS viral
locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats
keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial
keffiyeh echo park vegan.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>
</div>





<br>
<br>
<br>







<h3 class="heading">Stacked Tabs</h3>


<div class="row">

<div class="col-md-3 col-sm-5">

<ul id="myTab" class="nav nav-pills nav-stacked">
	<li class="active"><a
		href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#home-3"
		data-toggle="tab"><i class="fa fa-home"></i> &nbsp;&nbsp;Home</a></li>
	<li><a
		href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#profile-3"
		data-toggle="tab"><i class="fa fa-user"></i> &nbsp;&nbsp;Profile</a></li>
	<li class="dropdown"><a href="javascript:;" id="myTabDrop3"
		class="dropdown-toggle" data-toggle="dropdown"><i
		class="fa fa-chevron-sign-down"></i> &nbsp;&nbsp;Dropdown <b
		class="caret"></b></a>
	<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
		<li><a
			href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#dropdown5"
			tabindex="-1" data-toggle="tab">@fat</a></li>
		<li><a
			href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#dropdown6"
			tabindex="-1" data-toggle="tab">@mdo</a></li>
	</ul>
	</li>
</ul>

</div>
<!-- /.col -->

<div class="col-md-9 col-sm-7">

<div id="myTabContent" class="tab-content stacked-content">
<div class="tab-pane fade in active" id="home-3">
<p>Raw denim you probably haven't heard of them jean shorts Austin.
Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui
irure terry richardson ex squid. Aliquip placeat salvia cillum iphone.
Seitan aliquip quis cardigan american apparel, butcher voluptate nisi
qui.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>

<div class="tab-pane fade" id="profile-3">
<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla
single-origin coffee squid. Exercitation +1 labore velit, blog sartorial
PBR leggings next level wes anderson artisan four loko farm-to-table
craft beer twee. Qui photo booth letterpress, commodo enim craft beer
mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
organic, assumenda labore aesthetic magna delectus mollit. Keytar
helvetica VHS salvia yr, vero magna velit sapiente labore stumptown.
Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts
beard ut DIY ethical culpa terry richardson biodiesel. Art party
scenester stumptown, tumblr butcher vero sint qui sapiente accusamus
tattooed echo park.</p>

<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.
Nullam dictum felis eu pede mollis pretium.</p>
</div>

<div class="tab-pane fade" id="dropdown5">
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

<div class="tab-pane fade" id="dropdown6">
<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art
party before they sold out master cleanse gluten-free squid scenester
freegan cosby sweater. Fanny pack portland seitan DIY, art party
locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY
salvia PBR, banh mi before they sold out farm-to-table VHS viral
locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats
keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial
keffiyeh echo park vegan.</p>

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
<!-- /.row --> <br>
<br>
<br>






<h3 class="heading">Accordion Panel</h3>


<div class="panel-group accordion" id="accordion">

<div class="panel panel-default open">
<div class="panel-heading">
<h4 class="panel-title"><a class="accordion-toggle"
	data-toggle="collapse" data-parent=".accordion"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#collapseOne">
Collapsible Group Item #1 </a></h4>
</div>

<div id="collapseOne" class="panel-collapse collapse in">
<div class="panel-body">Anim pariatur cliche reprehenderit, enim
eiusmod high life accusamus terry richardson ad squid. 3 wolf moon
officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a
bird on it squid single-origin coffee nulla assumenda shoreditch et.
Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.
Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth
nesciunt you probably haven't heard of them accusamus labore sustainable
VHS.</div>
</div>
</div>
<!-- /.panel-default -->

<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a class="accordion-toggle"
	data-toggle="collapse" data-parent=".accordion"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#collapseTwo">
Collapsible Group Item #2 </a></h4>
</div>

<div id="collapseTwo" class="panel-collapse collapse">
<div class="panel-body">Anim pariatur cliche reprehenderit, enim
eiusmod high life accusamus terry richardson ad squid. 3 wolf moon
officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a
bird on it squid single-origin coffee nulla assumenda shoreditch et.
Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.
Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth
nesciunt you probably haven't heard of them accusamus labore sustainable
VHS.</div>
</div>
</div>
<!-- /.panel-default -->

<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a class="accordion-toggle"
	data-toggle="collapse" data-parent=".accordion"
	href="http://preview.jumpstartthemes.com/canvas-admin/ui-tabs.html#collapseThree">
Collapsible Group Item #3 </a></h4>
</div>

<div id="collapseThree" class="panel-collapse collapse">
<div class="panel-body">Anim pariatur cliche reprehenderit, enim
eiusmod high life accusamus terry richardson ad squid. 3 wolf moon
officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a
bird on it squid single-origin coffee nulla assumenda shoreditch et.
Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.
Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth
nesciunt you probably haven't heard of them accusamus labore sustainable
VHS.</div>
</div>
</div>
<!-- /.panel-default --></div>
<!-- /.accordion --></div>
<!-- /.col-md --></div>
<!-- /.row --></div>
<!-- /#content-container -->
