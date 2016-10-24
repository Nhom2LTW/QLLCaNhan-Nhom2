<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
<script type="text/javascript" src="bootstrap/js.js"></script>
<!-- bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<!-- Plugin -->
<link href="plugin/fullcalendar.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="plugin/lib/cupertino/jquery-ui.min.css">
<link href="plugin/fullcalendar.print.css" rel="stylesheet"
	media="print" />
<script src="plugin/lib/moment.min.js"></script>
<script src="plugin/lib/jquery.min.js"></script>
<script src="plugin/fullcalendar.min.js"></script>
<script src="plugin/lib/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript" src="plugin/locale/vi.js"></script>
<script>
		$(document).ready(function(){
		    $("#nut").click(function(){
		        $("#container").show();
		    });
		});
</script>
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
			<!-- <div id="calendar"></div> -->
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
						<h2 style="color: #003300">Tháng-10 2016</h2>
					</div>
					<div class="col-xs-4">
						<div class="btn-group"
							style="margin-top: 20px; margin-bottom: 10px;">
							<button type="button" class="btn btn-default" onclick="location.href='ngay.jsp'">Ngày</button>
						  <button type="button" class="btn btn-default" onclick="location.href='tuan.jsp'">Tuần</button>
						  <button type="button" class="btn btn-default" onclick="location.href='thang.jsp'">Tháng</button>
						   <button type="button" class="btn btn-default" onclick="location.href='lichbieu.jsp'">LịchBiểu</button>						</div>
					</div>
				</div>
				<table id="monthtable" style="margin: 50px; position: relative;">
					<thead>
						<tr>
							<th class="nameday">T2</th>
							<th class="nameday">T3</th>
							<th class="nameday">T4</th>
							<th class="nameday">T5</th>
							<th class="nameday">T6</th>
							<th class="nameday">T7</th>
							<th class="nameday">CN</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="month" onclick="location.href='taosukien.jsp'">
								<div class="zindexmonth">1</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month" onclick="location.href='taosukien.jsp'">
								<div class="zindexmonth">2</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">3</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">4</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">5</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">6</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">7</div>
								<div class="zindexmonth2"></div>
							</td>
						</tr>
						<tr>
							<td class="month">
								<div class="zindexmonth">8</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">9</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">10</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">11</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">12</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">13</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">14</div>
								<div class="zindexmonth2"></div>
							</td>
						</tr>
						<tr>
							<td class="month">
								<div class="zindexmonth">15</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">16</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">17</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">18</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">19</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">20</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">21</div>
								<div class="zindexmonth2"></div>
							</td>
						</tr>
						<tr>
							<td class="month">
								<div class="zindexmonth">22</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">23</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">24</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">25</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">26</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">27</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">28</div>
								<div class="zindexmonth2"></div>
							</td>
						</tr>
						<tr>
							<td class="month">
								<div class="zindexmonth">29</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">30</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">31</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">1</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">2</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">3</div>
								<div class="zindexmonth2"></div>
							</td>
							<td class="month">
								<div class="zindexmonth">4</div>
								<div class="zindexmonth2"></div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>