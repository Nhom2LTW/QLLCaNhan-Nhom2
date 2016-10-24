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
    <link rel="stylesheet" type="text/css" href="plugin/lib/cupertino/jquery-ui.min.css">
	<link href="plugin/fullcalendar.print.css" rel="stylesheet" media="print" />
	<script src="plugin/lib/moment.min.js"></script>
	<script src="plugin/lib/jquery.min.js"></script>
	<script src="plugin/fullcalendar.min.js"></script>
	<script src="plugin/lib/jquery-ui.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="plugin/locale/vi.js"></script>
	<script type="text/javascript" src="bootstrap/js.js"></script>
	<script>

	$(document).ready(function() {
		$('#calendar').fullCalendar({
			theme: true,
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay,listMonth'
			},
			defaultDate: '2016-09-12',
			navLinks: true, // can click day/week names to navigate views
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2016-09-01'
				},
				{
					title: 'Long Event',
					start: '2016-09-07',
					end: '2016-09-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-09-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-09-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2016-09-11',
					end: '2016-09-13'
				},
				{
					title: 'Meeting',
					start: '2016-09-12T10:30:00',
					end: '2016-09-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2016-09-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2016-09-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2016-09-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2016-09-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2016-09-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2016-09-28'
				}
			]
		});
		
	});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div id="main">
		<div id="main-container">
			<div class="col-md-12" style="background-color:#2F4F4F">
				<div class="col-md-6" style="height:60px">
					<a id="button-TAO" type="button" class="btn btn-danger" href="taosukien.jsp">TẠO</a>
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
				                                  <a type="button" class="btn btn-primary" href="timkiem.jsp"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
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
			<div>
				<div id='calendar'></div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>