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
                            <a href="<%=request.getContextPath()%>/ComplaintController?flag=loadPoliceStation">Post Complaint</a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/UserFeedbackController?flag=insertFeedback">Post Feedback</a>
                        </li>
                        <li>
                           <a href="inbox.jsp">View Complaint</a>
                        </li>
                        <li>
	                          <a href="changePassword.jsp">Change Password</a>
	                    </li>
	                    <li>
	                          <a href="login.jsp">Sign out</a>
	                    </li>
                      </ul>
                        </li>
                    </ul>
                </nav>
            </div>
</body>
</html>