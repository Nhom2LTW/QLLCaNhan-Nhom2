<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.devops.db.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <link href="plugin/fullcalendar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="plugin/lib/cupertino/jquery-ui.min.css">
	<link href="plugin/fullcalendar.print.css" rel="stylesheet" media="print" />
	<script src="plugin/lib/moment.min.js"></script>
	<script src="plugin/lib/jquery.min.js"></script>
	<script src="plugin/fullcalendar.min.js"></script>
	<script src="plugin/lib/jquery-ui.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="plugin/locale/vi.js"></script>
	<link href='plugin/form.css' rel='stylesheet' />
    <link href='plugin/lib/font-awesome.min.css' rel='stylesheet' />

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thiết Lập</title>
<link href="css/layout_style.css" rel="stylesheet" type="text/css">
<link href="css/setting_style.css" rel="stylesheet">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<br></br>
	<div id="wrapper">
		<div id="header">
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
			</div>
		<div id="main-container">
			<div id="main-form">
				<h1>Liên Hệ</h1>
				<div class="col-dm-12">
					<div class="col-dm-6">
						<img src="img/contact.jpg">
					</div>
					<div class="col-dm-6"
						style="height: 480px; margin-top: 60px; font-size: 26px;">
						Email: <a href="#">calendar.nhom2@gmail.com</a><br> SĐT:
						086.999.999.86<br> Facebook: <a href="#">http://facebook.com/lichvn</a><br>
					</div>
				</div>
			</div>
		</div>
	</div>
		<br /></br>
<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="jquery/jquery-2.1.4.min.js"></script>
	<script src="js/layout.js"></script>

</body>
</html>