<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
					<div class="col-md-6 col-md-offset-3" >
			         <div id="main-form">
				<h1>Cập Nhật Tài Khoản</h1>
				<div id="form-dangki">
					<div class="col-md-8 col-md-offset-2"   >
					 <form  method="post" class="form-horizontal" action="UpdateInf" novalidate="novalidate">
					 <input type="hidden" name="uid" value="<%=uid%>">
	                                   <div class="form-group">
	                                <label class="col-md-3 control-label">Họ</label>
	                                <div class="col-md-7">
	                                    <input type="text" name="ho" id="ho" class="form-control"  value="${tt.getFn()}" />
	                                </div>
	                                </div>
	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Tên</label>
	                                <div class="col-md-7">
	                                    <input type="text" name="ten" id="ten" class="form-control"  value="${tt.getLn()}" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Ngày Sinh</label>
	                                <div class="col-md-7">
	                                    <input type="text" class="form-control" name="ngaysinh" id="ngs"  value="${tt.getNgaysinh()}"/>
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Địa Chỉ Email</label>
	                                <div class="col-md-7">
	                                    <input type="email"  name="email" id="email" class="form-control" value="${tt.getEmail()}" />
	                                </div>
	                            </div>
								
								<div class="form-group">
	                                <label class="col-md-3 control-label">Số Điện Thoại</label>
	                                <div class="col-md-7">
	                                    <input type="text" class="form-control"  name="nump" id="nump"  value="${tt.getPhone()}" />
	                                </div>
	                            </div>
							  <div class="col-md-9 col-md-offset-3"  align="center">
				  	<input type="submit" name="submit" value="Cập Nhật">
					
				</div>
				
							</form>
						</div>
				</div>
				
				
			</div>
		</div>
		</div>
		</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>