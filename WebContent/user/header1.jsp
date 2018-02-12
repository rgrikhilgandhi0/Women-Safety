<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<div class="container">
                <nav class="nav">
                    <ul class="sf-menu">
                        <li>
                           <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="aboutUs.jsp">About us</a>
                        </li>
                        <li>
                            <a href="services.jsp">Services</a>
                        </li>
                        <li >
                            <a href="<%=request.getContextPath()%>/FindPoliceStationController?flag=loadPoliceStation">Find Your Police Station</a>
                        </li>
                        <li>
                            <a href="contactUs.jsp">contacts</a>
                            
                        </li>
                        <li>
                            <a href="login.jsp">Login</a>
                        </li>
                        <!-- <li>
                        	<form action="" method="post">
                        		<input type="hidden" name="flag" value="logout">
                        		<input type="submit" value="logout">
                        	</form>
                            <a href="flag=logout">Logout</a>
                        </li> -->
                    </ul>
                </nav>
            </div>
</body>
</html>