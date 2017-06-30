<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" buffer="none"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%>
<!DOCTYPE html>
<html>
<head>
<title>用户信息维护</title>

<lambo:link
	path="global/plugins/datatables/datatables.css,
global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css,
global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css" />


<lambo:script
	path="global/scripts/datatable.js,
global/plugins/datatables/datatables.js,
global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" />

<script>
	$(document).ready(function(){
		var table = $('#sample_1');

        var oTable = table.dataTable({

            // Or you can use remote translation file
            //"language": {
            //   url: '//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Portuguese.json'
            //},


            buttons: [
                { extend: 'print', className: 'btn dark btn-outline' },
                { extend: 'copy', className: 'btn red btn-outline' },
                { extend: 'pdf', className: 'btn green btn-outline' },
                { extend: 'excel', className: 'btn yellow btn-outline ' },
                { extend: 'csv', className: 'btn purple btn-outline ' },
                { extend: 'colvis', className: 'btn dark btn-outline', text: 'Columns'}
            ],

            // setup responsive extension: http://datatables.net/extensions/responsive/
            responsive: true,

            //"ordering": false, disable column ordering 
            //"paging": false, disable pagination

            "order": [
                [0, 'asc']
            ],
            
            "lengthMenu": [
                [5, 10, 15, 20, -1],
                [5, 10, 15, 20, "All"] // change per page values here
            ],
            // set the initial value
            "pageLength": 10
            // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
            // setup uses scrollable div(table-scrollable) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
            // So when dropdowns used the scrollable div should be removed. 
            //"dom": "<'row' <'col-md-12'T>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
        });
	})
</script>
</head>
<body>
<div class="row" style="margin-top: 20px;">
<div class="col-md-12"><!-- BEGIN EXAMPLE TABLE PORTLET-->
<div class="portlet light bordered">
<div class="portlet-title">
<div class="caption font-dark"><i class="icon-settings font-dark"></i>
<span class="caption-subject bold uppercase">用户信息维护</span></div>
</div>
<div class="portlet-body">
<table class="table table-striped table-bordered table-hover"
	id="sample_1">
	<thead>
		<tr>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Trident</td>
			<td>Internet Explorer 4.0</td>
			<td>Win 95+</td>
			<td>4</td>
			<td>X</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet Explorer 5.0</td>
			<td>Win 95+</td>
			<td>5</td>
			<td>C</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet Explorer 5.5</td>
			<td>Win 95+</td>
			<td>5.5</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet Explorer 6</td>
			<td>Win 98+</td>
			<td>6</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet Explorer 7</td>
			<td>Win XP SP2+</td>
			<td>7</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>AOL browser (AOL desktop)</td>
			<td>Win XP</td>
			<td>6</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 1.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.7</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 1.5</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 2.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 3.0</td>
			<td>Win 2k+ / OSX.3+</td>
			<td>1.9</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Camino 1.0</td>
			<td>OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Camino 1.5</td>
			<td>OSX.3+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Netscape 7.2</td>
			<td>Win 95+ / Mac OS 8.6-9.2</td>
			<td>1.7</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Netscape Browser 8</td>
			<td>Win 98SE+</td>
			<td>1.7</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Netscape Navigator 9</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.1</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1.1</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.2</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1.2</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.3</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1.3</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.4</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1.4</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.5</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1.5</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.6</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1.6</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.7</td>
			<td>Win 98+ / OSX.1+</td>
			<td>1.7</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.8</td>
			<td>Win 98+ / OSX.1+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Seamonkey 1.1</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Epiphany 2.20</td>
			<td>Gnome</td>
			<td>1.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 1.2</td>
			<td>OSX.3</td>
			<td>125.5</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 1.3</td>
			<td>OSX.3</td>
			<td>312.8</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 2.0</td>
			<td>OSX.4+</td>
			<td>419.3</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 3.0</td>
			<td>OSX.4+</td>
			<td>522.1</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>OmniWeb 5.5</td>
			<td>OSX.4+</td>
			<td>420</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>iPod Touch / iPhone</td>
			<td>iPod</td>
			<td>420.1</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>S60</td>
			<td>S60</td>
			<td>413</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 7.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 7.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 8.0</td>
			<td>Win 95+ / OSX.2+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 8.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 9.0</td>
			<td>Win 95+ / OSX.3+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 9.2</td>
			<td>Win 88+ / OSX.3+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 9.5</td>
			<td>Win 88+ / OSX.3+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera for Wii</td>
			<td>Wii</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Nokia N800</td>
			<td>N800</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Nintendo DS browser</td>
			<td>Nintendo DS</td>
			<td>8.5</td>
			<td>C/A <sup>1</sup></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<!-- END EXAMPLE TABLE PORTLET--></div>
</div>

</body>

</html>
