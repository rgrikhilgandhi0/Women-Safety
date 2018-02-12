<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Registration</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/grid.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet" href="css/search.css" />
<link rel="stylesheet" href="css/google-map.css" />
<link rel="stylesheet" href="css/contact-form.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />

<script src="js/jquery-1.12.0.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.js"></script> -->
<script src="js/jquery-migrate-1.2.1.js"></script>

<!--[if lt IE 9]>
    <html class="lt-ie9">
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <script src="js/html5shiv.js"></script>
    <![endif]-->

<script src='js/device.min.js'></script>
</head>

<body>
	<div class="page">
		<!--========================================================
                              HEADER
    =========================================================-->
		<header id="header" class="header">
		<div class="header_panel">
			<div class="container">
				<div class="brand  fa-shield">
					<h1 class="brand_name">
						<a href="./">APD</a>
					</h1>

					<h5 class="brand_slogan">Violate the law and we'll violate you
					</h5>
				</div>

				<form id="search" class="search-form" action="search.php"
					method="GET" accept-charset="utf-8">
					<label class="search-form_label"> <input
						class="search-form_input" type="text" name="s" autocomplete="off"
						placeholder="" /> <span class="search-form_liveout"></span>
					</label>
					<button class="search-form_submit fa-search" type="submit"></button>
				</form>


			</div>
		</div>

		<div id="stuck_container" class="stuck_container">
			<div class="container">
				<nav class="nav">
				<ul class="sf-menu">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="aboutUs.jsp">About us</a></li>
					<li><a href="services.jsp">Services</a></li>
					<li><a href="findYourPoliceStation.jsp">Find Your Police
							Station</a></li>

					<li class="active"><a href="contacts.jsp">contacts</a></li>
					<li class="active"><a href="signUp.jsp">signUp</a></li>
				</ul>
				</nav>
			</div>
		</div>
		</header>
		<!--========================================================
                              CONTENT
    =========================================================-->
		<section id="content" class="content">
		<div class="box3">
			<div class="container">
				<div class="row">
					<div class="grid_4">
						<div class="box_aside">
							<div class="services_list">
								<!--  <h3>Quick Links</h3>
                                    <h5 class="fa-arrow-circle-right"><a href="login.jsp">Login</a></h5>
                                    <h5 class="fa-arrow-circle-right"><a href="registration.jsp">Registration</a></h5>
                                    <h5 class="fa-arrow-circle-right"><a href="postComplaint.jsp">Complaint</a></h5>
                                    <h5 class="fa-arrow-circle-right"><a href="feedback.jsp">Feedback</a> </h5> -->


							</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="contact_form">
							<h3 class="primary">Registration</h3>
							<form action="<%=request.getContextPath()%>/RegistrationController"
								id="contact-form" method="post">
								<div class="contact-form-loader"></div>
								<fieldset>
								

									<label class="message"><input type="text" name="Name"
										placeholder="Name:" required="" value=""
										data-constraints="@Required  @Subject" /> <span
										class="empty-message">*This field is required.</span> <span
										class="error-message">*This is not a valid phone.</span>
									</label> 
									
									<label class="name">
									 <span style="left: 0px; top: 0px; width: 100px; height: 41px">
											<select class="_placeholder" name="gender" class="form-control required">
												<option value="select">i am..</option>
												<option value="male">Male</option>
												<option value="female">Female</option>
												<option value="others">Other</option>
										</select><br>
										<br>
									
									</span>
									</label> <label class="message"> <textarea name="address"
											placeholder="Address*:"
											data-constraints='@Required @Length(min=20,max=999999)'></textarea>
										<span class="empty-message">*This field is required.</span> <span
										class="error-message">*The message is too short.</span>
									</label> 
							<label>Birthday</label>
									<label class="name"> 
								<span style="left: 0px; top: 0px; width: 100px; height: 41px">
									<input type="date" class="_placeholder" name="birthday"
										placeholder="Name:"  required="" value=""
										data-constraints="@Required  @Subject" /> <span
										class="empty-message">*This field is required.</span> <span
										class="error-message">*This is not a valid phone.</span>
									</label>
									<br>
									<br>
									<label class="message"> <input type="text"
										name="Email" placeholder="Email" required="" value=""
										data-constraints="@Required  @Subject" /> <span
										class="empty-message">*This field is required.</span> <span
										class="error-message">*This is not a valid phone.</span>
									</label> <label class="message"> <input type="text"
										name="password" placeholder="Create a Password:" required=""
										value="" data-constraints="@Required  @Subject" /> <span
										class="empty-message">*This field is required.</span> <span
										class="error-message">*This is not a valid phone.</span>
									</label> <label class="message"> <input type="text"
										name="rePassword" placeholder="Confirm your Password:"
										required="" value="" data-constraints="@Required  @Subject" />
										<span class="empty-message">*This field is required.</span> <span
										class="error-message">*This is not a valid phone.</span>
									</label> <label class="message"> <input type="text"
										name="mobileNo" placeholder="Mobile Phone:" required=""
										value="" data-constraints="@Required  @Subject" /> <span
										class="empty-message">*This field is required.</span> <span
										class="error-message">*This is not a valid phone.</span>
									</label> <label for="photo"></label>
									</p>
									<input id="photo" name="photo" tabindex="2" type="file">Ex:.jpeg,.png,etc<br>
									<!-- required="" -->
									<!--  <input type="file" name="subject" value="" data-constraints="@Required @JustNumbers" />
                                        <span class="empty-message">*This field is required.</span>
                                        <span class="error-message">*This is not a valid phone.</span> -->

									<input type="hidden" name="flag" value="insertRegistration" />
									<div class="link">

										<input type="submit" value="Submit"
											class="btn btn-primary pull-right">
									</div>
								</fieldset>
								<div class="modal fade response-message">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">Ã—</button>
												<h4 class="modal-title">Modal title</h4>
											</div>
											<div class="modal-body">You message has been sent! We
												will be in touch soon.</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

		<!--========================================================
                              FOOTER
    =========================================================-->
		<footer id="footer" class="footer">
		<div class="container">
			<div class="row">
				<div class="grid_4">
					<div class="box_aside fa-phone">
						<span id="phone">Telephone : 079-26822434 <span><br>
								<span id="email"> E-mail: <a href="#">mail@demolink.org</a></span>
					</div>
				</div>
				<div class="grid_4">
					<div class="box_aside fa-map-marker">
						<label class="primary"></label><br>
						<!--  <span id="adress">28 Jackson Blvd Ste 1020<br>
                        Chicago, IL 60604-2340</span>-->
					</div>
				</div>
				<div class="grid_4">
					<div class="box_aside" id="social_block">
						<label class="primary">Ahmedabad Police</label>&nbsp; © <span
							id="copyright-year"></span> | <a class="footer_link"
							href="index-5.html">Privacy Policy</a>
						<!-- {%FOOTER_LINK} -->
						<div class="social">
							<div class="soc_network">
								<a class="fa fa-facebook" href="#"></a>
							</div>
							<div class="soc_network">
								<a class="fa fa-rss" href="#"></a>
							</div>
							<div class="soc_network">
								<a class="fa fa-twitter" href="#"></a>
							</div>
							<div class="soc_network">
								<a class="fa fa-google-plus" href="#"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
	</div>

	<script src="js/script.js"></script>
</body>
</html>
<
