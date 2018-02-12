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
        <div class="camera_container">
            <div id="camera" class="camera_wrap">
                <div data-src="img/honorToServeYou.jpg">
                    <div class="camera_caption fadeIn">
                        <div class="container">
                            <div class="row">
                                <div class="grid_8">
                                    <h2>It's an honour for us to serve you</h2>
                                    <h5> </h5>
                                    <a href="onlineOnduty.jsp">More info</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-src="img/defendingLawAbiding.JPG">
                    <div class="camera_caption fadeIn">
                        <div class="container">
                            <div class="row">
                                <div class="grid_8">
                                    <h2>Defending law-abiding citizens</h2>
                                    <h5> </h5>
                                    <a href="defendingLaw.jsp">More info</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-src="img/preservingPeace.jpg">
                    <div class="camera_caption fadeIn">
                        <div class="container">
                            <div class="row">
                                <div class="grid_8">
                                    <h2>PRESERVING THE PEACE OF EVERY CITIZEN!</h2>
                                    <h5> </h5>
                                    <div class="more_info">
                                        <a href="vmd.jsp">More info</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="box-color">
            <div class="box1 index_block">
              <div class="container">
                  <div class="row">
                      <div class="grid_4">
                          <div class="box_name fa-star">
                             <h4>Safety Tips</h4>
                          </div>
                          <div class="box_text">
                              <h5>Precautions to prevent offences.</h5>
                              <div class="box_aside"><a href="safetyTips.jsp" class="fa-file-text-o"></a></div>
                          </div>
                      </div>
                      <div class="grid_4">
                          <div class="box_name fa-tasks">
                                <h4>Crime Statistics</h4>
                          </div>
                          <div class="box_text">
                               <h5>Ahmedabad's Crime Statistics.</h5>
                            <div class="box_aside"><a href="crimeStatistics.jsp" class="fa-file-text-o"></a></div>
                          </div>
                      </div>
                      <div class="grid_4">
                          <div class="box_name fa-car">
                            <h4>Suggestions
                                  </h4>
                          </div>
                          <div class="box_text">
                               <h5>Suggestion's given by users.</h5>
                              <div class="box_aside"><a href="suggestion.jsp" class="fa-file-text-o"></a></div>
                          </div>
                      </div>
                  </div>
              </div>
            </div>
        </div>
        
        <div class="box-color">
            <div class="box3">
                <div class="container">
                        <h3 class="primary">Welcome to Ahmedabad Police</h3>
                        <div class="box_cnt message">
                         
                           
                            <p style="color: black;">Responsibility of protection and safety of the citizens of Ahmedabad having population about more than 60 lac is on the shoulders of Ahmedabad City Police Force. The Commissioner of Police has been discharging his duties as the Head of Ahmedabad City Police Force.

From effective supervision and monitoring of crime and ease in administration City of Ahmedabad has been divided into two sectors. Sector-1 & Sector-2.

Joint Commissioner of Police/Additional Commissioner of Police functions as the Head of the Sector-1 and Sector-2.

Sectors are further divided into ZONEs. Ahmedabad City Commissionerate area is divided into Seven Zones. Out of seven zones Zone Nos. 1 to 3 and 7 comes under Sector-1 and Zone Nos.4 to 6 under Sector-2.

Officer of the rank of Deputy Commissioner of Police functions as the Head of each Zone. Each Zone has been divided into divisions. In all there are 14 divisions. Officer of the rank of Assistant Commissioner of Police functions as the Head of each Division.

About two to four police stations have been included into each division and Officer of the rank of Police Inspector functions as the Head of each Police Station. Presently there are 39 Police Stations in Ahmedabad City.

There are four to six Police Chowkis in each Police Station and Police Sub Inspector functions as in-charge of each Police Chowki.

Moreover, the branches like Crime Branch, Control Room, Traffic Branch, Police Head Quarter, Special Branch and Administration are also the part and parcel of the structure of Ahmedabad City Police Force.

Head of Crime Branch, Traffic Branch, Special Branch, Head Quarter and Administrative wing can be either Joint Commissioner of Police or Additional Commissioner of Police ranked officer. While Police Control is headed by the officer of the rank of Deputy Commissioner of Police.

Apart from regular 39 police stations Ahmedabad city has a full fledge Mahila Police Station established to deal with women related offenses and issues only. It functions under Crime Branch and is headed by the officer of the rank of Police Inspector.</p>
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