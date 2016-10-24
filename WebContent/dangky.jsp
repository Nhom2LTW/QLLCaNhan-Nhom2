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
			<div id="main-menu" style="background-color:#2F4F4F;">
				<ul class="nav nav-tabs" role="tablist">
				  <li><a href="dangnhap.jsp">Đăng Nhập</a></li>
				  <li class="active"><a href="dangky.jsp">Đăng Kí</a></li>
				   <li><a href="quenmatkhau.jsp">Quên Mật Khẩu</a></li>
				  <li><a href="lienhe.jsp">Liên Hệ</a></li>      
				</ul>
			</div>
			<div id="main-form">
				<h1>Đăng Kí</h1>
					<div class="col-md-8 col-md-offset-2">
	                    <form id="registerform" class="form-horizontal">

								<div class="form-group">
	                                <label class="col-md-3 control-label">Họ và Tên</label>
	                                <div class="col-md-5">
	                                    <input type="text" class="form-control" name="username" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Tên Đăng Nhập</label>
	                                <div class="col-md-5">
	                                    <input type="text" class="form-control" name="accountname" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Mật Khẩu</label>
	                                <div class="col-md-5">
	                                    <input type="password" class="form-control" name="password" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Nhập lại mật khẩu</label>
	                                <div class="col-md-5">
	                                    <input type="password" class="form-control" name="confirmPassword" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Ngày Sinh</label>
	                                <div class="col-md-5">
	                                    <input type="date" class="form-control" name="ngaysinh" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Địa Chỉ Email</label>
	                                <div class="col-md-5">
	                                    <input type="email" class="form-control" name="email" />
	                                </div>
	                            </div>
								
								<div class="form-group">
	                                <label class="col-md-3 control-label">Số Điện Thoại</label>
	                                <div class="col-md-5">
	                                    <input type="text" class="form-control" name="numberphone" />
	                                </div>
	                            </div>

	                            <div class="form-group">
		                            <div class="col-md-9 col-md-offset-3">
		                                <button type="submit" class="btn btn-primary">Đồng Ý</button>
		                                <button type="button" class="btn btn-primary">Trở lại</button>
		                            </div>
		                        </div>
	                	</form>
					</div>
			</div>
		</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>