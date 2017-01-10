<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<div id="main">
		<div id="main-container">
			<div id="main-menu" style="	background-color:#2F4F4F;">
				<ul class="nav nav-tabs" role="tablist">
				  <li><a href="index.jsp">Đăng Nhập</a></li>
				  <li class="active"><a href="registration.jsp">Đăng Kí</a></li>
				  <li><a href="quenmatkhau.jsp">Quên Mật Khẩu</a></li>
				  <li><a href="lienhe.jsp">Liên Hệ</a></li>      
				</ul>
			</div>
			
			
				<div id="main-form">
				<h1>
				<font>ĐĂNG KÍ THÀNH CÔNG!</font>
				</h1>
				<h2>
			<font>Chào Mừng Bạn Đã Đến Trang Web Của Chúng Tôi</font>
			</h2>
					<div style=" text-align:center; height: 480px; margin-top: 60px; font-size: 26px;">
						Nhấn <a href="index.jsp"><i>vào đây</i></a> để đăng nhập!
					</div>
			</div>
			</div>
		</div>

<jsp:include page="footer.jsp"></jsp:include>
<script src='jquery/jquery-2.1.4.min.js'></script>
	<script src="js/success.js"></script>
</body>
</html>