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
	String fname = "";
	String userposition = "";

	if (check != null) {
		fname = (String) session.getAttribute("ssname");
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
			<div class="col-md-12" src="images/background/bg1.bng">
			<div id="nav_container">
				<div id="nav_bar">
					<nav class="group">
						<h2 class="navheader slide-trigger">
						</h2>

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
							<div id="tag">
					<font size="2" color="black">Xin Chào</font><font size="2" color="blue">
						<%=fname%></font><font size="2" color="black"> !</font>
				</div>
				</div>
				
			</div>		
			</div>
			</div>
		<div id="content_container">
		<%
			int uid = 0;
			String fn = "";
			String ln = "";
			String emai = "";
			String username = "";
			String pw = "";
			String st = "";
			String po = "";
			String sst = "";
			String spo = "";

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

			<%
				Connection connection = null;
				PreparedStatement ps = null;
				ResultSet rs = null;
				int un = (Integer) session.getAttribute("ssuid");
				String SKIN = "";
				String AGENDA = "";
				
				//skin
				String ch1 = "";
				String ch2 = "";
				String ch3 = "";
				String ch4 = "";
				//agenda
				String ch5 = "";
				String ch6 = "";


				try {
					connection = DatabaseConnection.getConnection();
					ps = connection
							.prepareStatement("select * from setting where uid=? ");
					ps.setInt(1, un);

					rs = ps.executeQuery();
					if (rs.next()) {
						SKIN = rs.getString("skin");
						AGENDA = rs.getString("agenda");
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

				//pdf
				

				//skin
				if (SKIN.equals("sk1")) {
					ch1 = "checked";

				} else if (SKIN.equals("sk2")) {

					ch2 = "checked";

				} else if (SKIN.equals("sk3")) {

					ch3 = "checked";

				} else if (SKIN.equals("sk4")) {

					ch4 = "checked";
				}
				String ms1 = "selected=";
				String ms2 = "\"";
				String ms3 = "selected";
				String ms4 = ms1 + ms2 + ms3 + ms2;
				//agenda
				if (AGENDA.equals("agA")) {
					ch5 = "checked";

				} else {

					ch6 = "checked";

				}
			%>
			<form method="POST" action="Setting">

				<div class="mytable">
					<br /></br>
					
					<table id="table1">
						<tr>
							<th></th>
							<th>TERRACE</th>
							<th>CLASSIC</th>
							<th>GLOSSY</th>
							<th>GREENY</th>
						</tr>
						<tr>
							<td>GIAO DIỆN</td>
							<td><input type="radio" name="stg1" value="sk1" <%=ch1%>></td>
							<td><input type="radio" name="stg1" value="sk2" <%=ch2%>></td>
							<td><input type="radio" name="stg1" value="sk3" <%=ch3%>></td>
							<td><input type="radio" name="stg1" value="sk4" <%=ch4%>></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><input type="submit"   value="Đồng Ý"></td>
						</tr>
					</table>
				</div>

			</form>
		
		</div>
		<br /></br>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="jquery/jquery-2.1.4.min.js"></script>
	<script src="js/layout.js"></script>

</body>
</html>