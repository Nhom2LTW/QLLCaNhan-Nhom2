<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>

	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrapvali/bootstrapValidator.css">
	<link rel="stylesheet" type="text/css" href="datepick/bootstrap-datetimepicker.min.css">
	
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="datepick/moment.min.js"></script>
	<script type="text/javascript" src="datepick/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="datepick/vi.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrapvali/bootstrapValidator.js"></script>

	<!-- Customize -->
	<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
	<script type="text/javascript" src="bootstrap/js.js"></script>

</head>
<body>
<div class="container">
    	<div class="row">
			<div class="col-md-6">
				<div class="panel panel-chitiet">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="chitiet-form-link">Chi Tiết</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="khachmoi-form-link">Khách Mời</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="chitiet-form" method="post" style="display:block;" name="form">
									<div class="form-group">
			                        	<div class="row">
			                        		<div class="col-md-12">
												<div class="col-md-4"><label class="control-label lb">Tên Sự Kiện</label></div>
												<div class="col-md-8">
													<input class="form-control" name="tensukien" type="text" 
													placeholder="Tên sự kiện" required>
												</div>
											</div>
										</div>
									</div> 
									<div class="form-group">
			                        	<div class="row">
			                        		<div class="col-md-12">
												<div class="col-md-4"><label class="control-label lb">Địa Điểm</label></div>
												<div class="col-md-8">
													<input class="form-control" name="diadiem" type="text" 
													placeholder="Địa điểm" required>
												</div>
											</div>
										</div>
									</div> 
									<div class="form-group">
										<div class="row">
										<div class="col-md-4">
											<label for="htnhac" class="control-label lb">ThờiGian</label>
										</div>
										<div class="col-md-12">
											<div class=" col-md-5 col-md-offset-2">
												<div class="form-group" style="margin-bottom: 0;">
												    <div class='input-group date' id='datetimepicker6'>
												        <input type='text' class="form-control"/>
												        <span class="input-group-addon">
												             <span class="glyphicon glyphicon-calendar"></span>
												        </span>
												    </div>
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group" style="margin-bottom: 0;">
												    <div class='input-group date' id='datetimepicker7'>
												        <input type='text' class="form-control"/>
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
										<div class="row">
										<div class="col-md-12">
											<div class="col-md-4"><label for="htnhac" class="control-label lb">Chế Độ Nhắc</label></div>
											<div class="col-md-8">
					                            <select style="height: 34px;line-height: 34px">
						                            <option value="Một Lần">Một Lần</option>
						                            <option value="Lặp">Lặp</option>
						                        </select>
				                            </div>
			                            </div>
			                            </div>		
									</div>
									<div class="form-group">
										<div class="row">
										<div class="col-md-12">
											<div class="col-md-4"><label for="htnhac" class="control-label lb">Hình thức Lặp</label></div>
											<div class="col-md-8">
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
			                            </div>		
									</div>
									<div class="form-group">
										<div class="row">
										<div class="col-md-12">
											<div class="col-md-4"><label for="htnhac" class="control-label lb">Hình thức nhắc</label></div>
											<div class="col-md-8">
					                            <select style="height: 34px;line-height: 34px">
						                            <option value="Một Lần">Email</option>
						                            <option value="Lặp">Số điện thoại</option>
						                        </select>
				                            </div>
			                            </div>
			                            </div>		
									</div>
									<div class="form-group">
			                        	<div class="row">
			                        		<div class="col-md-12">
												<div class="col-md-4"><label class="control-label lb">Lời Nhắc</label></div>
												<div class="col-md-8">
													<input class="form-control" name="loinhac"  type="text" placeholder="Lời Nhắc" required>
												</div>
											</div>
										</div>
									</div> 
			                        <div class="form-group">
			                        	<div class="row">
			                        		<div class="col-md-12">
												<div class="col-md-4"><label class="control-label lb">Ghi chú</label></div>
												<div class="col-md-8">
													<input class="form-control" name="ghichu" type="text" 
													placeholder="Ghi Chú" required>			
												</div>
											</div>
										</div>
									</div> 
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="chitiet-submit" id="chitiet-submit" tabindex="4" class="form-control btn btn-chitiet" value="Chỉnh Sửa">
											</div>
										</div>
									</div>
								</form>
								<form id="khachmoi-form" method="post" role="form" style="display: none;" name="form2">
									<div class="form-group">
			                        	<div class="row">
			                        		<div class="col-md-12">
												<div class="col-md-4"><label class="control-label lb">Email</label></div>
												<div class="col-md-8">
													<input class="form-control" name="email" type="email" placeholder="Email" required>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<button type="submit" class="btn btn-success" value="Thêm">Thêm</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>