$(function (){
			$('#datetimepicker6').datetimepicker({
				locale:'vi'
			});
			$('#datetimepicker7').datetimepicker({
				useCurrent:false,
				locale:'vi' //Important! See issue #1075
			});
			$("#datetimepicker6").on("dp.change", function (e) {
				$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
			});
			$("#datetimepicker7").on("dp.change", function (e) {
				$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
			});
		});
$(function() {
    $('#chitiet-form-link').click(function(e) {
		$("#chitiet-form").delay(100).fadeIn(100);
 		$("#khachmoi-form").fadeOut(100);
		$('#khachmoi-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#khachmoi-form-link').click(function(e) {
		$("#khachmoi-form").delay(100).fadeIn(100);
 		$("#chitiet-form").fadeOut(100);
		$('#chitiet-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
$(document).ready(function() {
    //lay link qua href cua the btn
    $("#myModal").on("show.bs.modal", function(e) {
        var link = $(e.relatedTarget);
        $(this).find(".modal-dialog").load(link.attr("href"));
    });
    //Reset modal box
    $("#myModal").on("hide.bs.modal", function() {
        $(".modal-body").html("");
    });
});
$(document).ready(function() {
	$('#registerform').bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			firstname: {
				message: 'Họ người dùng không hợp lệ',
				validators: {
					notEmpty: {
						message: 'Họ người dùng không thể để trống'
					},
					regexp: {
						regexp: /^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ ]+$/,
						message: 'Họ người dùng không hợp lệ'
					}
				}
			},
			lastname: {
				message: 'Tên người dùng không hợp lệ',
				validators: {
					notEmpty: {
						message: 'Tên người dùng không thể để trống'
					},
					regexp: {
						regexp: /^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ ]+$/,
						message: 'Tên người dùng không hợp lệ'
					}
				}
			},
			username: {
				message: 'Tên đăng nhập không hợp lệ',
				validators: {
					notEmpty: {
						message: 'Tên đăng nhập không thể để trống'
					},
					stringLength: {
						min: 3,
						max: 20,
						message: 'Tên đăng nhập dài tối thiểu 3 kí tự và tối đa 20 kí tự'
					}
				}
			},
			password: {
				validators: {
					notEmpty: {
						message: 'Mật khẩu không thể để trống'
					}
				}
			},
			cpassword: {
				validators: {
					notEmpty: {
						message: 'Xác nhận mật khẩu không thể để trống'
					},
					identical: {
						field: 'password',
						message: 'Mật khẩu và xác nhận mật khẩu không giống nhau'
					}
				}
			},
			email: {
				validators: {
					notEmpty: {
						message: 'Email không thể để trống'
					},
					emailAddress: {
						message: 'Địa chỉ email không hợp lệ'
					}
				}
			},
			numberphone: {
				message: 'Số điện thoại không thể để trống',
				validators: {
					notEmpty: {
						message: 'Số điện thoại không thể để trống'
					},
					stringLength: {
						min: 10,
						max: 11,
						message: 'Số điện thoại không hợp lệ'
					},
					regexp: {
						regexp: /^[0-9+]+$/,
						message: 'Số điện thoại chỉ gồm các kí tự 0-9'
					}
				}
			}
		}
	});
});




