<%@page import="com.devops.db.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
	 <link rel="stylesheet" type="text/css" href="bootstrap/Css.css"> 
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>eet' />
      
<%
	String check = (String) session.getAttribute("skey");
	String username = "";
	String userposition = "";

	if (check != null) {
		username = (String) session.getAttribute("ssuser");
		userposition = (String) session.getAttribute("ssup");

	} else {
		response.sendRedirect("index.jsp");
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
	<link href="css/layout_style.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br></br>
		<div id="header">
			<div id="logo">
					<img src="images/background/logo.png" width="250" height="80"
						alt="logo">
	
			</div>
			<div id="nav_container">
				<div id="tag">
						<font size="2" color="black">Xin Chào</font><font size="2" color="blue">
						<%=username%></font><font size="2" color="black"> !</font>
				</div>
				<div id="nav_bar">
					<nav class="group">
						<%
							if (userposition.equals("A")) {
						%>
						<%@include file="inc/inc_admin_navigation.jsp"%>
						<%
							} else {
						%>
						<%@include file="inc/inc_user_navigation.jsp"%>
						<%
							}
						%>
					</nav>
				</div>		
			</div>
				
			</div>	
			
		<div id="main-container"  style=" text-align:center;color: red">
		<br><br>
				<h1>Cập Nhật Không Thành Công!</h1>
					<div style=" text-align:center; height: 480px; margin-top: 60px; font-size: 26px;">
						 <a href="admin.jsp"><i>Trở Về</i></a> 
					</div>
			</div>
		<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="jquery/jquery-2.1.4.min.js"></script>
	<script src="js/layout.js"></script>
</body>
</html>

