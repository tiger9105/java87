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

</head>
<body>

	<video id="video" preload="auto" autoplay="true" loop="loop"
		muted="muted" volume="0">
		<source src="video/video.mp4">

	</video>
	<div class="layer">
		<span class="content">


			<div class="rerun">
				<a href="">Rerun Pen</a>
			</div>
			<div class="container">
				<div class="card"></div>
				<div class="card">
					<h1 class="title">로그인</h1>
					<form name="loginForm" method="post" action="user/login"
						target="_parent">
						<div class="input-container">
							<input type="text" id="userId" name="userId" required="required" />
							<label for="Username">ID</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="password" name="password"
								required="required" /> <label for="Password">Password</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button type="submit">
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
					<h1 class="title" style="margin-right: 70px;">JOIN</h1>
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
	<script type="text/javascript">
		var idc, emc, pwc, pc = 0;
		$(function() {
			$('input').focusout(function() {
				$("form div p").remove();
			});
		});
		function checkDuplication() {
			var id = $("#Username").val();
			var url = "/user/checkDuplication?id=" + id;
			request.open("GET", url, true);
			request.onreadystatechange = updatePage;
			request.send(null);
		}

		function updatePage() {

			if (request.readyState == 4) {
				if (request.status == 200) {
					var serverData = request.responseText;
					var displayValue = $.trim(serverData)
					console.log(displayValue);

					var idReg = /^[A-Za-z0-9+]{4,12}$/;

					if (displayValue == "true"
							&& idReg.test($("#Username").val())) {
						$("form div p").remove();

						$($('div')[20]).html("<p>사용 가능 한 아이디 입니다.</p>").css(
								"color", "blue")
						idc = 0;
						return;

					}
					if (!idReg.test($("#Username").val())) {
						$("form div p").remove();

						$($('div')[20]).html(
								"<p>아이디 4~12자리 영문,숫자로 구성 가능합니다.</p>").css(
								"color", "green")
						idc = 2;
						return;
					}
					if (displayValue == "false") {

						$("form div p").remove();
						$($('div')[20]).html("<p>이미 가입 된 아이디 입니다.</p>").css(
								"color", "white")

						$('input')[2].focus();
						idc = 1;
						return;
					}
					idc = 0;
				} else {
					alert("에러 발생 :" + request.status);
				}
			}
		}

		function ef() {
			var email = document.detailForm.email.value;
			$("form div p").remove();
			if (email.indexOf('@') < 1 || email.indexOf('.') == -1) {
				$($('div')[21]).append("<p>이메일 형식이 아닙니다.</p>");
				$('input')[3].focus();
				emc = 1;
				return;
			} else if (email != "") {
				$("form div p").remove();
				$($('div')[21]).append("<p>사용 가능한 이메일 입니다.</p>");
				emc = 0;
				return;
			}
			emc = 0;
			$("form div p").remove();
		}

		function pcc() {

			var pwReg = /^.*(?=^.{4,12}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
			$('form div p').remove();
			if (pwReg.test($("#Password").val())) {
				$("form div p").remove();
				$($('div')[23]).append("<p>사용 가능한 패스워드 입니다.</p>").css('color',
						'blue');
				pc = 0;
				$('input')[4].focus();
				return;
			} else {
				$("form div p").remove();
				$($('div')[23]).append(
						"<p>패스워드는 4~12자리의 숫자와영문,특수문자를 포함 해야함.</p>").css(
						'color', 'green');

				$('input')[4].focus();
				pc = 1;
				return;
			}
			pc = 0;
			$('form div p').remove();
		}

		function pwcc() {
			var pw = document.detailForm.password.value;
			var pw_confirm = document.detailForm.password2.value;
			$('form div p').remove();
			if (pw != pw_confirm) {
				$('form div p').remove();
				$($('div')[25]).append("<p>비밀번호 확인이 일치하지 않습니다.</p>").css(
						'color', 'white');
				$('input')[5].focus();
				pwc = 1;
				return;
			}
			if (pw == pw_confirm && pw != "") {
				$("form div p").remove();
				$($('div')[25]).append("<p>비밀번호가 일치 합니다.</p>");
				pwc = 0;
				return;
			}
			pwc = 0;
			$('form div p').remove();
		}

		function fncAddUser() {
			var id = document.detailForm.userId.value;
			var pw = document.detailForm.password.value;
			var email = document.detailForm.email.value;
			var pw_confirm = document.detailForm.password2.value;

			if (id == null || id.length < 1) {
				idc = 0;
				$("form div p").remove();

				$($('div')[20]).append(

				"<p>아이디는 반드시 입력하셔야 합니다.</p>").css('color', 'blue');

				$('input')[2].focus();
				return;
			}
			$("form div p").remove();

			if (idc == 1) {
				$("form div p").remove();
				$($('div')[20]).html("<p>이미 가입 된 아이디 입니다.</p>").css("color",
						"white")

				$('input')[2].focus();
				return;
			}
			$("form div p").remove();

			if (idc == 2) {
				$("form div p").remove();
				$($('div')[20]).html("<p>아이디 4~12자리 영문,숫자로 구성 가능합니다.</p>").css(
						"color", "green")

				$('input')[2].focus();
				return;
			}
			$("form div p").remove();

			if (email == null || email.length < 1) {
				$("form div p").remove();
				$($('div')[21]).append("<p>이메일은  반드시 입력하셔야 합니다.</p>").css(
						'color', 'blue');
				$('input')[3].focus();
				return;
			}
			$("form div p").remove();
			if (emc == 1) {
				$("form div p").remove();
				$($('div')[21]).append("<p>이메일 형식이 아닙니다.</p>");

				$('input')[3].focus();
				return;
			}
			$("form div p").remove();
			if (pw == null || pw.length < 1) {
				$("form div p").remove();
				$($('div')[23]).append("<p>패스워드는  반드시 입력하셔야 합니다.</p>").css(
						'color', 'blue');

				$('input')[4].focus();
				return;
			}
			$("form div p").remove();

			if (pc == 1) {
				$("form div p").remove();
				$($('div')[23]).append(
						"<p>패스워드는 4~12자리의 숫자와영문,특수문자를 포함 해야함.</p>").css(
						'color', 'green');

				$('input')[4].focus();
				return;
			}
			$("form div p").remove();

			if (pw_confirm == null || pw_confirm.length < 1) {
				$("form div p").remove();
				$($('div')[25]).append(

				"<p>패스워드 확인은  반드시 입력하셔야 합니다.</p>").css('color', 'blue');

				$('input')[5].focus();
				return;
			}
			$('form div p').remove();
			if (pwc == 1) {
				$("form div p").remove();
				$($('div')[25]).append("<p>비밀번호 확인이 일치하지 않습니다.</p>").css(
						'color', 'white');

				$('input')[5].focus();
				return;
			}
			$('form div p').remove();

			alert('회원가입을 축하합니다');

			document.detailForm.action = 'user/addUser';

			document.detailForm.submit();
		}

		$($("input")[2]).keyup(function() {
			checkDuplication();
		});

		$($('input')[3]).keyup(function() {
			ef();
		});

		$($('input')[4]).keyup(function() {
			pcc();
		});

		$($('input')[5]).keyup(function() {
			pwcc();
		});

		$(function() {
			$("button[name='button01']").on("click", function() {
				fncAddUser();
			});
		});
	</script>
</body>
</html>