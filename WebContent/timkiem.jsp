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
		<div id="main-menu">
				<!-- <div class="col-md-12">
					<form class="navbar-form" role="search">
			            <div id="form-search" class="input-group">
			                <input id="input-search" type="text" class="form-control" placeholder="Search account..." name="q">
			                <div class="input-group-btn">
			                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
			                </div>
			            </div>
	            	</form>
				</div> -->
				<div class="row">
				<div class="col-md-6 col-md-offset-3">
			            <div class="input-group" id="adv-search">
			                <input type="text" class="form-control" placeholder="Tên Sự Kiện" />
			                <div class="input-group-btn">
			                    <div class="btn-group" role="group">
			                        <div class="dropdown dropdown-lg">
			                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="flase"><span class="caret"></span></button>
			                            <div class="dropdown-menu dropdown-menu-right" role="menu" >
			                                <form id="tim" class="form-horizontal" role="form">
				                                  <div class="form-group">
				                                    <label for="filter">Tên Sự Kiện</label>
				                                    <input class="form-control" type="text" placeholder="Tên Sự Kiện"/>
				                                  </div>
				                                  <div class="form-group">
				                                    <label for="contain">Từ</label>
				                                    <input class="form-control" type="text" placeholder="Thời gian bắt đầu"/>
				                                  </div>
				                                  <div class="form-group">
				                                    <label for="contain">Đến</label>
				                                    <input class="form-control" type="text" placeholder="Thời gian kết thúc"/>
				                                  </div>
				                                  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
			                                </form>
			                            </div>
			                        </div>
			                        <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
			                    </div>
			                </div>
			            </div>
			        </div>
			        </div>
			</div>
			<div id="main-form">
				<h1>Tìm Kiếm</h1>
				<div id="main-admin">
				<div class="panel panel-primary" style="margin: 10px">
					<div class="panel-heading">
						<h3 class="panel-title">Sự Kiện</h3>
					</div>
					<div class="panel-body">
						<div class="table-reponsive">
							<table class="table user-list">
								<thead>
									<tr>
										<th><span>Tên Sự Kiện</span></th>
										<th><span>Ngày bắt đầu</span></th>
										<th><span>Ngày kết thúc</span></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<a href="#">Test Sự Kiện</a>
										</td>
										<td>
											21/12/2016
										</td>
										<td>
											21/12/2016
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Họp</a>
										</td>
										<td>
											11/10/2016
										</td>
										<td>
											18/10/2016
										</td>
									</tr>
								</tbody>	
							</table>
						</div>
					</div>
				</div>	
					<a href="Calendar.jsp"><button type="button" class="btn btn-default" style="margin-left:780px">Trở về</button></a>	
				</div>
			</div>
		</div>
		</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>