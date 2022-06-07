<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Sanfrench Admin Panel</title>
<link rel="stylesheet" href="css/tables.css">
</head>
<body>
	<div class="arkaPlan m-0 " >
		<div class="text-end">
			<form action="logout" method="post">
				<input class="btn mt-3 me-3" type="submit" value="Çıkış Yap"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			</form>	
		</div>
	
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-1">
						<div class="tables text-center">
							<h3>MASA 1</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-2">
						<div class="tables text-center">
							<h3>MASA 2</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-3">
						<div class="tables text-center">
							<h3>MASA 3</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-4">
						<div class="tables text-center">
							<h3>MASA 4</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-5">
						<div class="tables text-center">
							<h3>MASA 5</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-6">
						<div class="tables text-center">
							<h3>MASA 6</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-7">
						<div class="tables text-center">
							<h3>MASA 7</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-8">
						<div class="tables text-center">
							<h3>MASA 8</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-9">
						<div class="tables text-center">
							<h3>MASA 9</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 ">
					<a href="/siparis.html?masaNo=masa-10">
						<div class="tables text-center">
							<h3>MASA 10</h3>
						</div>
					</a>
				</div>
			</div>
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