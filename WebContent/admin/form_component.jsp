<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Form Components | Melon - Flat &amp; Responsive Admin
	Template</title>
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
<script type="text/javascript" src="js/typeahead.min.js"></script>
<script type="text/javascript" src="js/jquery.autosize.min.js"></script>
<script type="text/javascript" src="js/jquery.inputlimiter.min.js"></script>
<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/select2.min.js"></script>
<script type="text/javascript" src="js/fileinput.js"></script>
<script type="text/javascript" src="js/jquery.duallistbox.min.js"></script>
<script type="text/javascript" src="js/jquery.inputmask.min.js"></script>
<script type="text/javascript" src="js/wysihtml5.min.js"></script>
<script type="text/javascript" src="js/bootstrap-wysihtml5.min.js"></script>
<script type="text/javascript" src="js/bootstrap-multiselect.min.js"></script>
<script type="text/javascript" src="js/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="js/globalize.js"></script>
<script type="text/javascript" src="js/globalize.culture.de-DE.js"></script>
<script type="text/javascript" src="js/globalize.culture.ja-JP.js"></script>
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
<script type="text/javascript" src="js/form_components.js"></script>
</head>
<body>
	<header class="header navbar navbar-fixed-top" role="banner">
		<div class="container">
			<ul class="nav navbar-nav">
				<li class="nav-toggle"><a href="javascript:void(0);" title=""><i
						class="icon-reorder"></i></a></li>
			</ul>
			<a class="navbar-brand" href="index.html"> <img
				src="assets/img/logo.png" alt="logo" /> <strong>ME</strong>LON
			</a> <a href="#" class="toggle-sidebar bs-tooltip"
				data-placement="bottom" data-original-title="Toggle navigation">
				<i class="icon-reorder"></i>
			</a>
			<ul class="nav navbar-nav navbar-left hidden-xs hidden-sm">
				<li><a href="#"> Dashboard </a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> Dropdown <i
						class="icon-caret-down small"></i>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="icon-user"></i> Example #1</a></li>
						<li><a href="#"><i class="icon-calendar"></i> Example #2</a></li>
						<li class="divider"></li>
						<li><a href="#"><i class="icon-tasks"></i> Example #3</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="icon-warning-sign"></i> <span
						class="badge">5</span>
				</a>
					<ul class="dropdown-menu extended notification">
						<li class="title">
							<p>You have 5 new notifications</p>
						</li>
						<li><a href="javascript:void(0);"> <span
								class="label label-success"><i class="icon-plus"></i></span> <span
								class="message">New user registration.</span> <span class="time">1
									mins</span>
						</a></li>
						<li><a href="javascript:void(0);"> <span
								class="label label-danger"><i class="icon-warning-sign"></i></span>
								<span class="message">High CPU load on cluster #2.</span> <span
								class="time">5 mins</span>
						</a></li>
						<li><a href="javascript:void(0);"> <span
								class="label label-success"><i class="icon-plus"></i></span> <span
								class="message">New user registration.</span> <span class="time">10
									mins</span>
						</a></li>
						<li><a href="javascript:void(0);"> <span
								class="label label-info"><i class="icon-bullhorn"></i></span> <span
								class="message">New items are in queue.</span> <span
								class="time">25 mins</span>
						</a></li>
						<li><a href="javascript:void(0);"> <span
								class="label label-warning"><i class="icon-bolt"></i></span> <span
								class="message">Disk space to 85% full.</span> <span
								class="time">55 mins</span>
						</a></li>
						<li class="footer"><a href="javascript:void(0);">View all
								notifications</a></li>
					</ul></li>
				<li class="dropdown hidden-xs hidden-sm"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="icon-tasks"></i> <span class="badge">7</span>
				</a>
					<ul class="dropdown-menu extended notification">
						<li class="title">
							<p>You have 7 pending tasks</p>
						</li>
						<li><a href="javascript:void(0);"> <span class="task">
									<span class="desc">Preparing new release</span> <span
									class="percent">30%</span>
							</span>
								<div class="progress progress-small">
									<div style="width: 30%;" class="progress-bar progress-bar-info"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0);"> <span class="task">
									<span class="desc">Change management</span> <span
									class="percent">80%</span>
							</span>
								<div class="progress progress-small progress-striped active">
									<div style="width: 80%;"
										class="progress-bar progress-bar-danger"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0);"> <span class="task">
									<span class="desc">Mobile development</span> <span
									class="percent">60%</span>
							</span>
								<div class="progress progress-small">
									<div style="width: 60%;"
										class="progress-bar progress-bar-success"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0);"> <span class="task">
									<span class="desc">Database migration</span> <span
									class="percent">20%</span>
							</span>
								<div class="progress progress-small">
									<div style="width: 20%;"
										class="progress-bar progress-bar-warning"></div>
								</div>
						</a></li>
						<li class="footer"><a href="javascript:void(0);">View all
								tasks</a></li>
					</ul></li>
				<li class="dropdown hidden-xs hidden-sm"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="icon-envelope"></i> <span class="badge">1</span>
				</a>
					<ul class="dropdown-menu extended notification">
						<li class="title">
							<p>You have 3 new messages</p>
						</li>
						<li><a href="javascript:void(0);"> <span class="photo"><img
									src="assets/img/demo/avatar-1.jpg" alt="" /></span> <span
								class="subject"> <span class="from">Bob Carter</span> <span
									class="time">Just Now</span>
							</span> <span class="text"> Consetetur sadipscing elitr... </span>
						</a></li>
						<li><a href="javascript:void(0);"> <span class="photo"><img
									src="assets/img/demo/avatar-2.jpg" alt="" /></span> <span
								class="subject"> <span class="from">Jane Doe</span> <span
									class="time">45 mins</span>
							</span> <span class="text"> Sed diam nonumy... </span>
						</a></li>
						<li><a href="javascript:void(0);"> <span class="photo"><img
									src="assets/img/demo/avatar-3.jpg" alt="" /></span> <span
								class="subject"> <span class="from">Patrick Nilson</span>
									<span class="time">6 hours</span>
							</span> <span class="text"> No sea takimata sanctus... </span>
						</a></li>
						<li class="footer"><a href="javascript:void(0);">View all
								messages</a></li>
					</ul></li>
				<li><a href="#" class="dropdown-toggle row-bg-toggle"> <i
						class="icon-resize-vertical"></i>
				</a></li>
				<li class="dropdown"><a href="#"
					class="project-switcher-btn dropdown-toggle"> <i
						class="icon-folder-open"></i> <span>Projects</span>
				</a></li>
				<li class="dropdown user"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="icon-male"></i> <span
						class="username">John Doe</span> <i class="icon-caret-down small"></i>
				</a>
					<ul class="dropdown-menu">
						<li><a href="pages_user_profile.html"><i
								class="icon-user"></i> My Profile</a></li>
						<li><a href="pages_calendar.html"><i
								class="icon-calendar"></i> My Calendar</a></li>
						<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
					</ul></li>
			</ul>
		</div>
		<div id="project-switcher" class="container project-switcher">
			<div id="scrollbar">
				<div class="handle"></div>
			</div>
			<div id="frame">
				<ul class="project-list">
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-desktop"></i></span> <span class="title">Lorem ipsum
								dolor</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-compass"></i></span> <span class="title">Dolor sit
								invidunt</span>
					</a></li>
					<li class="current"><a href="javascript:void(0);"> <span
							class="image"><i class="icon-male"></i></span> <span
							class="title">Consetetur sadipscing elitr</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-thumbs-up"></i></span> <span class="title">Sed diam
								nonumy</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-female"></i></span> <span class="title">At vero eos
								et</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-beaker"></i></span> <span class="title">Sed diam
								voluptua</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-desktop"></i></span> <span class="title">Lorem ipsum
								dolor</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-compass"></i></span> <span class="title">Dolor sit
								invidunt</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-male"></i></span> <span class="title">Consetetur
								sadipscing elitr</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-thumbs-up"></i></span> <span class="title">Sed diam
								nonumy</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-female"></i></span> <span class="title">At vero eos
								et</span>
					</a></li>
					<li><a href="javascript:void(0);"> <span class="image"><i
								class="icon-beaker"></i></span> <span class="title">Sed diam
								voluptua</span>
					</a></li>
				</ul>
			</div>
		</div>
	</header>
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
						<h3>Form Components</h3>
						<span>Good morning, John!</span>
					</div>
					<ul class="page-stats">
						<li>
							<div class="summary">
								<span>New orders</span>
								<h3>17,561</h3>
							</div>
							<div id="sparkline-bar" class="graph sparkline hidden-xs">20,15,8,50,20,40,20,30,20,15,30,20,25,20</div>
						</li>
						<li>
							<div class="summary">
								<span>My balance</span>
								<h3>$21,561.21</h3>
							</div>
							<div id="sparkline-bar2" class="graph sparkline hidden-xs">20,15,8,50,20,40,20,30,20,15,30,20,25,20</div>
						</li>
					</ul>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Full Size Inputs
								</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" action="#">
									<div class="alert alert-info fade in">
										<i class="icon-remove close" data-dismiss="alert"></i> This
										are examples of full width input fields. Please find
										select-boxes and other things below.
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Usual input
											field:</label>
										<div class="col-md-10">
											<input type="text" name="regular" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Password:</label>
										<div class="col-md-10">
											<input class="form-control" type="password" name="pass">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">With
											placeholder:</label>
										<div class="col-md-10">
											<input class="form-control" type="text" name="placeholder"
												placeholder="placeholder">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Read only field:</label>
										<div class="col-md-10">
											<input class="form-control" type="text" name="readonly"
												readonly value="read only">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Disabled field:</label>
										<div class="col-md-10">
											<input type="text" name="disabled" disabled="disabled"
												value="disabled" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Autocomplete (<a
											href="http://twitter.github.io/typeahead.js/" target="_blank">Typeahead.js</a>):
										</label>
										<div class="col-md-10">
											<input type="text" name="autocomplete" class="form-control"
												id="autocomplete-example"> <span class="help-block">Start
												typing e.g. New York</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Helpers:</label>
										<div class="col-md-10">
											<div class="row">
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control"><span
														class="help-block">Left aligned helper</span>
												</div>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control"><span
														class="help-block align-center">Centered helper</span>
												</div>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control"><span
														class="help-block align-right">Right aligned helper</span>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Predefined
											value:</label>
										<div class="col-md-10">
											<input type="text" name="regular" value="http://"
												class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Field with
											tooltip on focus:</label>
										<div class="col-md-10">
											<input type="text" name="regular" title="Tooltip on focus"
												class="form-control bs-focus-tooltip">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Field with
											tooltip on hover:</label>
										<div class="col-md-10">
											<input type="text" name="regular" title="Tooltip on hover"
												class="form-control bs-tooltip">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Max 10
											characters:</label>
										<div class="col-md-10">
											<input type="text" name="regular" maxlength="10"
												placeholder="max 10 characters" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label"><i
											class="icon-cog"></i>With icons:</label>
										<div class="col-md-10">
											<input type="text" name="regular" class="form-control"><i
												class="icon-cog field-icon"></i>
										</div>
									</div>
									<div class="form-group">
										<label for="labelfor" class="col-md-2 control-label">Clickable
											label:</label>
										<div class="col-md-10">
											<input type="text" name="labelfor" id="labelfor"
												class="form-control">
										</div>
									</div>
									<div class="form-group has-warning">
										<label for="inputWarning" class="col-md-2 control-label">Warning
											input:</label>
										<div class="col-md-10">
											<input type="text" id="inputWarning" class="form-control"><span
												class="help-block">You're near the limit</span>
										</div>
									</div>
									<div class="form-group has-error">
										<label for="inputError" class="col-md-2 control-label">Error
											input:</label>
										<div class="col-md-10">
											<input type="text" id="inputError" class="form-control"><span
												class="help-block">Something went wrong</span>
										</div>
									</div>
									<div class="form-group has-success">
										<label for="inputSuccess" class="col-md-2 control-label">Success
											input:</label>
										<div class="col-md-10">
											<input type="text" id="inputSuccess" class="form-control"><span
												class="help-block">Great!</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Predefined
											width:</label>
										<div class="col-md-10">
											<input class="form-control input-width-mini" type="text"
												placeholder=".input-width-mini" style="display: block;">
											<input class="form-control input-width-small" type="text"
												placeholder=".input-width-small"
												style="display: block; margin-top: 6px;"> <input
												class="form-control input-width-medium" type="text"
												placeholder=".input-width-medium"
												style="display: block; margin-top: 6px;"> <input
												class="form-control input-width-large" type="text"
												placeholder=".input-width-large"
												style="display: block; margin-top: 6px;"> <input
												class="form-control input-width-xlarge" type="text"
												placeholder=".input-width-xlarge"
												style="display: block; margin-top: 6px;"> <input
												class="form-control input-width-xxlarge" type="text"
												placeholder=".input-width-xxlarge"
												style="display: block; margin-top: 6px;"> <input
												class="form-control input-block-level" type="text"
												placeholder=".input-block-level"
												style="display: block; margin-top: 6px;">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Prepend:</label>
										<div class="col-md-10">
											<div class="input-group">
												<span class="input-group-addon">@</span> <input type="text"
													class="form-control" placeholder=".input-group">
											</div>
											<span class="help-block">Some hint here</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Append:</label>
										<div class="col-md-10">
											<div class="input-group">
												<input type="text" class="form-control"
													placeholder=".input-group"> <span
													class="input-group-addon"><i class="icon-cog"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Both:</label>
										<div class="col-md-10">
											<div class="input-group">
												<span class="input-group-addon"><i class="icon-bell"></i></span>
												<input type="text" class="form-control"
													placeholder=".input-group"> <span
													class="input-group-addon">@</span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Appended
											buttons:</label>
										<div class="col-md-5">
											<div class="input-group">
												<span class="input-group-btn">
													<button class="btn btn-default" type="button">Go!</button>
												</span> <input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-5">
											<div class="input-group">
												<input type="text" class="form-control"> <span
													class="input-group-btn">
													<button class="btn btn-default" type="button">Go!</button>
												</span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Appended
											dropdowns:</label>
										<div class="col-md-5">
											<div class="input-group">
												<div class="input-group-btn">
													<button type="button"
														class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														Action <span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a href="#">Action</a></li>
														<li><a href="#">Another action</a></li>
														<li><a href="#">Something else here</a></li>
														<li class="divider"></li>
														<li><a href="#">Separated link</a></li>
													</ul>
												</div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-5">
											<div class="input-group">
												<input type="text" class="form-control">
												<div class="input-group-btn">
													<button type="button"
														class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														Action <span class="caret"></span>
													</button>
													<ul class="dropdown-menu pull-right">
														<li><a href="#">Action</a></li>
														<li><a href="#">Another action</a></li>
														<li><a href="#">Something else here</a></li>
														<li class="divider"></li>
														<li><a href="#">Separated link</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Textarea:</label>
										<div class="col-md-10">
											<textarea rows="3" cols="5" name="textarea"
												class="form-control"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Elastic
											textarea:</label>
										<div class="col-md-10">
											<textarea rows="3" cols="5" name="textarea"
												class="auto form-control"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">With character
											counter:</label>
										<div class="col-md-10">
											<textarea rows="3" cols="5" name="use_this_name_as_id_below"
												class="limited form-control" data-limit="100"></textarea>
											<span class="help-block"
												id="limit-text-use_this_name_as_id_below"></span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Tags:</label>
										<div class="col-md-10">
											<input type="text" id="tags2" class="tags"
												value="these,are,sample,tags">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Tags with
											autocomplete:</label>
										<div class="col-md-10">
											<input type="text" id="tags3" class="tags-autocomplete"
												value="tags,with,autocomplete">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">WYSIWYG:</label>
										<div class="col-md-10">
											<textarea rows="5" name="wysiwyg"
												class="form-control wysiwyg"></textarea>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Styled Form Components
								</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" action="#">
									<div class="form-group">
										<label class="col-md-2 control-label">Stacked Radio
											Buttons: </label>
										<div class="col-md-10">
											<label class="radio"> <input type="radio"
												class="uniform" name="optionsRadios1" value="option1">
												Option 1
											</label> <label class="radio"> <input type="radio"
												class="uniform" name="optionsRadios1" value="option2"
												checked> Option 2
											</label> <label class="radio"> <input type="radio"
												class="uniform" name="optionsRadios1" value="option3"
												disabled> Option 3
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Inline Radio
											Buttons: </label>
										<div class="col-md-10">
											<label class="radio-inline"> <input type="radio"
												class="uniform" name="optionsRadios2" value="option1">
												Option 1
											</label> <label class="radio-inline"> <input type="radio"
												class="uniform" name="optionsRadios2" value="option2"
												checked> Option 2
											</label> <label class="radio-inline"> <input type="radio"
												class="uniform" name="optionsRadios2" value="option3"
												disabled> Option 3
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Stacked
											Checkbox: </label>
										<div class="col-md-10">
											<label class="checkbox"> <input type="checkbox"
												class="uniform" value=""> Checkbox 1
											</label> <label class="checkbox"> <input type="checkbox"
												class="uniform" value="" disabled> Checkbox 2
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Inline Checkbox:
										</label>
										<div class="col-md-10">
											<label class="checkbox-inline"> <input
												type="checkbox" class="uniform" value=""> Checkbox 1
											</label> <label class="checkbox-inline"> <input
												type="checkbox" class="uniform" value="" disabled>
												Checkbox 2
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">File Upload:</label>
										<div class="col-md-10">
											<input type="file" data-style="fileinput">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Default spinner:</label>
										<div class="col-md-10 input-width-large">
											<input type="text" class="form-control" id="spinner-default"
												value="10">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Overflow:</label>
										<div class="col-md-10 input-width-large">
											<input type="text" class="form-control" id="spinner-overflow"
												name="spinner-overflow" value="">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Decimal:</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="spinner-decimal"
												name="spinner-decimal" value="5.06">
										</div>
										<div class="col-md-4">
											<select class="form-control" id="culture">
												<option value="en-EN" selected="selected">English</option>
												<option value="de-DE">German</option>
												<option value="ja-JP">Japanese</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Currency:</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="spinner-currency"
												name="spinner-currency" value="5">
										</div>
										<div class="col-md-4">
											<select class="form-control" id="currency" name="currency">
												<option value="en-US">US $</option>
												<option value="de-DE">EUR €</option>
												<option value="ja-JP">YEN ¥</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Time:</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="spinner-time"
												name="spinner-time" value="08:30 PM">
										</div>
										<div class="col-md-4">
											<select class="form-control" id="culture-time">
												<option value="en-EN" selected="selected">English</option>
												<option value="de-DE">German</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Multiselect:</label>
										<div class="col-md-10">
											<select multiple="multiple" class="multiselect">
												<option value="cheese" selected>Cheese</option>
												<option value="tomatoes" selected>Tomatoes</option>
												<option value="mozarella" selected>Mozzarella</option>
												<option value="mushrooms">Mushrooms</option>
												<option value="pepperoni">Pepperoni</option>
												<option value="onions">Onions</option>
											</select>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Advanced Select List
								</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" action="#">
									<div class="form-group">
										<label class="col-md-2 control-label" for="input17">Basic
											Select</label>
										<div class="col-md-10">
											<select id="input17"
												class="select2-select-00 col-md-12 full-width-fix">
												<option></option>
												<option>Alabama</option>
												<option>Alaska</option>
												<option>Arizona</option>
												<option>Arkansas</option>
												<option>California</option>
												<option>Colorado</option>
												<option>Connecticut</option>
												<option>Delaware</option>
												<option>Florida</option>
												<option>Georgia</option>
												<option>Hawaii</option>
												<option>Idaho</option>
												<option>Illinois</option>
												<option>Indiana</option>
												<option>Iowa</option>
												<option>Kansas</option>
												<option>Kentucky</option>
												<option>Louisiana</option>
												<option>Maine</option>
												<option>Maryland</option>
												<option>Massachusetts</option>
												<option>Michigan</option>
												<option>Minnesota</option>
												<option>Mississippi</option>
												<option>Missouri</option>
												<option>Montana</option>
												<option>Nebraska</option>
												<option>Nevada</option>
												<option>New Hampshire</option>
												<option>New Jersey</option>
												<option>New Mexico</option>
												<option>New York</option>
												<option>North Dakota</option>
												<option>North Carolina</option>
												<option>Ohio</option>
												<option>Oklahoma</option>
												<option>Oregon</option>
												<option>Pennsylvania</option>
												<option>Rhode Island</option>
												<option>South Carolina</option>
												<option>South Dakota</option>
												<option>Tennessee</option>
												<option>Texas</option>
												<option>Utah</option>
												<option>Vermont</option>
												<option>Virginia</option>
												<option>Washington</option>
												<option>West Virginia</option>
												<option>Wisconsin</option>
												<option>Wyoming</option>
											</select> <span class="help-block">This select input is made
												more advance with jQuery <a
												href="http://ivaynberg.github.com/select2/" target="_blank">select2</a>
												plugin
											</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label" for="input18">Multiple
											Select</label>
										<div class="col-md-10">
											<select id="input18"
												class="select2-select-00 col-md-12 full-width-fix" multiple
												size="5">
												<option>Alabama</option>
												<option>Alaska</option>
												<option>Arizona</option>
												<option>Arkansas</option>
												<option selected>California</option>
												<option>Colorado</option>
												<option>Connecticut</option>
												<option>Delaware</option>
												<option>Florida</option>
												<option>Georgia</option>
												<option>Hawaii</option>
												<option>Idaho</option>
												<option>Illinois</option>
												<option>Indiana</option>
												<option>Iowa</option>
												<option>Kansas</option>
												<option selected>Kentucky</option>
												<option>Louisiana</option>
												<option>Maine</option>
												<option>Maryland</option>
												<option>Massachusetts</option>
												<option>Michigan</option>
												<option>Minnesota</option>
												<option>Mississippi</option>
												<option>Missouri</option>
												<option>Montana</option>
												<option>Nebraska</option>
												<option>Nevada</option>
												<option>New Hampshire</option>
												<option>New Jersey</option>
												<option>New Mexico</option>
												<option>New York</option>
												<option>North Dakota</option>
												<option>North Carolina</option>
												<option>Ohio</option>
												<option>Oklahoma</option>
												<option>Oregon</option>
												<option>Pennsylvania</option>
												<option>Rhode Island</option>
												<option>South Carolina</option>
												<option>South Dakota</option>
												<option>Tennessee</option>
												<option>Texas</option>
												<option>Utah</option>
												<option>Vermont</option>
												<option>Virginia</option>
												<option>Washington</option>
												<option>West Virginia</option>
												<option>Wisconsin</option>
												<option>Wyoming</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label" for="input19">With
											Grouping</label>
										<div class="col-md-10">
											<select id="input19"
												class="select2-select-00 col-md-12 full-width-fix">
												<optgroup label="Alaskan/Hawaiian Time Zone">
													<option value="AK">Alaska</option>
													<option value="HI">Hawaii</option>
												</optgroup>
												<optgroup label="Pacific Time Zone">
													<option value="CA">California</option>
													<option value="NV">Nevada</option>
													<option value="OR">Oregon</option>
													<option value="WA">Washington</option>
												</optgroup>
												<optgroup label="Mountain Time Zone">
													<option value="AZ">Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="MT">Montana</option>
													<option value="NE">Nebraska</option>
													<option value="NM">New Mexico</option>
													<option value="ND">North Dakota</option>
													<option value="UT">Utah</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="AR">Arkansas</option>
													<option value="IL">Illinois</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
													<option value="LA">Louisiana</option>
													<option value="MN">Minnesota</option>
													<option value="MS">Mississippi</option>
													<option value="MO">Missouri</option>
													<option value="OK">Oklahoma</option>
													<option value="SD">South Dakota</option>
													<option value="TX">Texas</option>
													<option value="TN">Tennessee</option>
													<option value="WI">Wisconsin</option>
												</optgroup>
												<optgroup label="Eastern Time Zone">
													<option value="CT">Connecticut</option>
													<option value="DE">Delaware</option>
													<option value="FL">Florida</option>
													<option value="GA">Georgia</option>
													<option value="IN">Indiana</option>
													<option value="ME">Maine</option>
													<option value="MD">Maryland</option>
													<option value="MA">Massachusetts</option>
													<option value="MI">Michigan</option>
													<option value="NH">New Hampshire</option>
													<option value="NJ">New Jersey</option>
													<option value="NY">New York</option>
													<option value="NC">North Carolina</option>
													<option value="OH">Ohio</option>
													<option value="PA">Pennsylvania</option>
													<option value="RI">Rhode Island</option>
													<option value="SC">South Carolina</option>
													<option value="VT">Vermont</option>
													<option value="VA">Virginia</option>
													<option value="WV">West Virginia</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label" for="input20">With
											Placeholder</label>
										<div class="col-md-10">
											<select id="input20"
												class="select2-select-00 col-md-12 full-width-fix" multiple
												size="5" data-placeholder="Select a State">
												<option>Alabama</option>
												<option>Alaska</option>
												<option>Arizona</option>
												<option>Arkansas</option>
												<option>California</option>
												<option>Colorado</option>
												<option>Connecticut</option>
												<option>Delaware</option>
												<option>Florida</option>
												<option>Georgia</option>
												<option>Hawaii</option>
												<option>Idaho</option>
												<option>Illinois</option>
												<option>Indiana</option>
												<option>Iowa</option>
												<option>Kansas</option>
												<option>Kentucky</option>
												<option>Louisiana</option>
												<option>Maine</option>
												<option>Maryland</option>
												<option>Massachusetts</option>
												<option>Michigan</option>
												<option>Minnesota</option>
												<option>Mississippi</option>
												<option>Missouri</option>
												<option>Montana</option>
												<option>Nebraska</option>
												<option>Nevada</option>
												<option>New Hampshire</option>
												<option>New Jersey</option>
												<option>New Mexico</option>
												<option>New York</option>
												<option>North Dakota</option>
												<option>North Carolina</option>
												<option>Ohio</option>
												<option>Oklahoma</option>
												<option>Oregon</option>
												<option>Pennsylvania</option>
												<option>Rhode Island</option>
												<option>South Carolina</option>
												<option>South Dakota</option>
												<option>Tennessee</option>
												<option>Texas</option>
												<option>Utah</option>
												<option>Vermont</option>
												<option>Virginia</option>
												<option>Washington</option>
												<option>West Virginia</option>
												<option>Wisconsin</option>
												<option>Wyoming</option>
											</select>
											<p class="help-block">
												<code>data-placeholder="Select a State"</code>
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label" for="input21">With
											Minimum Input</label>
										<div class="col-md-10">
											<select id="input21"
												class="select2-select-01 col-md-12 full-width-fix" multiple
												size="5" data-placeholder="Select a State">
												<option>Alabama</option>
												<option>Alaska</option>
												<option>Arizona</option>
												<option>Arkansas</option>
												<option>California</option>
												<option>Colorado</option>
												<option>Connecticut</option>
												<option>Delaware</option>
												<option>Florida</option>
												<option>Georgia</option>
												<option>Hawaii</option>
												<option>Idaho</option>
												<option>Illinois</option>
												<option>Indiana</option>
												<option>Iowa</option>
												<option>Kansas</option>
												<option>Kentucky</option>
												<option>Louisiana</option>
												<option>Maine</option>
												<option>Maryland</option>
												<option>Massachusetts</option>
												<option>Michigan</option>
												<option>Minnesota</option>
												<option>Mississippi</option>
												<option>Missouri</option>
												<option>Montana</option>
												<option>Nebraska</option>
												<option>Nevada</option>
												<option>New Hampshire</option>
												<option>New Jersey</option>
												<option>New Mexico</option>
												<option>New York</option>
												<option>North Dakota</option>
												<option>North Carolina</option>
												<option>Ohio</option>
												<option>Oklahoma</option>
												<option>Oregon</option>
												<option>Pennsylvania</option>
												<option>Rhode Island</option>
												<option>South Carolina</option>
												<option>South Dakota</option>
												<option>Tennessee</option>
												<option>Texas</option>
												<option>Utah</option>
												<option>Vermont</option>
												<option>Virginia</option>
												<option>Washington</option>
												<option>West Virginia</option>
												<option>Wisconsin</option>
												<option>Wyoming</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label" for="input22">Tagging
											Support</label>
										<div class="col-md-10">
											<input id="input22"
												class="select2-select-02 col-md-12 full-width-fix" multiple
												data-placeholder="Type to add a Tag" type="hidden">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Unstyled Form Components
								</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" action="#">
									<div class="form-group">
										<label class="col-md-2 control-label">Stacked Radio
											Buttons: </label>
										<div class="col-md-10">
											<label class="radio"> <input type="radio"
												name="optionsRadios1" value="option1"> Option 1
											</label> <label class="radio"> <input type="radio"
												name="optionsRadios1" value="option2" checked>
												Option 2
											</label> <label class="radio"> <input type="radio"
												name="optionsRadios1" value="option3" disabled>
												Option 3
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Inline Radio
											Buttons: </label>
										<div class="col-md-10">
											<label class="radio-inline"> <input type="radio"
												name="optionsRadios2" value="option1"> Option 1
											</label> <label class="radio-inline"> <input type="radio"
												name="optionsRadios2" value="option2" checked>
												Option 2
											</label> <label class="radio-inline"> <input type="radio"
												name="optionsRadios2" value="option3" disabled>
												Option 3
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Stacked
											Checkbox: </label>
										<div class="col-md-10">
											<label class="checkbox"> <input type="checkbox"
												value=""> Checkbox 1
											</label> <label class="checkbox"> <input type="checkbox"
												value="" disabled> Checkbox 2
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Inline Checkbox:
										</label>
										<div class="col-md-10">
											<label class="checkbox-inline"> <input
												type="checkbox" value=""> Checkbox 1
											</label> <label class="checkbox-inline"> <input
												type="checkbox" value="" disabled> Checkbox 2
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Select:</label>
										<div class="col-md-10">
											<div class="row">
												<div class="col-md-4">
													<select class="form-control" name="select">
														<option value="opt1">col-md-4</option>
														<option value="opt2">Option 2</option>
														<option value="opt3">Option 3</option>
													</select>
												</div>
											</div>
											<div class="row next-row">
												<div class="col-md-6">
													<select class="form-control" name="select">
														<option value="opt1">col-md-6</option>
														<option value="opt2">Option 2</option>
														<option value="opt3">Option 3</option>
													</select>
												</div>
											</div>
											<div class="row next-row">
												<div class="col-md-8">
													<select class="form-control" name="select">
														<option value="opt1">col-md-8</option>
														<option value="opt2">Option 2</option>
														<option value="opt3">Option 3</option>
													</select>
												</div>
											</div>
											<div class="row next-row">
												<div class="col-md-12">
													<select class="form-control" name="select">
														<option value="opt1">col-md-12</option>
														<option value="opt2">Option 2</option>
														<option value="opt3">Option 3</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Multiple Select:</label>
										<div class="col-md-10">
											<select multiple="multiple" class="multiple"
												title="Click to Select a City">
												<option>Amsterdam</option>
												<option selected="selected">Atlanta</option>
												<option selected="selected">Baltimore</option>
												<option>Boston</option>
												<option>Buenos Aires</option>
												<option>Calgary</option>
												<option selected="selected">Chicago</option>
												<option>Denver</option>
												<option>Dubai</option>
												<option>Frankfurt</option>
												<option>Hong Kong</option>
												<option>Honolulu</option>
												<option>Houston</option>
												<option>Kuala Lumpur</option>
												<option>London</option>
												<option>Los Angeles</option>
												<option>Melbourne</option>
												<option>Mexico City</option>
												<option>Miami</option>
												<option>Minneapolis</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">File Upload:</label>
										<div class="col-md-10">
											<input type="file">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Masked Inputs
								</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" action="#">
									<div class="form-group">
										<label class="col-md-2 control-label">Date:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="99/99/9999"><span class="help-block">99/99/9999</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Phone:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="(999) 999-9999"><span class="help-block">(999)
												999-9999</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Phone + Ext:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="(999) 999-9999 x99999"><span
												class="help-block">(999) 999-9999 x99999</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Int'l Phone:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="+39 999 999 999"><span class="help-block">+39
												999 999 999</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Tax ID:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="99-9999999"><span class="help-block">99-9999999</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">SSN:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="999-99-9999"><span class="help-block">999-99-9999</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Product Key:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="a*-999-a999"><span class="help-block">a*-999-a999</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Purchase Order:</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												data-mask="aaa-999-***"><span class="help-block">aaa-999-***</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Percent:</label>
										<div class="col-md-10">
											<input type="text" class="form-control" data-mask="99%"><span
												class="help-block">99%</span>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Bootstrap Switches
								</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" action="#">
									<div class="form-group">
										<label class="col-md-2 control-label">Default</label>
										<div class="col-md-10">
											<div>
												<div class="make-switch switch-large">
													<input type="checkbox" checked class="toggle" />
												</div>
												<div class="make-switch">
													<input type="checkbox" checked class="toggle" />
												</div>
												<div class="make-switch switch-small">
													<input type="checkbox" checked class="toggle" />
												</div>
												<div class="make-switch switch-mini">
													<input type="checkbox" checked class="toggle" />
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Colors</label>
										<div class="col-md-10">
											<div class="make-switch" data-on="primary" data-off="info">
												<input type="checkbox" checked class="toggle" />
											</div>
											<div class="make-switch" data-on="info" data-off="success">
												<input type="checkbox" checked class="toggle" />
											</div>
											<div class="make-switch" data-on="success" data-off="warning">
												<input type="checkbox" checked class="toggle" />
											</div>
											<div class="make-switch" data-on="warning" data-off="danger">
												<input type="checkbox" checked class="toggle" />
											</div>
											<div class="make-switch" data-on="danger" data-off="default">
												<input type="checkbox" checked class="toggle" />
											</div>
											<div class="make-switch" data-on="default" data-off="primary">
												<input type="checkbox" checked class="toggle" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Disabled</label>
										<div class="col-md-10">
											<div class="make-switch">
												<input type="checkbox" checked disabled class="toggle" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Text</label>
										<div class="col-md-10">
											<div class="make-switch" data-on-label="Yes"
												data-off-label="No">
												<input type="checkbox" checked class="toggle" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Long Text</label>
										<div class="col-md-10">
											<div class="make-switch"
												data-on-label="&nbsp;Internal&nbsp;database&nbsp;"
												data-off-label="&nbsp;External&nbsp;database&nbsp;">
												<input type="checkbox" checked class="toggle" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Icons</label>
										<div class="col-md-10">
											<div class="make-switch"
												data-on-label="<i class='icon-ok'></i>"
												data-off-label="<i class='icon-remove'></i>">
												<input type="checkbox" checked class="toggle" />
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4>
									<i class="icon-reorder"></i> Dual List Box
								</h4>
							</div>
							<div class="widget-content clearfix">
								<div class="left-box">
									<input type="text" id="box1Filter"
										class="form-control box-filter"
										placeholder="Filter entries...">
									<button type="button" id="box1Clear" class="filter">x</button>
									<select id="box1View" multiple="multiple" class="multiple">
										<option value="501649">2008-2009 "Mini" Baja</option>
										<option value="501497" selected="selected">AAPA -
											Asian American Psychological Association</option>
										<option value="501493">Agape</option>
										<option value="501562" selected="selected">AGE-Alliance
											for Graduate Excellence</option>
										<option value="500676">AICHE (American Inst of
											Chemical Engineers)</option>
										<option value="501460">AIDS Sensitivity Awareness
											Project ASAP</option>
										<option value="500004">Aikido Club</option>
										<option value="500336">Akanke</option>
									</select> <span id="box1Counter" class="count-label"></span> <select
										id="box1Storage"></select>
								</div>
								<div class="dual-control">
									<button id="to2" type="button" class="btn">&nbsp;&gt;&nbsp;</button>
									<button id="allTo2" type="button" class="btn">&nbsp;&gt;&gt;&nbsp;</button>
									<br>
									<button id="to1" type="button" class="btn">&nbsp;&lt;&nbsp;</button>
									<button id="allTo1" type="button" class="btn">&nbsp;&lt;&lt;&nbsp;</button>
								</div>
								<div class="right-box">
									<input type="text" id="box2Filter"
										class="form-control box-filter"
										placeholder="Filter entries...">
									<button type="button" id="box2Clear" class="filter">x</button>
									<select id="box2View" multiple="multiple" class="multiple">
										<option value="501053">Academy of Film Geeks</option>
										<option value="500001">Accounting Association</option>
										<option value="501227" selected="selected">ACLU</option>
										<option value="501610" selected="selected">Active
											Minds</option>
										<option value="501514">Activism with A Reel Edge
											(A.W.A.R.E.)</option>
										<option value="501656">Adopt a Grandparent Program</option>
										<option value="501050">Africa Awareness Student
											Organization</option>
										<option value="501075">African Diasporic Cultural RC
											Interns</option>
									</select> <span id="box2Counter" class="count-label"></span> <select
										id="box2Storage"></select>
								</div>
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