<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
<link rel="stylesheet" type="text/css"
	href="angular-validate/font-awesome-4.6.3/css/font-awesome.css">
<!-- bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="angular-validate/angular.min.js"></script>
<script type="text/javascript" src="bootstrap/js.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main">
		<div id="main-container">
			<div id="main-menu" style="background-color: #2F4F4F;">
				<ul class="nav nav-tabs" role="tablist">
					<li><a href="dangnhap.jsp">Đăng Nhập</a></li>
					<li><a href="dangky.jsp">Đăng ký</a></li>
					 <li><a href="quenmatkhau.jsp">Quên Mật Khẩu</a></li>
					<li class="active"><a href="lienhe.jsp">Liên Hệ</a></li>

				</ul>
			</div>
			<div id="main-form">
				<h1>Liên Hệ</h1>
				<div class="col-dm-12">
					<div class="col-dm-6">
						<img src="img/contact.jpg">
					</div>
					<div class="col-dm-6"
						style="height: 480px; margin-top: 60px; font-size: 26px;">
						Email: <a href="#">lichvn@gmail.com</a><br> SĐT:
						086.999.999.86<br> Facebook: <a href="#">http://facebook.com/lichvn</a><br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>