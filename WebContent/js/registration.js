(function ($, W, D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
            {
                setupFormValidation: function ()
                {
                    //form validation rules
                    $("#register-form").validate({
                        rules: {
                            firstname: "required",
                            lastname: "required",
                            email: {
                                required: true,
                                email: true
                            },
                            ngaysinh: {
                                required: true,
                                minlength: 10
                            },
                            numberphone: {
                                required: true,
                                minlength: 15
                            },
                            username: {
                                required: true,
                                minlength: 2
                            },
                            password: {
                                required: true,
                                minlength: 6
                            },
                            cpassword: {
                                required: true,
                                minlength: 6,
                                //equalTo :"#password"
                            },
                            agree: "required"
                        },
                        messages: {
                            firstname: "Vui lòng nhập họ của bạn",
                            lastname: "Vui lòng nhập tên của bạn",
                            email: {
                                required:  "Vui lòng nhập đúng định dạng Email",
                                email: "Email phải có định dạng abc@xyz.com"
                            },
                            username: {
                                required: "Vui lòng nhập tên đăng nhập",
                                minlength: "Tên đăng nhập ít nhất phải trên 2 kí tự"
                            },
                            numberphone: {
                                required: "Vui lòng nhập số điện thoại của bạn",
                                minlength: "Số điện thoại ít nhất phải trên 10 kí tự"
                            },
                            ngaysinh: {
                                required: "Vui lòng nhập ngày sinh của bạn",
                                minlength: "Ngày sinh phải có định dạng dd/mm/yyyy"
                            },
                            password: {
                                required: "Vui lòng nhập mật khẩu",
                                minlength: "Mật khẩu phải trên 6 kí tự"
                            },
                            cpassword: {
                                required: "Vui lòng nhập lại mật khẩu",
                                minlength: "Mật khẩu phải trên 6 kí tự",
                                //equalTo :"Please enter the same password as above"
                            },
                            agree: "Please accept our policy"
                        },
                        submitHandler: function (form) {
                            form.submit();
                        }
                    });
                }
            };
    
      

    //when the dom has loaded setup form validation rules
    $(D).ready(function ($) {
        JQUERY4U.UTIL.setupFormValidation();
        
        
        
        $(".uname").change(function(){
        	
	        var uname = $(this).val();
	        
	            $(".status").html("<img src='images/gif/loading.gif'><font color=gray> Checking availability...</font>");
	             $.ajax({
	                type: "POST",
	                url: "CheckUserNameAvailability",
	                data: "uname="+ uname,
	                success: function(msg){

	                    $(".status").ajaxComplete(function(event, request, settings){
	                         
	                        $(".status").html(msg);

	                    });
	                }
	            });
	        
	    });
        
        
    });

})(jQuery, window, document);



