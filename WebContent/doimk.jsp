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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Đổi Mật Khẩu</title>
<link href="css/layout_style.css" rel="stylesheet" type="text/css">
<link href="css/setting_style.css" rel="stylesheet">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<br></br>
	<div id="wrapper">
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
				<h1>Đổi Mật Khẩu</h1>
				<div id="form-dangki">
					<form action="ChangePass" method="post" role="form"
								 id="register-form" class="form-horizontal" name="form" >
								<input type="hidden" name="uid" value="<%=uid%>">
						<div class="form-group">
						    <label for="oldpassword" class="col-xs-4 control-label">Mật khẩu Cũ</label>
							<div class="col-xs-5">
							    <input  onchange="checkPass();" class="form-control" id="password" name="password"  type="password"
												placeholder="Mật khẩu cũ" required="required" >
							</div>
						</div>

						<div class="form-group">
						    <label for="password" class="col-xs-4 control-label">Mật khẩu Mới</label>
							<div class="col-xs-5">
							    <input class="form-control" name="newpassword" type="password" 
							    placeholder="Mật khẩu" required="required">
							</div>
						</div>

						<div class="form-group">
						    <label for="repassword" class="col-xs-4 control-label">Xác Nhận Mật Khẩu Mới</label>
							<div class="col-xs-5">
							    <input  class="form-control" name="repassword" type="password" 
							    placeholder="Xác nhận mật khẩu" required="required"   onkeyup="checkPass(); return false;">
							</div>
							
						</div>
						<div  class="row">
					<div align="center">
							<input type="submit" name="submit" value="Đồng Ý">
					</div>
				</div>
					</form>
				</div>
				
			</div>   
			        </div>
			    </div>
			</div>
			
		<br /></br>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="jquery/jquery-2.1.4.min.js"></script>
	<script src="js/layout.js"></script>
<script type="text/javascript">
</script>
</body>
</html>