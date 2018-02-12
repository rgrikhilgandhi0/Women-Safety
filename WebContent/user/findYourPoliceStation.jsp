<%@ page import="controller.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
	prefix="function"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/grid.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/search.css" />
<link rel="stylesheet" href="css/google-map.css" />
<link rel="stylesheet" href="css/contact-form.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/contact-form.css" />
<script src="js/jquery-1.12.0.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.js"></script> -->
<script src="js/jquery-migrate-1.2.1.js"></script>
<script src="user/js/TMForm.js"></script>
<script>
	
</script>




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
        	<jsp:include page="header1.jsp"></jsp:include>
        </div>
    </header>
		<!--========================================================
                              CONTENT
    =========================================================-->
		<section id="content" class="content">
			<div class="box-color">
				<div class="box7">
					<div class="container">
						<h3>how to find us</h3>

						<!-- Map with marker -->
						<script src="http://maps.googleapis.com/maps/api/js">
							
						</script>
						<div id="googleMap" style="width: 1200px; height: 460px;"></div>
						<c:set var="list" value="${sessionScope.lsPoliceStation}"></c:set>
						<c:set var="len" value="${function:length(list) }"></c:set>
						<input type="hidden" id="len" value="${len}">

						<c:forEach items="${sessionScope.lsPoliceStation}" var="i"
							varStatus="j">
							<input type="hidden" id="mapLatitude${j.count}"
								value="${i.latitude}">
							<input type="hidden" id="mapLongitude${j.count}"
								value="${i.longitude}">
							<input type="hidden" id="mapPoliceStation${j.count}"
								value="${i.policeStationName}">
							<input type="hidden" id="mapPoliceStationAdd${j.count}"
								value="${i.policeStationAddress}">
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="box3">
				<div class="container">
					<div class="row">
						<div class="grid_4">
							<div class="address">
								<h3>address</h3>
								<p id="add"></p>
								<c:set var="list" value="${sessionScope.lsPoliceStation}"></c:set>
								<c:set var="len" value="${function:length(list) }"></c:set>
								<input type="hidden" id="len" value="${len}">

								<c:forEach items="${sessionScope.lsPoliceStation}" var="i"
									varStatus="j">

									<input type="hidden" id="mapPoliceStation${i.policeStationId}"
										value="${i.policeStationName}">
									<input type="hidden"
										id="mapPoliceStationAdd${i.policeStationId}"
										value="${i.policeStationAddress}">
									<input type="hidden" id="mapLatitude${i.policeStationId}"
										value="${i.latitude}">
									<input type="hidden" id="mapLongitude${i.policeStationId}"
										value="${i.longitude}">

								</c:forEach>

								<p id="p">
									${policeStation.policeStationName}
									${policeStation.policeStationAddress}
									<!-- Freephone: <label>+1 800 559 6580</label> -->
								</p>
							</div>
						</div>
						<div class="grid_8">
							<!-- <div class="contact_form"> -->
							<h3 class="primary">Police Station</h3>
							<form id="contact-form" method="get"
								action="<%=request.getContextPath()%>/FindPoliceStationController?flag=loadPoliceStation">
								<div class="contact-form-loader"></div>
								<fieldset>
									<label class="name"> <span
										style="left: 0px; top: 0px; width: 185px; height: 41px">
											<select class="_placeholder" style="color: black;"
											onchange="autoCenter(this)" id="police"
											name="policeStationName" class="form-control required">
												<option>Choose one...</option>
												<c:forEach items="${sessionScope.lsPoliceStation}"
													var="lsPoliceStation">
													<option
														value="${lsPoliceStation.latitude},${lsPoliceStation.longitude},${lsPoliceStation.policeStationAddress}">${lsPoliceStation.policeStationName}</option>
												</c:forEach>
										</select>
									</span>
									</label> <input type="hidden" name="flag" value="loadPoliceStation">

								</fieldset>
								<div class="modal fade response-message">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">×</button>
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
        <jsp:include page="userFooter.jsp"></jsp:include>
    </footer>
	</div>

	<!--                  added by rikhil ------------------ -->





	<script>
		// Define your locations: HTML content for the info window, latitude, longitude

		var locations = [];
		/*['<h4>Kalupur</h4>', 23.0281341, 72.5938241],
		  ['<h4>Navrangpura</h4>', 23.0343621, 72.5653168]
		   ['<h4>Cronulla Beach</h4>', -34.028249, 151.157507],
		  ['<h4>Manly Beach</h4>', -33.80010128657071, 151.28747820854187],
		  ['<h4>Maroubra Beach</h4>', -33.950198, 151.259302] */
		//];
		// Setup the different icons and shadows
		var iconURLPrefix = 'http://maps.google.com/mapfiles/ms/icons/';

		var icons = [ iconURLPrefix + 'red-dot.png',
				iconURLPrefix + 'green-dot.png',
				iconURLPrefix + 'blue-dot.png',
				iconURLPrefix + 'orange-dot.png',
				iconURLPrefix + 'purple-dot.png',
				iconURLPrefix + 'pink-dot.png',
				iconURLPrefix + 'yellow-dot.png' ]
		var iconsLength = icons.length;
		var add = document.getElementById("add");

		var map = new google.maps.Map(document.getElementById('googleMap'), {
			zoom : 10,
			center : new google.maps.LatLng(23.0300, 72.5800),
			mapTypeId : google.maps.MapTypeId.ROADMAP,
			mapTypeControl : false,
			streetViewControl : false,
			panControl : false,
			zoomControlOptions : {
				position : google.maps.ControlPosition.LEFT_BOTTOM
			}
		});

		var infowindow = new google.maps.InfoWindow({
			maxWidth : 160
		});

		var markers = new Array();
		function placemarker(polsta, areav1) {

			var iconCounter = 0;

			alert(polsta)
			/* if(polsta==18)
				{
					locations.push(new Array("<h4>Kalupur</h4>", 23.0281341, 72.5938241));
				}
			else */
			add.innerHTML = "";
			add.innerHTML = polsta.split(",")[2] + polsta.split(",")[3]
					+ polsta.split(",")[4];
			locations.push(new Array('<h4>' + areav1 + '</h4>', polsta
					.split(",")[0], polsta.split(",")[1]));
			//locations.push(new Array("<h4>Kalupur</h4>"));
			// Add the markers and infowindows to the map
			for (var i = 0; i < locations.length; i++) {
				var marker = new google.maps.Marker({
					position : new google.maps.LatLng(locations[i][1],
							locations[i][2]),
					map : map,
					icon : icons[iconCounter]
				});

				markers.push(marker);

				google.maps.event.addListener(marker, 'click', (function(
						marker, i) {
					return function() {
						infowindow.setContent(locations[i][0]);
						infowindow.open(map, marker);
					}
				})(marker, i));
				locations = [];
				iconCounter++;
				// We only have a limited number of possible icon colors, so we may have to restart the counter
				if (iconCounter >= iconsLength) {
					iconCounter = 0;
				}
			}
		}
		function autoCenter(policesta) {
			//  Create a new viewpoint bound
			//cnt++;
			var l1 = policesta.options[policesta.selectedIndex].text;
			var bounds = new google.maps.LatLngBounds();
			//  Go through each...
			placemarker(policesta.value, l1);
			for (var i = 0; i < markers.length; i++) {
				bounds.extend(markers[i].position);
			}
			//  Fit these bounds to the map
			map.fitBounds(bounds);
			markers = [];
		}
		//autoCenter();
	</script>



	<!-- ended by rikhil ----------------------- -->



	<script>
		//f();
		//autoCenter();
	</script>
	<script src="js/script.js"></script>
</body>
</html>