<%@ page import="controller.StaffViewLocationController" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="function" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<base href="${pageContext.request.contextPath}/admin/">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>View Location</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="css/jquery.ui.1.10.2.ie.css"/><![endif]-->
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="css/plugins.css" rel="stylesheet" type="text/css" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" />
<link href="css/icons.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<!--[if IE 7]><link rel="stylesheet" href="css/font-awesome-ie7.min.css"><![endif]-->
<!--[if IE 8]><link href="css/ie8.css" rel="stylesheet" type="text/css"/><![endif]-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.10.2.custom.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/lodash.compat.min.js"></script>
<!--[if lt IE 9]><script src="jshtml5shiv.js"></script><![endif]-->
<script type="text/javascript" src="js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="js/jquery.event.move.js"></script>
<script type="text/javascript" src="js/jquery.event.swipe.js"></script>
<script type="text/javascript" src="js/breakpoints.js"></script>
<script type="text/javascript" src="js/respond.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.min.js"></script>
<script type="text/javascript" src="js/jquery.slimscroll.min.js"></script>
<script type="text/javascript"
	src="js/jquery.slimscroll.horizontal.min.js"></script>
<!--[if lt IE 9]><script type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
<script type="text/javascript" src="js/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="js/jquery.flot.min.js"></script>
<script type="text/javascript" src="js/jquery.flot.tooltip.min.js"></script>
<script type="text/javascript" src="js/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="js/jquery.flot.time.min.js"></script>
<script type="text/javascript" src="js/jquery.flot.growraf.min.js"></script>
<script type="text/javascript" src="js/jquery.easy-pie-chart.min.js"></script>
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/daterangepicker.js"></script>
<script type="text/javascript" src="js/jquery.blockUI.min.js"></script>
<script type="text/javascript" src="js/fullcalendar.min.js"></script>
<script type="text/javascript" src="js/jquery.noty.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/default.js"></script>
<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/select2.min.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<script type="text/javascript" src="js/plugins.js"></script>
<script type="text/javascript" src="js/plugins.form-components.js"></script>
<script>
	$(document).ready(function() {
		App.init();
		Plugins.init();
		FormComponents.init()
	});
</script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/pages_calendar.js"></script>
<script type="text/javascript" src="js/chart_filled_blue.js"></script>
<script type="text/javascript" src="js/chart_simple.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="container">
		<c:choose>
			 <c:when test="${sessionScope.usertype eq 'Admin' }">
				<%@include file="menu.jsp" %>		
			 </c:when>
			 <c:otherwise>
				<%@include file="staffMenu.jsp" %> 		 				
			 </c:otherwise>
		</c:choose>
		<div id="content">
			<div class="container">
				<!-- <div class="crumbs">
					<ul id="breadcrumbs" class="breadcrumb">
						<li><i class="icon-home"></i> <a href="index.html">Dashboard</a>
						</li>
						<li class="current"><a href="pages_calendar.html" title="">Calendar</a>
						</li>
					</ul>
					<ul class="crumb-buttons">
						<li><a href="charts.html" title=""><i class="icon-signal"></i><span>Statistics</span></a></li>
						<li class="dropdown"><a href="#" title=""
							data-toggle="dropdown"><i class="icon-tasks"></i><span>Users
									<strong>(+3)</strong>
							</span><i class="icon-angle-down left-padding"></i></a>
							<ul class="dropdown-menu pull-right">
								<li><a href="form_components.html" title=""><i
										class="icon-plus"></i>Add new User</a></li>
								<li><a href="tables_dynamic.html" title=""><i
										class="icon-reorder"></i>Overview</a></li>
							</ul></li>
						<li class="range"><a href="#"> <i class="icon-calendar"></i>
								<span></span> <i class="icon-angle-down"></i>
						</a></li>
					</ul>
				</div> -->
				<div class="page-header">
					<div class="page-title">
						<h3>Dashboard</h3>

					</div>

				</div>
				<!-- <div class="row row-bg">
					<div class="col-sm-6 col-md-3">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual cyan">
									<div class="statbox-sparkline">30,20,15,30,22,25,26,30,27</div>
								</div>
								<div class="title">Clients</div>
								<div class="value">4 501</div>
								<a class="more" href="javascript:void(0);">View More <i
									class="pull-right icon-angle-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual green">
									<div class="statbox-sparkline">20,30,30,29,22,15,20,30,32</div>
								</div>
								<div class="title">Feedbacks</div>
								<div class="value">714</div>
								<a class="more" href="javascript:void(0);">View More <i
									class="pull-right icon-angle-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 hidden-xs">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual yellow">
									<i class="icon-dollar"></i>
								</div>
								<div class="title">Total Profit</div>
								<div class="value">$42,512.61</div>
								<a class="more" href="javascript:void(0);">View More <i
									class="pull-right icon-angle-right"></i></a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 hidden-xs">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual red">
									<i class="icon-user"></i>
								</div>
								<div class="title">Visitors</div>
								<div class="value">2 521 719</div>
								<a class="more" href="javascript:void(0);">View More <i
									class="pull-right icon-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div> -->
				<div class="row">
					<div class="col-sm-6">

						<div id="map" style="width: 1200px; height: 1000px">
						<c:set var="list" value="${sessionScope.lsPoliceStation}"></c:set>
						<c:set var="len" value="${function:length(list) }"></c:set>
						<input type="hidden" id="len" value="${len}">
						
							<c:forEach items="${sessionScope.lsPoliceStation}" var="i" varStatus="j">
								<input type="hidden" id="mapLatitude${j.count}" value="${i.latitude}">
								<input type="hidden" id="mapLongitude${j.count}" value="${i.longitude}">
								<input type="hidden" id="mapPoliceStation${j.count}" value="${i.policeStationName}">
							</c:forEach>
						</div>
					</div>
				</div>
				<script src="http://maps.google.com/maps/api/js?sensor=false"
					type="text/javascript"></script>
<script type="text/javascript">

  </script>

<script>
  function loadcase()
	{
		//var countryId=document.getElementById("countryId");
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		
		//removeAllState();
		
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) 
			{
				/* alert(xmlhttp.responseText); */
				var jsonObj = JSON.parse(xmlhttp.responseText);
				
				var string="";
				var station = [];
				var lati = [];
				var longt = [];
				
				for(var i=0 ; i<jsonObj.length ; i++)
				{
						lati.push(jsonObj[i].lati);
						longt.push(jsonObj[i].longi);
				}
				
			
    var locations=string;
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 9,
      center: new google.maps.LatLng(23.0300, 72.5800),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;
	//alert(lati.length);
    for (i = 0; i < lati.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(lati[i], longt[i]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(station[i]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
				
				
				////////////////////////////////////ended by rikhil
				
				
    setTimeout("loadcase()",3000);
			}
			
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/GPSLocationController?flag=searchLocation", true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}
	
	function removeAllState()
	{
		var removeState=document.cityForm.stateId.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.cityForm.stateId.remove(i);
		}
	}

</script>

				<!-- <div class="row">

					<script
						src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDV8gcr-lFzbfGKs-KgD78_Qjvv7wq0w9M&callback=initMap"
						async defer></script>

					<script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 23.0343621, lng:72.56531689999997},
          zoom: 8
        });
      }
    </script>
				</div> -->
			</div>
		</div>
	</div>

<script>loadcase();


</script>
</body>
</html>