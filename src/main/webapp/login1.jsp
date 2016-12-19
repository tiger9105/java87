<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="css/button/button.css">

<link rel='stylesheet prefetch'
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>


<link rel="stylesheet" href="css/login/login.css">
<link rel="stylesheet" href="node_modules/sweetalert/dist/sweetalert.css">
</head>
<body>

	<video id="video" preload="auto" autoplay="true" loop="loop"
		muted="muted" volume="0">
		<source src="video/video.mp4">

	</video>
	<div class="layer" > 



			<div class="rerun" >

			</div>
			<div class="container" style="text-align: center;">
				<div class="card" style="opacity: 0.3;"></div>
				<div class="card" style="opacity: 0.3;">
		
					<h1 class="title">로그인</h1>
					<form name="loginForm" 	target="_parent" >
						<div class="input-container" >
							<input type="text" id="userId" name="userId" required="required"  />
							<label for="Username">ID</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="password" name="password"
								required="required" /> <label for="Password">Password</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button type="button"  id="checkloginbutton">
								<span>Go</span>
							</button>
						</div>
						<div class="footer">
							<a href="#">Forgot your password?</a>
						</div>
						<div id="fb-root"></div>
						<!-- facebook icon 수정본  -->
						<a class='btn fb1' href="#" onclick="FB.login();"> login <span>
								with facebook </span>
						</a>
						<!--  ///////////////////////////////////// -->
					</form>
			</div>
				<div class="card alt">
					<div class="toggle"></div>
					<h1 class="title">JOIN
            <div class="close"></div>
         </h1>
					<!-- action="user/addUser" -->
					<form name="detailForm" method="post">
						<div class="input-container">
							<input type="text" name="userId" id="Username"
								required="required" /> <label for="Username">ID </label>
							<div class="bar"></div>
							<div></div>
						</div>
						<div class="input-container">
							<input type="text" name="email" id="Email" required="required"
								 /> <label for="Email">E-mail</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" name="password" id="Password"
								required="required" /> <label for="Password">Password</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" name=password2 id="RepeatPassword"
								required="required" /> <label for="RepeatPassword">Repeat
								Password</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button type="button" name="button01">
								<span>Next</span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</span> <span class="blank"></span>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="javascript/loginjs/login.js"></script>
	<script src="javascript/facebookjs/facebook.js"></script>
	<script src="http://connect.facebook.net/ko_KR/all.js"></script>
	<script src="javascript/loginjs/ajaxUtil02.js"></script>
	<script src="javascript/loginjs/validate.js"></script>
	<script src="javascript/loginjs/loginvalidate.js"></script>
	<script src="node_modules/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>