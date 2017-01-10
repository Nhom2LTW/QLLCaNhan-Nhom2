<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="bootstrapvali/bootstrapValidator.css">
<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main">
	<div id="main-container">
			<div id="main-menu" style="background-color:#2F4F4F;">
				<ul class="nav nav-tabs" role="tablist">
				  <li><a href="index.jsp">Đăng Nhập</a></li>
				  <li class="active"><a href="registration.jsp">Đăng Kí</a></li>
				   <li><a href="quenmatkhau.jsp">Quên Mật Khẩu</a></li>     
				</ul>
			</div>
			<div id="main-form" >
				<h1>Đăng Kí</h1>
					<div class="col-md-8 col-md-offset-2" >
	                   <form id="registerform" action="AddUser" method="post" class="form-horizontal" novalidate="novalidate">
								<div class="form-group">
	                                <label class="col-md-3 control-label">Họ</label>
	                                <div class="col-md-5">
	                                    <input type="text" class="form-control" name="firstname" />
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Tên</label>
	                                <div class="col-md-5">
	                                    <input type="text" class="form-control" name="lastname" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Tên Đăng Nhập</label>
	                                <div class="col-md-5">
	                                    <input type="text" class="form-control" name="username" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Mật Khẩu</label>
	                                <div class="col-md-5">
	                                    <input type="password" class="form-control" name="password" />
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Nhập Lại Mật Khẩu</label>
	                                <div class="col-md-5">
	                                    <input id="cpassword" class="form-control" type="password" name="cpassword"  
	                                    onkeyup="checkPass(); return false;">
 										<span  id="confirmMessage" class="confirmMessage"></span>
	                                </div>
	                            </div>

	                            <div class="form-group">
	                                <label class="col-md-3 control-label">Ngày Sinh</label>
	                                <div class="col-md-5">
	                                    <input type="text" class="form-control" name="ngaysinh" />
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
								<div class="fieldgroup">
								<div class="col-md-9 col-md-offset-3" >
								<input type="checkbox" name="agree" class="policy">
								Đồng ý sử dụng dịch vụ
								</div>
								</div>
								<br><br>
	                            <div class="form-group col-md-9 col-md-offset-3"  align="center">
		                           <input type="submit" value="Đăng Kí" class="submit" />
		                            </div>
		                    </form>
		               </div>
					</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	<script src="jquery/jquery.js"></script>
	<script type="text/javascript" src="jquery/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/registration.js"></script>
	<script src="jquery/additional-methods.min.js"></script>
	<script type="text/javascript" src="js/registration_pass.js"></script>
</body>
</html>