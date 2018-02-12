<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="${pageContext.request.contextPath}/user/"></base>

<!-- General meta information -->
<title>Login Form</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="robots" content="index, follow" />
<meta charset="utf-8" />
<!-- // General meta information -->


<!-- Load Javascript -->
<script type="text/javascript" src="./js/jquery11.js"></script>
<script type="text/javascript" src="./js/jquery.query-2.1.71.js"></script>
<script type="text/javascript" src="./js/rainbows.js"></script>
<!-- // Load Javascipt -->

<!-- Load stylesheets -->
<link type="text/css" rel="stylesheet" href="css/style1.css"
	media="screen" />
<!-- // Load stylesheets -->

<script>
	$(document).ready(function() {

		$("#submit1").hover(function() {
			$(this).animate({
				"opacity" : "0"
			}, "slow");
		}, function() {
			$(this).animate({
				"opacity" : "1"
			}, "slow");
		});
	});
</script>

</head>
<body>
	<form action="abcd" method="post">
		<div id="wrapper">
			<div id="wrappertop"></div>

			<div id="wrappermiddle">

				<h2>Login</h2>

				<div id="username_input">

					<div id="username_inputleft"></div>

					<div id="username_inputmiddle">

						<input type="text" name="emailId" id="url" value="E-mail Address"
							onclick="this.value = ''"> <img id="url_user"
							src="./img/mailicon.png" alt="">
					</div>

					<div id="username_inputright"></div>

				</div>

				<div id="password_input">

					<div id="password_inputleft"></div>

					<div id="password_inputmiddle">

						<input type="password" name="password" id="url" value="Password"
							onclick="this.value = ''"> <img id="url_password"
							src="./img/passicon.png" alt="">
					</div>

					<div id="password_inputright"></div>

				</div>

				<div id="submit">

					<input type="image" src="./img/submit_hover.png" id="submit1"
						value="Sign In"> <input type="image"
						src="./img/submit.png" id="submit2" value="Sign In">
				</div>

				<input type="hidden" name="flag" value="login" />

				<div id="links_left">
					<a href="ChangeYourPassword.jsp">Forgot your Password?</a>
				</div>

				<div id="links_right">
					<a href="../registration.jsp">Not a Member Yet?</a>
				</div>
				<input type="hidden" name="flag" value="insertLogin"></input>
			</div>

			<div id="wrapperbottom"></div>

		</div>

	</form>
</body>
</html>