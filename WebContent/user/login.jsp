<%@ page import="controller.PoliceStationController" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="${pageContext.request.contextPath}/user/"></base>
    <title>Login Form</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/search.css"/>
    <link rel="stylesheet" href="css/google-map.css"/>
    <link rel="stylesheet" href="css/contact-form.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
	
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
    <script>
		function validateForm() 
		{
		    var x = document.forms["myForm"]["emailId"].value;
		    var atpos = x.indexOf("@");
		    var dotpos = x.lastIndexOf(".");
		    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
		    {
		        alert("Not a valid e-mail address");
		        return false;
		    }
	    }
	</script>
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
                        <a href="index.jsp/">ACPD</a>
                    </h1>

                    <h5 class="brand_slogan">
                        Violate the law and we'll violate you
                    </h5>
                </div>

                <!-- <form id="search" class="search-form" action="search.php" method="GET" accept-charset="utf-8">
                    <label class="search-form_label">
                        <input class="search-form_input" type="text" name="s" autocomplete="off" placeholder=""/>
                        <span class="search-form_liveout"></span>
                    </label>
                    <button class="search-form_submit fa-search" type="submit"></button>
                </form> -->


            </div>
        </div>
	
        <div id="stuck_container" class="stuck_container">
        	<jsp:include page="header1.jsp"></jsp:include>
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
                            </div>
                        </div>
                    </div>
                    <div class="grid_4">
                        <div class="contact_form">
                            <h3 class="primary">Login</h3>
                            <form name="myForm" action="inbox.jsp" onsubmit="return validateForm();" id="contact-form" method="post" >
                                <div class="contact-form-loader"></div>
                                <fieldset>
                                	<label class="message" style="color: black;">
                       	                 <input type="text" name="emailId" placeholder="E-mail Address"   required="" value="" data-constraints="@Required  @Subject" />
                                        <span class="empty-message">*This field is required.</span>
                                        <span class="error-message">*This is not a valid phone.</span>
                                    </label>
                                    <label class="message">
                       	                 <input type="password" name="password" placeholder="Password" required="" value="" data-constraints="@Required  @Subject" />
                                        <span class="empty-message">*This field is required.</span>
                                        <span class="error-message">*This is not a valid phone.</span>
                                    </label>
                               	 </fieldset>
                               	<div id="submit">
									<input type="image" src="./img/submit_hover.png" id="submit1" value="Sign In">
								</div>
								<input type="hidden" name="flag" value="login" />
								<div class="modal fade response-message">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h4 class="modal-title">Modal title</h4>
                                            </div>
                                            <div class="modal-body">
                                                You message has been sent! We will be in touch soon.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
							<span>
							<div id="links_left">
								<a href="forgotpassword.jsp">Forgot your Password?</a><a href="registration.jsp">Not a Member Yet?</a>
							</div><br>
							<div id="links_left">
							</div>
							</span>
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
        <jsp:include page="userFooter.jsp"></jsp:include>
    </footer>
</div>

<script src="js/script.js"></script>
</body>
</html>