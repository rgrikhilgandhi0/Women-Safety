<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <title>Online OnDuty</title>
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
        
        
        <div class="box2">
            
        </div>
        <div class="box-color">
            <div class="box3">
                <div class="container">
                        <h3 class="primary">ONLINE ONDUTY</h3>
                        <div class="box_cnt message">
                           
                            <p style="color: black;">The ONLINE ON-DUTY campaign is being launched on the 7th of January, 2014 by the Ahmedabad City Police under the Suraksha Setu initiative. It is aimed at bridging the gap between the people of Ahmedabad and the City Police. The campaign will give the people an opportunity to voice their views, suggestions, opinions etc. on various social media platforms like Facebook, Google Plus, Youtube, Twitter, Pinterest etc. and is especially targeted to connect with the youth. The official website www.ahmedabadcitypolice.org has also been revamped and made more informative and easy to use. It carries information about the various zones, police station phone numbers and other important contacts.

The campaign would help the police to get people’s views on their different initiatives very quickly and would give them the chance to incorporate people’s opinion. It is expected that people cooperate in this initiative to the maximum and utilize these platforms to voice their concerns and help the police. The people would benefit as they would be able to access useful information and get real-time updates on police events, security issues, traffic etc. from the Facebook page and other social media platforms even on their phones.

Along with this, in order to make people even more aware about police activities and duties, Ahmedabad Police has also launched “A Day with a Cop” campaign. People are being asked to give their suggestions for the Police on the various online media and the best suggestions would be selected and the person would be given a chance to spend an entire working day with a Senior Cop. This would further help in bringing the people closer with the Police as both the parties would be able to understand and appreciate each other’s problems. The first set of winners would be felicitated in the launch event and thereafter winners would be announced every month on the website and the Facebook page.

Another initiative is that of “Citizen Cop”. This is aimed at recognizing important contributions from the citizens towards Police activities. People who would be selected would be given prizes and recognized by the police. This would encourage people to be more cooperative with the police and help in making Ahmedabad city a Safe City.
                            </p>
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