<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Xenon Boostrap Admin Panel" />
<meta name="author" content="" />

<title>Xenon - Login</title>

<link rel="stylesheet"
	href="http://fonts.useso.com/css?family=Arimo:400,700,400italic">
<link rel="stylesheet"
	href="../assets/css/fonts/linecons/css/linecons.css">
<link rel="stylesheet"
	href="../assets/css/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/css/bootstrap.css">
<link rel="stylesheet" href="../assets/css/xenon-core.css">
<link rel="stylesheet" href="../assets/css/xenon-forms.css">
<link rel="stylesheet" href="../assets/css/xenon-components.css">
<link rel="stylesheet" href="../assets/css/xenon-skins.css">
<link rel="stylesheet" href="../assets/css/custom.css">

<script src="../assets/js/jquery-1.11.1.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body class="page-body login-page">


	<div class="login-container">

		<div class="row">

			<div class="col-sm-6">

				<script type="text/javascript">
					jQuery(document).ready(function($)
					{
						// Reveal Login form
						setTimeout(function(){ $(".fade-in-effect").addClass('in'); }, 1);
						
						
						// Validation and Ajax action
						$("form#login").validate({
							rules: {
								user_name: {
									required: true
								},
								
								user_pass: {
									required: true
								},
								verify_code: {
									required: true,
									remote: {
										url: "check-verify-code",
										type:"post",
										contentType: "application/x-www-form-urlencoded; charset=utf-8"
									}
								}
							},
							
							messages: {
								user_name: {
									required: 'Please enter your username.'
								},
								
								user_pass: {
									required: 'Please enter your password.'
								},
								verify_code: {
									required: 'Please enter the verify code.',
									remote: 'Please enter the correct code.'
								}
							}
							
							
						});
						
						// Set Form focus
						$("form#login .form-group:has(.form-control):first .form-control").focus();
					});
				</script>

				<!-- Errors container -->
				<div class="errors-container"></div>

				<!-- Add class "fade-in-effect" for login form effect -->
				<form method="post" role="form" id="login"
					class="login-form fade-in-effect" action="login">

					<div class="login-header">
						<a href="../index/index" class="logo"> <img
							src="../assets/images/logo@2x.png" alt="" width="80" /> <span>log
								in</span>
						</a>
						<c:if test="${!empty message}">
							<p>
								<span class="text-danger">${message}</span>
							</p>
						</c:if>
						<p>Dear user, log in to access the admin area!</p>
					</div>


					<div class="form-group">
						<label class="control-label" for="username">Username</label> <input
							type="text" class="form-control input-dark" name="user_name"
							id="username" autocomplete="off" />
					</div>

					<div class="form-group">
						<label class="control-label" for="passwd">Password</label> <input
							type="password" class="form-control input-dark" name="user_pass"
							id="passwd" autocomplete="off" />
					</div>

					<c:if test="${wrongPassCount>3}">
						<div class="form-group">
							<label class="control-label" for="verify-code">Virfy Code</label>
							<input type="text" class="form-control input-dark"
								name="verify_code" id="verify-code" autocomplete="off" /> <a
								href="#" onclick="changeImg()"><img id="verify-img"
								src="verify-code"
								style="width: 100px; height: 38px; position: absolute; top: 1px; right: 1px;"></a>
						</div>
					</c:if>

					<div class="form-group">
						<button type="submit" class="btn btn-dark  btn-block text-left">
							<i class="fa-lock"></i> Log In
						</button>
					</div>

					<div class="login-footer">
						<a href="forget">Forgot your password?</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="register">Have no account?</a>
						<div class="info-links">
							<a href="#">ToS</a> - <a href="#">Privacy Policy</a>
						</div>

					</div>

				</form>

				<!-- External login -->
				<div class="external-login">
					<a href="#" class="facebook"> <i class="fa-facebook"></i>
						Facebook Login
					</a>

					<!-- 
					<a href="#" class="twitter">
						<i class="fa-twitter"></i>
						Login with Twitter
					</a>
					
					<a href="#" class="gplus">
						<i class="fa-google-plus"></i>
						Login with Google Plus
					</a>
					 -->
				</div>

			</div>

		</div>

	</div>



	<!-- Bottom Scripts -->
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/TweenMax.min.js"></script>
	<script src="../assets/js/resizeable.js"></script>
	<script src="../assets/js/joinable.js"></script>
	<script src="../assets/js/xenon-api.js"></script>
	<script src="../assets/js/xenon-toggles.js"></script>
	<script src="../assets/js/jquery-validate/jquery.validate.min.js"></script>
	<script src="../assets/js/toastr/toastr.min.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="../assets/js/xenon-custom.js"></script>

</body>
</html>