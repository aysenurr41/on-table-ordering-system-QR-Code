<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Login</title>
<style type="text/css">
	*{
		box-sizing: border-box;
		margin: 0;
		padding: 0;
	}
	#image-fluid{
		background: url("../images/sann.jpg") no-repeat center/cover;
		width: 100%;
		height: 100vh;
	}
	.form-login{
		position: absolute;
		left: 50%;
		top: 50%;
		transform: translate(-50%, -50%);
		background-color: rgba(187, 183, 181, 0.5);
		padding: 20px;
		border-radius: 5px;
		
	}
</style>
</head>
<body>
	<div id="image-fluid">
		<div class="form-login">
			<form class="d-flex justify-content-center align-items-center flex-column " action="login" method="post">
				<input class="form-control" type="text" name="username" placeholder="Email"/>
				<input class="form-control my-3" type="password" name="password" placeholder="Parola"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input class="btn btn-success" type="submit" value="Giriş Yap"/> 
				<font color="red">
					<c:if test="${not empty param.loginFailed}">
						<c:out value="Login Failed, Incorrect Username or Password"></c:out>
					</c:if>
				</font>
			</form>
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</body>
</html>