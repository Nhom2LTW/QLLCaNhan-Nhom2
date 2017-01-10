<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="bootstrapvali/bootstrapValidator.css">
<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrapvali/bootstrapValidator.js"></script>
<script type="text/javascript" src="bootstrap/js.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">

<%
	String msg = " ";
	String i = " ";
	String x = "wrong";
	String y = "stwrong";

	try {
		i = request.getParameter("id");

		if (i.equals(x)) {
			msg = "Tài khoản hoặc mật khẩu nhập vào không đúng ";

		} else if (i.equals(y)) {
			msg = "Xin lỗi, tài khoản của bạn đang tạm khóa ";
		} else {
			msg = " ";
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
		<div id="main">
			<div id="main-container">
				<div id="main-menu" style="	background-color:#2F4F4F;">
					<ul class="nav nav-tabs" role="tablist">
					  <li class="active"><a href="index.jsp">Đăng Nhập</a></li>
				 	  <li><a href="registration.jsp">Đăng Kí</a></li>
				    	<li><a href="quenmatkhau.jsp">Quên Mật Khẩu</a></li>    
					</ul>
				</div>
			<div id="main-form">
				<h1>Đăng Nhập</h1>
				<div id="form-dangnhap">
					<div class="col-md-8 col-md-offset-2">
	                   	<form id="registerform" action="LoginServlet" method="post" class="form-horizontal">
		                   	<div class="form-group">
		                        <label class="col-md-3 control-label">Tên Đăng Nhập</label>
		                        <div class="col-md-5">
		                            <input type="text" class="form-control" name="username" required="required"
									required
									oninvalid="this.setCustomValidity('Vui lòng nhập tài khoản để sử dụng dịch vụ')"
									oninput="setCustomValidity('')" />
		                             </div>
		                    </div>
		                    <div class="form-group">
	                            <label class="col-md-3 control-label">Mật Khẩu</label>
	                            <div class="col-md-5">
	                                <input type="password" class="form-control" name="userpass"
									required="required" required
									oninvalid="this.setCustomValidity('Vui lòng nhập mật khẩu để sử dụng dịch vụ')"
									oninput="setCustomValidity('')" />	                               
	                            </div>
	                        </div>
		                        <div class="col-md-9 col-md-offset-3">
		                         <tr>
							<td><input type="submit" value="Đăng Nhập" id="submitbtn" /></td>
								</tr>
		                        </div>
		                    <div id="alertbox" align="center">
						<font color="red"><%=msg%></font>
					</div>
	                    </form>
					</div>
				</div>
				
			</div>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>