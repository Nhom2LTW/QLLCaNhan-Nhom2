<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
	<script type="text/javascript" src="bootstrap/js.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="main">
	<div id="main-container">
			<div id="main-user">
				<div class="col-md-12" style="background-color:#2F4F4F">
				<div class="col-md-3 col-md-offset-9" style="background-color: #2F4F4F">
					<form>
						<img src="img/main-user.png" >
						<div class="btn-group">
						  <button type="button" class="btn btn-success">Admin</button>
						  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
						    <span class="caret"></span>
						    <span class="sr-only">Toggle Dropdown</span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="doimk.jsp">Đổi Mật Khẩu</a></li>
						    <li class="divider"></li>
						    <li><a href="dangnhap.jsp">Đăng Xuất</a></li>
						  </ul>
						</div>
					</form>
				</div>
				</div>
			</div>
			<div id="main-menu">
				<div class="col-md-12">
					<form class="navbar-form" role="search">
			            <div id="form-search" class="input-group">
			                <input id="input-search" type="text" class="form-control" placeholder="Search account..." name="q">
			                <div class="input-group-btn">
			                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
			                </div>
			            </div>
	            	</form>
				</div>
			</div>
			<div id="main-form">
				<h1>User</h1>
				<div id="main-admin">
					<div class="panel panel-primary" style="margin: 10px">
						<div class="panel-heading">
							<h3 class="panel-title">User</h3>
						</div>
						<div class="panel-body">
							<div class="table-reponsive">
								<table class="table user-list">
									<thead>
										<tr>
											<th><span>User</span></th>
											<th><span>Trạng Thái</span></th>
											<th><span>Chức Năng</span></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<a href="#">DucViet</a>
											</td>
											<td>
												active
											</td>
											<td>
												<button>Khóa</button>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">MinhTien123</a>
											</td>
											<td>
												active
											</td>
											<td>
												<button>Khóa</button>
											</td>
										</tr>
									</tbody>	
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>