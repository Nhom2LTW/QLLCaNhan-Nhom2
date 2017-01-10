						<%@page import="com.devops.pojo.getList"%>
<%@page import="com.devops.db.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%> 
<%@page import="java.sql.Time"%> 

 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
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
			
		<%
		if(request.getParameter("t")!=null){
			String t= request.getParameter("t");
			getList li=new getList();
			 request.setAttribute("dstim", li.timKiem(t));
			
		}
				
		%>
		<div id="content_container" style="margin-top:20px;]">
			
		<div class="panel panel-primary">
			<div class="panel-heading">Search</div>
			<div class="panel-body">
			    <table class="table">
					<thead>
						<tr>
							<th>Tên Sự Kiện</th>
							<th>Thời Gian Bắt Đầu</th>
							<th>Thời Gian Kết Thúc</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${dstim}">
						<tr>
							<td>${row.getEvent_name()}</td>
							<td>${row.getStart_date()}</td>
							<td>${row.getEnd_date()}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="jquery/jquery-2.1.4.min.js"></script>
	<script src="js/layout.js"></script>

</body>

</html>