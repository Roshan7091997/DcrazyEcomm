<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<%@ include file="includes/head.jsp"%>
</head>
<body>
	
	<%@ include file="includes/footer.jsp"%>
<%@ include file="includes/navbar.jsp"%>
<div class="container ">
		<div class="card w-50 mx-auto my-5"></div>
		<div class="card-header text-center">User Login</div>
		<div class="card body"></div>

		<form action="user-login" method="post">

			<div class="form-group">
				<label>Email Address</label> <input type="email"
					class="form-control" name="login-email"
					placeholder="Enter the email" required="required">
			</div>

			<div class="form-group">
				<label>Password</label> <input type="password" class="form-control"
					name="login-password" placeholder="*********" required="required">
			</div>

			<div class="text-centre">
				<button type="submit" class="btn btn-primary">Login</button>
			</div>





		</form>
</body>
</html>