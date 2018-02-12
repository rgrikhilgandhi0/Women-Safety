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
                        <a href="index.jsp">ACPD</a>
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
        
        <div class="box-color">
            <div class="box1 index_block">
             
            </div>
        </div>
        <div class="box2">
            
        </div>
        <div class="box-color">
            <div class="box3">
                <div class="container">
                <div class="row">
                <div class="grid_3">
                    <div class="progress_block">
                        <h4>CRIMES</h4>
                        <div class="radial-progress" data-border="12" data-border-bg="#fff" data-border-fg="#47a2de">
                             80%
                            <h5>less</h5>
                         </div>
                    </div>
                </div>
                <div class="grid_3">
                    <div class="progress_block">
                        <h4>ROBBERIES</h4>
                        <div class="radial-progress" data-border="12" data-border-bg="#fff" data-border-fg="#3f454d">
                            85%
                            <h5>less</h5>
                        </div>
                    </div>
                </div>
                <div class="grid_3">
                    <div class="progress_block">
                        <h4>ACCIDENTS</h4>
                        <div class="radial-progress" data-border="12" data-border-bg="#fff" data-border-fg="#7ecefd">
                            70%
                            <h5>less</h5>
                        </div>
                    </div>
                </div>
                <div class="grid_3">
                    <div class="progress_block">
                        <h4>Stolen vehicles</h4>
                        <div class="radial-progress" data-border="12" data-border-bg="#fff" data-border-fg="#cccccc">
                            60%
                            <h5>less</h5>
                        </div>
                        
                    </div>
                    
                </div>
                </div>
                <div class="link">
                              <a href="index.jsp"><input type="button" value="Back"></a>
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
        <div class="container">
            <div class="row">
                <div class="grid_4">
                    <div class="box_aside fa-phone">
                        <span id="phone">Telephone: +1 800 603 6035</span><br>
                         <span id="email"> E-mail: <a href="#">mail@demolink.org</a></span>
                    </div>
                </div>
                <div class="grid_4">
                    <div class="box_aside fa-map-marker">
                       <label class="primary">Poliex</label><br>
                       <span id="adress">28 Jackson Blvd Ste 1020<br>
                        Chicago, IL 60604-2340</span>
                    </div>
                </div>
                <div class="grid_4">
                    <div class="box_aside" id="social_block">
                        <label class="primary">Poliex</label>&nbsp; © <span id="copyright-year"></span> |
                        <a class="footer_link" href="index-5.html">Privacy Policy</a>
                        <!-- {%FOOTER_LINK} -->
                        <div class="social">
                            <div class="soc_network"><a class="fa fa-facebook" href="#"></a>
                            </div>
                            <div class="soc_network"><a class="fa fa-rss" href="#"></a>
                            </div>
                            <div class="soc_network"><a class="fa fa-twitter" href="#"></a>
                            </div>
                            <div class="soc_network"><a class="fa fa-google-plus" href="#"></a>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
        </div>
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