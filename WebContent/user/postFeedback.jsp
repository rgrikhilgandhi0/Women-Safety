<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title>Feedback</title>
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
                        <a href="index.jsp">ACPD</a>
                    </h1>
                    <h5 class="brand_slogan">
                        Violate the law and we'll violate you
                    </h5>
                </div>
            </div>
        </div>

        <div id="stuck_container" class="stuck_container">
        	<div class="container">
                <nav class="nav">
        			<jsp:include page="header2.jsp"></jsp:include>
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
                    
                    <div class="grid_8">
                        <div class="contact_form">
                            <h3 class="primary">Post Feedback</h3>
                            <form action="<%=request.getContextPath()%>/UserFeedbackController?flag=insertFeedback" id="contact-form" method="post">
                                <div class="contact-form-loader"></div>
                                <fieldset>
                                    
                                    <label class="message">
                                        <textarea name="feedbackDescription" placeholder="Feedback Description*:" required="" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
                                        <span class="empty-message">*This field is required.</span>
                                        <span class="error-message">*The message is too short.</span>
                                    </label>
                                     <input type="hidden" name="flag" value="insertFeedback"/>
                                    <div class="link">
                                        
                                        
                                        <input type="submit" value="Submit" class="btn btn-primary pull-right">
                                    </div>
                                </fieldset>
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
</html><