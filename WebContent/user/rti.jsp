<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/search.css"/>
    <link rel="stylesheet" href="css/camera.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>

 <script src="js/jquery-1.12.0.min.js"></script>
<!-- <script src="js/jquery.js"></script>
 -->  
   <script src="js/raphael.js"></script>
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
    <script src="js/selectivizr-min.js"></script>
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
                        <a href="./">Poliex</a>
                    </h1>

                    <h5 class="brand_slogan">
                        Police department
                    </h5>
                </div>

                <form id="search" class="search-form" action="search.php" method="GET" accept-charset="utf-8">
                    <label class="search-form_label">
                        <input class="search-form_input" type="text" name="s" autocomplete="off" placeholder=""/>
                        <span class="search-form_liveout"></span>
                    </label>
                    <button class="search-form_submit fa-search" type="submit"></button>
                </form>


            </div>
        </div>

        <div id="stuck_container" class="stuck_container">
            <div class="container">
                <nav class="nav">
                    <ul class="sf-menu">
                        <li class="active">
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="aboutUs.jsp">About Us</a>
                        </li>
                        <li>
                            <a href="services.jsp">services</a>
                           
                        </li>
                       
                        <li>
                            <a href="findYourPoliceStation.jsp">Find Your Police Station</a>
                              
                        </li>
                         <li>
                            <a href="contactUs.jsp">Contact Us</a>
                            
                            
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <section id="content" class="content">
        
        <div class="box-color">
            <div class="box1 index_block">
             
            </div>
        </div>
        <div class="box2">
            
        </div>
        <div class="box-color">
            <div class="box3">
                <div class="container">
                        <h3 class="primary">Right to Information</h3>
                        <div class="box_cnt message">
                           
                            <h4><p style="color: black; ">
<strong>What is Right to Information? </strong>
</p></h4>
 <p style="color: black;">
    Every citizen has a right to know how the Government is functioning.
    Right to Information empowers every citizen to seek any information from the Government, inspect any Government documents and seek certified photocopies thereof.
    Some laws on Right to Information also empower citizens to official inspect any Government work or to take sample of material used in any work.
</p>
 <h4><p style="color: black;">
<strong>Right to Information includes the right to:</strong>
</p></h4>
 <p style="color: black;">
    Inspect works, documents, and records.
    Take notes, extracts or certified copies of documents or records.
    Take certified samples of material.
    Obtain information in form of printouts, diskettes, floppies, tapes, video , cassettes or in any other electronic mode or through printouts.

“Information” means any material in any form, including records, documents, memos, e-mails, opinions, advices, press releases, circulars, orders, logbooks, contracts, reports, papers, samples, models, data material held in any electronic form and information relating to any private body which can be accessed by a public authority under any other law for the time being in force.
                            
                            </p>
                        </div>
                </div>
            </div>
        </div>
        <div class="box10">
            
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
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-7078796-5']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })(); 
  </script>
</body>
</html>