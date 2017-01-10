<%@page import="com.devops.pojo.getList"%>
<%@page import="com.devops.db.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.devops.db.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
 <link rel="stylesheet" type="text/css" href="bootstrap/Css.css"> 
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
      
<%
	String check = (String) session.getAttribute("skey");
	Integer uid= (Integer) session.getAttribute("ssuid");
	String username = "";
	String userposition = "";
	getList a=new getList();
	if (check != null) {
		request.setAttribute("tt", a.getDSUser(uid));
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
			<div id="main-menu">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
			         <div id="main-form">
				<h1>Thông Tin Tài Khoản</h1>
				<div id="form-dangki">
					<div class=" col-md-9 col-lg-9 ">
							<table class="table table-user-information">
								<tbody>
								<tr>
										<td>Họ:</td>
										<td>${tt.getFn()}</td>
									</tr>
									<tr>
										<td>Tên:</td>
										<td>${tt.getLn()}</td>
									</tr>
									<tr>
										<td>Ngày Sinh:</td>
										<td> ${tt.getNgaysinh()}</td>
									</tr>
									<tr>
										<td>Email:</td>
										<td>${tt.getEmail()}</td>
									</tr>
									<tr>
										<td>Số Điện Thoại:</td>
										<td>${tt.getPhone()}</td>
									</tr>
								</tbody>
							</table>
							
						</div>
				</div>
				
				  <div class="col-md-6 col-md-offset-3">
				  <a href="update.jsp"><button type="button" class="btn btn-primary">Cập Nhật</button></a>
					<a href="home.jsp"><button type="button" class="btn btn-primary">Trở Lại</button></a>
				</div>
				
			</div>
		</div>
		</div>
		</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>