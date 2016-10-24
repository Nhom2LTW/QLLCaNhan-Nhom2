<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>

	<!-- bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="bootstrap/js.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
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
		<div id="main-menu">
			<div class="row">
				 
				  <div class="col-md-12">
					<div class="input-group" id="adv-search">
						<input type="text" class="form-control" placeholder="Tên Sự Kiện" />
						<div class="input-group-btn">
							<div class="btn-group" role="group">
								<div class="dropdown dropdown-lg">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-expanded="flase">
										<span class="caret"></span>
									</button>
									<div class="dropdown-menu dropdown-menu-right" role="menu">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="filter">Tên Sự Kiện</label> <input
													class="form-control" type="text" placeholder="Tên Sự Kiện" />
											</div>
											<div class="form-group">
												<label for="contain">Từ</label> <input class="form-control"
													type="date"/>
											</div>
											<div class="form-group">
												<label for="contain">Đến</label> <input class="form-control"
													type="date"/>
											</div>
											<button type="submit" class="btn btn-primary">
												<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
											</button>
										</form>
									</div>
								</div>
								<button type="button" class="btn btn-primary">
									<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div class="col-xs-12">
				<div class="col-xs-4">
					<div class="btn-group"
						style="margin-top: 20px; margin-bottom: 10px;">
						<button type="button" class="btn btn-default" onclick="location.href='ngay.jsp'">Hôm Nay</button>
						<button type="button"
							class="btn btn-default glyphicon glyphicon-chevron-left"></button>
						<button type="button"
							class="btn btn-default glyphicon glyphicon-chevron-right"></button>
					</div>
				</div>
				<div class="col-xs-4">
					<h2 style="color: #003300">10 Tháng-10 2016</h2>
				</div>
				<div class="col-xs-4">
					<div class="btn-group"
						style="margin-top: 20px; margin-bottom: 10px;">
						<button type="button" class="btn btn-default" onclick="location.href='ngay.jsp'">Ngày</button>
						  <button type="button" class="btn btn-default" onclick="location.href='tuan.jsp'">Tuần</button>
						  <button type="button" class="btn btn-default" onclick="location.href='thang.jsp'">Tháng</button>
						  <button type="button" class="btn btn-default" onclick="location.href='lichbieu.jsp'">LịchBiểu</button>
					</div>
				</div>
			</div>
		</div>
		<div class="table-reponsive" style="margin: 30px; height: 480px">
			<table class="table user-list">
				<thead>
					<tr>
						<th><span>Tên Sự Kiện</span></th>
						<th><span>Địa Điểm</span></th>
						<th><span>Ngày</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">Test Sự Kiện</a></td>
						<td>Phòng 302</td>
						<td>10/11/2016</td>
					</tr>
					<tr>
						<td><a href="#">Họp</a></td>
						<td>Gò Vấp</td>
						<td>19/10/2016</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>