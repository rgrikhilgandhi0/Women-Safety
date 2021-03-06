<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Edit Police Staff</title>
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
<!--[if lt IE 9]><script src="js/html5shiv.js"></script><![endif]-->
<script type="text/javascript" src="js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="js/jquery.event.move.js"></script>
<script type="text/javascript" src="js/jquery.event.swipe.js"></script>
<script type="text/javascript" src="js/breakpoints.js"></script>
<script type="text/javascript" src="js/respond.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.min.js"></script>
<script type="text/javascript" src="js/jquery.slimscroll.min.js"></script>
<script type="text/javascript"
	src="js/jquery.slimscroll.horizontal.min.js"></script>
<script type="text/javascript" src="js/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/daterangepicker.js"></script>
<script type="text/javascript" src="js/jquery.blockUI.min.js"></script>
<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/select2.min.js"></script>
<script type="text/javascript" src="js/fileinput.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/additional-methods.min.js"></script>
<script type="text/javascript" src="js/jquery.noty.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/default.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<script type="text/javascript" src="assets/js/plugins.js"></script>
<script type="text/javascript"
	src="assets/js/plugins.form-components.js"></script>
<script>
	$(document).ready(function() {
		App.init();
		Plugins.init();
		FormComponents.init()
	});
</script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="container">
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="content">
			<div class="container">
				<div class="crumbs">
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
				</div>
				<div class="page-header">
					<div class="page-title">
						<h3> </h3>					
					</div>					
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Edit Police Staff
								</h4>
							</div>
							<div class="widget-content">
						
								<form class="form-horizontal row-border" id="validate-1"
									action="<%=request.getContextPath()%>/PoliceStaffController" method="post">
									<c:forEach items="${sessionScope.editls}" var="policeStaff">
									<input type="hidden" name="policeStaffId" value="${policeStaff.policeStaffId}">
									<div class="form-group">
										<label class="col-md-3 control-label">Police Name <span
											class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="policeName" value="${policeStaff.policeName}" class="form-control required">
										</div>
										</div>
										<div class="form-group">
										<label class="col-md-3 control-label">Post<span
											class="required">*</span></label>
										<div class="col-md-9">
											<select name="postId" class="form-control required">		
												<option>Choose one...</option>
												<c:forEach items="${sessionScope.lsPost}" var="lsPost">
													<c:if test="${policeStaff.postVO.postId eq lsPost.postId}">		
														<option value="${policeStaff.postVO.postId}" selected>${policeStaff.postVO.postName}</option></c:if>
													<c:if test="${policeStaff.postVO.postId ne lsPost.postId}">		
														<option value="${lsPost.postId}">${lsPost.postName}</option></c:if>
												</c:forEach>
											</select>
										</div>
									</div>
										<div class="form-group">
										<label class="col-md-3 control-label">Police Station<span
											class="required">*</span></label>
										<div class="col-md-9">
											<select name="policeStationId" class="form-control required">
											<option>Choose one...</option>
											<c:forEach items="${sessionScope.lsPoliceStation}" var="lsPoliceStation">
													<c:if test="${policeStaff.policeStationVO.policeStationId eq lsPoliceStation.policeStationId}">		
														<option value="${policeStaff.policeStationVO.policeStationId}" selected>${policeStaff.policeStationVO.policeStationName}</option></c:if>
													<c:if test="${policeStaff.policeStationVO.policeStationId ne lsPoliceStation.policeStationId}">		
														<option value="${lsPoliceStation.policeStationId}">${lsPoliceStation.policeStationName}</option></c:if>
												</c:forEach>
											</select>
										</div>
										</div>
										
										<div class="form-group">
										<label class="col-md-3 control-label">Area<span
											class="required">*</span></label>
										<div class="col-md-9">
											<select name="areaId" class="form-control required">		
												<option>Choose one...</option>
												<c:forEach items="${sessionScope.lsArea}" var="lsArea">
													<c:if test="${policeStaff.areaVO.areaId eq lsArea.areaId}">		
														<option value="${policeStaff.areaVO.areaId}" selected>${policeStaff.areaVO.areaName}</option></c:if>
													<c:if test="${policeStaff.areaVO.areaId ne lsArea.areaId}">		
														<option value="${lsArea.areaId}">${lsArea.areaName}</option></c:if>
												</c:forEach>
												<%-- <c:forEach items="${sessionScope.lsArea}" var="lsArea">		
													<option>${lsArea.areaName}</option>
												</c:forEach> --%>
											</select>
										</div>
										</div>
											
										<div class="form-group">
										<label class="col-md-3 control-label">Experience <span
											class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="experience" value="${policeStaff.experience}" class="form-control required">
										</div>
										</div>
										
										<div class="form-group">
										<label class="col-md-3 control-label">Contact No. <span
											class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="contactNo" value="${policeStaff.contactNo}" class="form-control required">
										</div>
										</div>
										
										<div class="form-group">
										<label class="col-md-3 control-label">Email Id <span
											class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="emailId" value="${policeStaff.emailId}" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Achievements <span
											class="required">*</span></label>
										<div class="col-md-9">
											<textarea rows="3" cols="5" name="achievements" 
												class="form-control">${policeStaff.achievements}</textarea>
										</div>
									</div>
									<input type="hidden" name="flag" value="updatePoliceStaff" />
									<div class="form-actions">
										<input type="submit" value="Update"
											class="btn btn-primary pull-right">
									</div>
									</c:forEach>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		if (location.host == "envato.stammtec.de"
				|| location.host == "themes.stammtec.de") {
			var _paq = _paq || [];
			_paq.push([ "trackPageView" ]);
			_paq.push([ "enableLinkTracking" ]);
			(function() {
				var a = (("https:" == document.location.protocol) ? "https"
						: "http")
						+ "://analytics.stammtec.de/";
				_paq.push([ "setTrackerUrl", a + "piwik.php" ]);
				_paq.push([ "setSiteId", "17" ]);
				var e = document, c = e.createElement("script"), b = e
						.getElementsByTagName("script")[0];
				c.type = "text/javascript";
				c.defer = true;
				c.async = true;
				c.src = a + "piwik.js";
				b.parentNode.insertBefore(c, b)
			})()
		};
	</script>
</body>
</html>