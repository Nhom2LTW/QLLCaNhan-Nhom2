<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<!-- bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    
	<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
	<script type="text/javascript" src="bootstrap/js.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main">
		<div id="main-container">
			<div class="col-md-12" style="background-color:#2F4F4F">
				<div class="col-md-6" style="height:60px">
				<button id="button-TAO" type="button" class="btn btn-danger" 
					onclick="location.href='taosukien.jsp'">TẠO</a></button>
				</div>
				<div class="col-md-3 col-md-offset-3">
					<form style="">
						<img src="img/main-user.png" >
						<div class="btn-group">
						  <button type="button" class="btn btn-success">Đức Việt</button>
						  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
						    <span class="caret"></span>
						    <span class="sr-only">Toggle Dropdown</span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="tttaikhoang.jsp">Thông Tin Tài Khoản</a></li>
						    <li><a href="doimk.jsp">Đổi Mật Khẩu</a></li>
						    <li class="divider"></li>
						    <li><a href="dangnhap.jsp">Đăng Xuất</a></li>
						  </ul>
						</div>
					</form>
				</div>
			</div>
			<div id="main-menu">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
			            <div class="input-group" id="adv-search">
			                <input type="text" class="form-control" placeholder="Tên Sự Kiện" />
			                <div class="input-group-btn">
			                    <div class="btn-group" role="group">
			                        <div class="dropdown dropdown-lg">
			                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="flase"><span class="caret"></span></button>
			                            <div class="dropdown-menu dropdown-menu-right" role="menu">
			                                <form class="form-horizontal" role="form">
				                                  <div class="form-group">
				                                    <label for="filter">Tên Sự Kiện</label>
				                                    <input class="form-control" type="text" placeholder="Tên Sự Kiện"/>
				                                  </div>
				                                  <div class="form-group">
				                                    <label for="contain">Từ</label>
				                                    <input class="form-control" type="date"/>
				                                  </div>
				                                  <div class="form-group">
				                                    <label for="contain">Đến</label>
				                                    <input class="form-control" type="date"/>
				                                  </div>
				                                  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
			                                </form>
			                            </div>
			                        </div>
			                        <a type="button" class="btn btn-primary" href="timkiem.jsp"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
			<div id="main-form">
				<h1>Đổi Mật Khẩu</h1>
				<div id="form-dangki">
					<form id="register-form" class="form-horizontal" name="form">
						<div class="form-group">
						    <label for="oldpassword" class="col-xs-3 control-label">Mật khẩu Cũ</label>
							<div class="col-xs-4">
							    <input class="form-control" name="oldpassword" type="password" 
							    placeholder="Mật khẩu" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="password" class="col-xs-3 control-label">Mật khẩu Mới</label>
							<div class="col-xs-4">
							    <input class="form-control" name="password" type="password" 
							    placeholder="Mật khẩu" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="repassword" class="col-xs-3 control-label">Xác Nhận Mật Khẩu Mới</label>
							<div class="col-xs-4">
							    <input class="form-control" name="repassword" type="password" 
							    placeholder="Xác nhận mật khẩu" required>
							</div>
						</div>
					</form>
				</div>
				<div  class="row">
					<div class="col-md-6 col-md-offset-3">
							<a href="doimktc.jsp"><button type="submit" class="btn btn-primary">Đồng Ý</button>
							<a href="Calendar.jsp"><button type="button" class="btn btn-primary">Trở Lại</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>