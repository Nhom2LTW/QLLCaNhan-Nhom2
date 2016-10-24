<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<!-- bootstrap -->
<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="datepick/moment.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="datepick/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="datepick/vi.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="datepick/bootstrap-datetimepicker.min.css">

<script type="text/javascript" src="bootstrap/js.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="main">
		<div id="main-container">
			<div id="main-user">
					<div class="col-md-6" style="height: 60px;background-color: #2F4F4F">
						<div><button id="button-TAO" type="button" class="btn btn-danger">TẠO</button></div>
					</div>
					<div class="col-md-6" style="background-color: #2F4F4F">
						<form style="margin-left: 266px">
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
			<div id="main-form">
				<h1>Tạo Sự Kiện</h1>
				<div id="form-taosk">
					<form class="form-horizontal" name="form">
						<div class="form-group" >
							<label  class="col-xs-4 control-label">Tên Sự Kiện</label>
							<div class="col-xs-4">
								<input class="form-control" name="tensukien" type="text" placeholder="Tên Sự Kiện" required>
							</div>
						</div>

                        <div class="form-group">
							<label for="diadiem" class="col-xs-4 control-label">Địa điểm</label>
							<div class="col-xs-4">
								<input class="form-control" name="diadiem" type="text" placeholder="Địa điểm" required>
							</div>
						</div>
						<div class="row">
                        <div class="form-group">
							<label for="thoigian" class="col-xs-4 control-label">Thời Gian</label>
							<div class="col-xs-8 form-group" style="height: 36px;margin-bottom:0px">
								<div class='col-xs-5' style="width: 200px">
							        <div class="form-group">
							            <div class='input-group date' id='datetimepicker6'>
							                <input type='text' name="tgian" class="form-control">
							                <span class="input-group-addon">
							                    <span class="glyphicon glyphicon-calendar"></span>
							                </span>
							            </div>
							        </div>
							    </div>
							    <label class="col-xs-1 control-label">Đến</label>
							    <div class='col-xs-5' style="width: 200px">
							        <div class="form-group">
							            <div class='input-group date' id='datetimepicker7'>
							                <input type='text' name="tgian2" class="form-control">
							                <span class="input-group-addon">
							                    <span class="glyphicon glyphicon-calendar"></span>
							                </span>
							            </div>
							        </div>
							    </div>
						    </div>
						</div>
						</div>

                        <div class="form-group">
							<label for="nhac" class="col-xs-4 control-label">Chế độ nhắc</label>
							<div class="col-xs-4">
                            	<select style="height: 34px;line-height: 34px">
						            <option value="Một Lần">Một Lần</option>
						            <option value="Lặp">Lặp</option>
						        </select>
							</div>
						</div>

						<div class="form-group">
							<label for="htlap" class="col-xs-4 control-label">Hình thức Lặp</label>
							<div class="col-xs-4">
	                            <select style="height: 34px;line-height: 34px">
						            <option value="Một Lần">Mỗi ngày</option>
						            <option value="Lặp">Vào mỗi thứ 2</option>
						            <option value="Lặp">Vào mỗi thứ 3</option>
						            <option value="Lặp">Vào mỗi thứ 4</option>
						            <option value="Lặp">Vào mỗi thứ 5</option>
						            <option value="Lặp">Vào mỗi thứ 6</option>
						            <option value="Lặp">Vào mỗi thứ 7</option>
						            <option value="Lặp">Vào mỗi Chủ nhật</option>
						        </select>
							</div>
						</div>

                      	<div class="form-group">
							<label for="htnhac" class="col-xs-4 control-label">Hình thức nhắc</label>
							<div class="col-xs-4">
                            	<select style="height: 34px;line-height: 34px">
						            <option value="Một Lần">Email</option>
						            <option value="Lặp">Số điện thoại</option>
						        </select>
							</div>
						</div>

                		<div class="form-group">
							<label for="loinhac" class="col-xs-4 control-label">Lời nhắc</label>
							<div class="col-xs-4">
								<input class="form-control" name="loinhac" placeholder="Lời Nhắc" type="text">
							</div>
						</div>

                        <div class="form-group">
							<label for="ghichu" class="col-xs-4 control-label">Ghi chú</label>
							<div class="col-xs-4">
								<input class="form-control" name="ghichu" type="text" placeholder="Ghi Chú">
							</div>
						</div>
						
						<div  class="col-md-3 col-md-offset-5">
							<button type="submit" class="btn btn-success" value="Thêm">Tạo</button>
							<a href="Calendar.jsp"><button type="button" class="btn btn-primary">Trở Lại</button></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>