<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="datepick/moment.min.js"></script>
	<script type="text/javascript" src="datepick/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="datepick/vi.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link 	rel="stylesheet" type="text/css" href="datepick/bootstrap-datetimepicker.min.css">
	
	<!-- Customize -->
	<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
	<script type="text/javascript" src="bootstrap/js.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog"></div>
	</div>
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
			<div>
				<div class="col-xs-12">
					<div class="col-xs-4">
						<div class="btn-group" style="margin-top:20px;margin-bottom: 10px;">
						  <button type="button" class="btn btn-default" onclick="location.href='ngay.jsp'">Hôm Nay</button>
						  <button type="button" class="btn btn-default glyphicon glyphicon-chevron-left"></button>
						  <button type="button" class="btn btn-default glyphicon glyphicon-chevron-right"></button>
						</div>
					</div>
					<div class="col-xs-4"><h2 style="color:#003300">10 – 16 Th10 2016</h2></div>
					<div class="col-xs-4">
						<div class="btn-group" style="margin-top:20px;margin-bottom: 10px;">
						  <button type="button" class="btn btn-default" onclick="location.href='ngay.jsp'">Ngày</button>
						  <button type="button" class="btn btn-default" onclick="location.href='tuan.jsp'">Tuần</button>
						  <button type="button" class="btn btn-default" onclick="location.href='thang.jsp'">Tháng</button>
						   <button type="button" class="btn btn-default" onclick="location.href='lichbieu.jsp'">LịchBiểu</button>
						</div>
					</div>
				</div>
				<table id="tableweek">
					<thead>
						<tr>
							<th class="time"></th>
							<th class="nameday">T2-10/10</th>
							<th class="nameday">T2-11/10</th>
							<th class="nameday">T2-12/10</th>
							<th class="nameday">T2-13/10</th>
							<th class="nameday">T2-14/10</th>
							<th class="nameday">T2-15/10</th>
							<th class="nameday">CN-16/10</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="time">1am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">2am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">3am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">4am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday">
								<a href="chitiet.jsp" data-remote="false" data-toggle="modal" data-target="#myModal">4:00-Test</a>
							</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">5am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">6am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">7am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">8am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">9am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">10am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">11am</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">12pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">1pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">2pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">3pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">4pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">5pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">6pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">7pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">8pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">9pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">10pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
						<tr>
							<td class="time">11pm</td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
							<td class="weekday"></td>
						</tr>
						<tr><td class="time"></td><td class="dayday"></td></tr>
					</tbody>
				</table>
			</div>
		</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>