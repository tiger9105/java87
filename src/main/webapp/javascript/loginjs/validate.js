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