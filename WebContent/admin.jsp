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
			int uid = 0;
			String fn = "";
			String ln = "";
			String emai = "";
			String pw = "";
			String st = "";
			String po = "";
			String sst = "";
			String spo = "";
			String np="";
			String ns="";

			String shun = request.getParameter("name");

			if (shun != null && !shun.isEmpty()) {

				Connection connection = null;
				PreparedStatement ps = null;
				ResultSet rs = null;

				try {
					connection = DatabaseConnection.getConnection();
					ps = connection
							.prepareStatement("select * from users where username=? ");
					ps.setString(1, shun);

					rs = ps.executeQuery();
					if (rs.next()) {
						uid = rs.getInt("uid");
						fn = rs.getString("firstname");
						ln = rs.getString("lastname");
						emai = rs.getString("email");
						username = rs.getString("username");
						pw = rs.getString("cpassword");
						st = rs.getString("status");
						po = rs.getString("position");
						np=rs.getString("numberphone");
						ns=rs.getString("ngaysinh");
					}

				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (connection != null) {
						try {
							connection.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
					if (ps != null) {
						try {
							ps.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
					if (rs != null) {
						try {
							rs.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}

				if (st.equals("A")) {
					sst = "Active";
				} else {
					sst = "InActive";
				}

				if (po.equals("A")) {
					spo = "Admin";
				} else {
					spo = "User";
				}
			} else {
				sst = "";
				spo = "";
			}
		%>

		<div id="content_container">

			<form name="form1" method="post" action="admin.jsp">
				<div align="center">
					<table width="448" border="0">
						<tr>
							<th width="150" scope="row">User Name</th>
							<td width="200"><label for="search"></label> <input
								type="text" name="name"></td>
							<td width="150"><input type="submit" name="search2"
								id="search2" value="Search"></td>
						</tr>
					</table>
				</div>
			</form>
			<div align="center">
				<br /> <br /> <br />
			</div>
			<form name="form2" method="post" action="UpdateUser">
				<div align="center">
					<table width="600" border="0">
						<tr>
							<th width="88" scope="row"><div align="left">User ID</div></th>
							<td width="150"><div align="center">
									<input name="txo" type="text" ReadOnly="True" value=<%=uid%>>
								</div></td>
							<td width="34"><label for="tx"> </label></td>
							<td width="146"><div align="left"></div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Họ</div></th>
							<td><div align="center">
									<input name="txo2" type="text" ReadOnly="True" value=<%=fn%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch2" id="ch2"
										onclick="handleClick(this)" value="ch">
								</div></td>
							<td><div align="left">
									<input type="text" name="tx2" id="tx2" class="textbox">
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Tên</div></th>
							<td><div align="center">
									<input name="txo3" type="text" ReadOnly="True" value=<%=ln%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch3" id="ch3"
										onclick="handleClick(this)" value="ch">
								</div></td>
							<td><div align="left">
									<input type="text" name="tx3" id="tx3">
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Email</div></th>
							<td><div align="center">
									<input name="txo7" type="text" ReadOnly="True" value=<%=emai%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch7" id="ch7"
										onclick="handleClick(this)" value="ch">
								</div></td>
							<td><div align="left">
									<input type="text" name="tx7" id="tx7">
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Username</div></th>
							<td><div align="center">
									<input name="txo4" type="text" ReadOnly="True"
										value=<%=username%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch4" id="ch4"
										onclick="handleClick(this)" value="ch">
								</div></td>
							<td><div align="left">
									<input type="text" name="tx4" id="tx4">
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Password</div></th>
							<td><div align="center">
									<input name="txo5" type="text" ReadOnly="True" value=<%=pw%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch5" id="ch5"
										onclick="handleClick(this)" value="ch">
								</div></td>
							<td><div align="left">
									<input type="text" name="tx5" id="tx5">
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Ngày Sinh</div></th>
							<td><div align="center">
									<input name="txo6" type="text" ReadOnly="True" value=<%=ns%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch6" id="ch6"
										onclick="handleClick(this)" value="ch">
								</div></td>
							<td><div align="left">
									<input type="text" name="tx6" id="tx6" class="textbox">
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">SĐT</div></th>
							<td><div align="center">
									<input name="txo8" type="text" ReadOnly="True" value=<%=np%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch8" id="ch8"
										onclick="handleClick(this)" value="ch">
								</div></td>
							<td><div align="left">
									<input type="text" name="tx8" id="tx8" class="textbox">
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Status</div></th>
							<td><div align="center">
									<input name="txo9" type="text" ReadOnly="True" value=<%=sst%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch9" id="ch9" value="ch">
								</div></td>
							<td><div align="left">
									<select name="UserStatus">
										<option value="Active">Active</option>
										<option value="InActive" selected="selected">InActive</option>

									</select>
								</div></td>
						</tr>
						
						<tr>
							<th scope="row"><div align="left">Position</div></th>
							<td><div align="center">
									<input name="txo10" type="text" ReadOnly="True" value=<%=spo%>>
								</div></td>
							<td><div align="center">
									<input type="checkbox" name="ch10" id="ch10" value="ch">
								</div></td>
							<td><div align="left">
									<select name="UserPosition">
										<option value="Admin">Admin</option>
										<option value="User" selected="selected">User</option>

									</select>
								</div></td>
						</tr>
						
						<tr>
							<th scope="row">&nbsp;</th>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
						<tr>
							<th scope="row">&nbsp;</th>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><div align="right">
									<input type="submit" name="submit" value="Cập Nhật">
								</div></td>
						</tr>
					</table>
				</div>
			</form>


		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="jquery/jquery-2.1.4.min.js"></script>
	<script src="js/layout.js"></script>

</body>

</html>