<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
	<link rel="stylesheet" type="text/css" href="angular-validate/font-awesome-4.6.3/css/font-awesome.css">
	<!-- bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <!-- Plugin -->
    <link href="plugin/fullcalendar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="plugin/lib/cupertino/jquery-ui.min.css">
	<link href="plugin/fullcalendar.print.css" rel="stylesheet" media="print" />
	<script src="plugin/lib/moment.min.js"></script>
	<script src="plugin/lib/jquery.min.js"></script>
	<script src="plugin/fullcalendar.min.js"></script>
	<script src="plugin/lib/jquery-ui.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="plugin/locale/vi.js"></script>
	<script type="text/javascript" src="angular-validate/angular.min.js"></script>
	<script type="text/javascript" src="bootstrap/js.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="main">
	<div id="main-container">
		<div id="main-user">
			<div class="col-md-6" style="height: 60px; background-color: #2F4F4F">
				<div>
					<button id="button-TAO" type="button" class="btn btn-danger" 
					onclick="location.href='taosukien.jsp'">TẠO</a></button>
				</div>
			</div>
			<div class="col-md-6" style="background-color: #2F4F4F">
				<form style="margin-left: 266px">
					<img src="img/main-user.png">
					<div class="btn-group">
						<button type="button" class="btn btn-success">Đức Việt</button>
						<button type="button" class="btn btn-success dropdown-toggle"
							data-toggle="dropdown">
							<span class="caret"></span> <span class="sr-only">Toggle
								Dropdown</span>
						</button>
						<ul id="nut" class="dropdown-menu" role="menu">
							<li><a href="#" onclick="location.href='tttaikhoang.jsp'">Thông Tin Tài Khoản</a></li>
							<li><a href="#" onclick="location.href='doimk.jsp'">Đổi Mật Khẩu</a></li>
							<li class="divider"></li>
							<li><a href="#" onclick="location.href='dangnhap.jsp'">Đăng Xuất</a></li>
						</ul>
					</div>
				</form>
			</div>
		</div>
			<div id="main-form">
				<h1>Thông Tin Tài Khoản</h1>
				<div id="form-dangki">
					<form id="register-form" class="form-horizontal" name="form" novalidate>
						<div class="form-group">
						    <label for="username" class="col-xs-3 control-label">Họ Tên</label>
							<div class="col-xs-4">
								<input class="form-control" name="username" type="text" placeholder="Họ Tên" required>
						    </div>
						</div>

						<div class="form-group">
						   	<label for="birthday" class="col-xs-3 control-label">Ngày sinh</label>
							<div class="col-xs-4">
							   	<input class="form-control" name="birthday" ng-model="birthday" type="text"/">
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-xs-3 control-label">Email</label>
							<div class="col-xs-4">
							    <input class="form-control" name="email" type="email" placeholder="Email" required>
							</div>
						</div>

						<div class="form-group">
							<label for="phonenumber" class="col-xs-3 control-label">Số Điện Thoại</label>
							<div class="col-xs-4">
							    <input class="form-control" name="phonenumber"  type="text" placeholder="Số Điện Thoại" required>
							</div>
						</div>
					</form>
				</div>
				
				  <div class="col-md-6 col-md-offset-3">
					<button type="submit" class="btn btn-primary">Đồng Ý</button>
					<a href="Calendar.jsp"><button type="button" class="btn btn-primary">Trở Lại</button></a>
				</div>
				
			</div>
		</div>
		</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>