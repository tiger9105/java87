<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs ==================================================  6 
================================================== -->

<meta charset="utf-8">
<title>Freebix Responsive Site Template</title>

<meta name="description" content="Place to put your description text">
<meta name="author" content="">
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

<!-- Mobile Specific Metas ================================================== 
================================================== -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

<!-- CSS ==================================================
================================================== -->
<link rel="stylesheet"
	href="node_modules/sweetalert/dist/sweetalert.css">
<link rel="stylesheet" href="css/colorbox/colorbox.css">
<!-- 컬러박스  -->
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/screen.css">
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- 새로 추가된 메인 UI로고부분   -->
<link rel="stylesheet" href="css/UP/UP.css">
<!-- 메인문짜면서 추가된부분 버스킹 공고 부분  -->
<link rel="stylesheet" href="css/main/main.css">
<link rel="stylesheet"
	href="node_modules/bootstrap/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="node_modules/bootstrap/dist/css/bootstrap-theme.min.css">
<!-- 여기까지 버스킹 공고 부분 부트스트랩과 css를 추가했다  -->

<link rel="stylesheet" href="css/menuslide/menuslide.css">
<!-- 메뉴 슬라이드 부분  -->
<!-- Favicons ==================================================
================================================== -->

<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/apple-touch-icon-114x114.png">

<!-- Google Fonts ==================================================
================================================== -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div id="main" style="padding-top: 0px; padding-bottom: 0px;">
		<span
			style="font-size: 30px; cursor: pointer; color: white; float: left; padding-top: 10px"
			onclick="openNav()">&#9776; open</span>
	</div>

	<!--Content Part ==================================================
================================================== -->
	<div id="header">
		<div class="container">
			<!-- Header | Logo, Menu
    ==================================여기는 UP ================ -->
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a class='youtube' id="player" name="video" href="index.jsp"
					onclick="sucess()"> 최근본동영상 </a> <a href="#">내가찜한 아티스트</a> <a
					href="#">버스킹찜목록</a> <a class='inline' href="#inline_content">내정보수정</a>
			</div>
			<div class="retrologo">
				<a href="index.jsp">Underground Play</a>
			</div>


			<!-- ㄴㅇ러미ㅏㄴㅇ러ㅏ민ㅇ러;ㅁㄴㅇ러ㅏㅣㅁㄴㅇ러ㅏㅣ;ㅁㄴㅇ럼ㄴ;ㅣㅇ러ㅣㅁ -->
			<!-- 여기는 UP 로고  -->
			<div class="mainmenu">
				<div id="mainmenu">
					<ul class="sf-menu">
						<li><a href="index.jsp" id="visited">Home</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="artist.jsp">Artist</a>
							<ul>
								<li><a href="portfolioproject.jsp">Portfolio Project</a></li>
							</ul></li>
						<li><a href="blog.jsp">Blog</a>
							<ul>
								<li><a href="singleblog.jsp">Single Post</a></li>
							</ul></li>
						<li><a href="features.jsp">Features</a></li>
						<li><a href="contact.jsp">MY Page</a></li>
						<!-- 로그인 로그아웃 부분  -->
						<c:if test="${user!=null}">
							<li><a href="user/logout" onclick="FB.logout();"
								style="color: white;">logout</a><br></li>
						</c:if>
						<c:if test="${user==null}">
							<li><a href="login.jsp" style="color: white;">login</a><br></li>
						</c:if>
					</ul>
				</div>
				<!-- mainmenu ends here -->

				<!-- Responsive Menu -->
				<form id="responsive-menu" action="#" method="post">
					<select>
						<option value="">메뉴</option>
						<option value="index.jsp">Home</option>
						<option value="about.jsp">About</option>
						<option value="artist.jsp">Artist</option>
						<option value="portfolioproject.jsp">Portfolio Project</option>
						<option value="blog.jsp">asdsa</option>
						<option value="singleblog.jsp">Busking</option>
						<option value="features.jsp">Features</option>
						<option value="contact.jsp">My page</option>
					</select>
				</form>
			</div>
			<!-- mainmenu ends here -->
		</div>
		<!-- container ends here -->
	</div>
	<!-- header ends here -->
	<!-- Slider ==================================================
================================================== -->
	<section class="slider">
		<div class="flexslider">
			<ul class="slides">
				<li><a href="#"><img class="img12"
						src="images/flexslider/musicback1.jpg"
						style="width: 1600px; height: 500px; overflow: hidden;" /></a>
					<section class="caption">

						<h2 class="shadow3">Up contest</h2>
						<p>
							이번주는 이승기와 창민이가 대결합니다 <a href="http://www.anarieldesign.com/"
								rel="nofollow"></a>
						</p>
						<a class="button" href="#">지금 바로 보러가기 !</a>
					</section></li>
				<li><img class="img12" src="images/flexslider/musicback2.jpg"
					alt="" style="width: 1600px; height: 500px; overflow: hidden;" />

					<section class="caption" style="text-align: center;">
						<h2 class="shadow3">Best Artist</h2>
						<p>
							김지희가 현재 1등을 유지하고있어요 <a href="http://www.anarieldesign.com/"
								rel="nofollow"></a>
						</p>
						<a class="button" href="#">지금 바로 보러가기!</a>
					</section></li>
				<li><a href="#"><img class="img12"
						src="images/flexslider/musicback3.jpg"
						style="width: 1600px; height: 500px; overflow: hidden;" alt="" /></a>
					<section class="caption">
						<h2 class="shadow3">Busking</h2>
						<p>
							이민옥의 거리공연 어디서하는지 궁금하시죠? <a href="http://www.anarieldesign.com/"
								rel="nofollow"></a>
						</p>
						<a class="button" href="#">지금 바로 보러가기!</a>
					</section></li>
			</ul>
		</div>
		<!-- flexslider ends here -->
	</section>
	<!-- slider ends here -->
	<!-- info Box ==================================================================================================== -->
	<div class="infobox">
		<div class="container info">
			<header>
				<h1>This week Top3</h1>
				<!--   주석처리 한부분 
      <p class="infop">- Free, fully <span class="pink">responsive HTML</span> site template made by <a href="http://www.anarieldesign.com/" rel="nofollow"><strong>Anariel Design</strong></a> -</p>
      -->
			</header>
			<hr class="separator">
		</div>
		<!-- container ends here -->
	</div>
	<!-- infobox ends here -->
	<!--Latest Photos ==================================================================================================== -->
	<div class="container latest">
		<div class="one_third">
			<figure class="shadow">
				<a href="#" class="thumb"><iframe id="player1"
						type="text/html" width="300" height="200"
						src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe></a>
				<figcaption>
					<a href="#">
						<h3 class="heading">데이브레이크</h3>
					</a>
					<p class="bioquote">
						-좋다-</br>

					</p>
				</figcaption>
			</figure>
		</div>
		<!-- one_third ends here -->
		<div class="one_third">
			<figure class="shadow">
				<a href="#" class="thumb"><iframe id="player2" width="300"
						height="200"
						src="https://www.youtube.com/embed/r52he_XcBXg?enablejsapi=1"></iframe></a>
				<figcaption>
					<a href="#">
						<h3 class="heading">볼빨간 사춘기</h3>
					</a>
					<p class="bioquote">
						심술</br>
					</p>
				</figcaption>
			</figure>
		</div>
		<!-- one_third ends here -->
		<div class="one_third lastcolumn">
			<figure class="shadow">
				<a href="#" class="thumb"><iframe id="player3" width="300"
						height="200"
						src="https://www.youtube.com/embed/UeCTNhP-E_c?enablejsapi=1"></iframe></a>
				<figcaption>
					<a href="#">
						<h3 class="heading">혁 오</h3>
					</a>
					<p class="bioquote">
						위잉위잉 </br>
					</p>
				</figcaption>
			</figure>
		</div>
		<!-- one_third ends here -->
		<center>
			<h3>
				<a href="http://192.168.0.77/UI01/index.jsp">더보기</a>
			</h3>
		</center>
	</div>
	<!-- end container -->
	<!--Heading Box ==================================================
================================================== -->
	<div class="headingblock">
		<div class="container heading">
			<header>
				<h2>이번주 버스킹정보를 확인하세요!</h2>
				<!--  
      <p>- Free, fully <span class="pink">responsive HTML</span> site template made by <a href="http://www.anarieldesign.com/" rel="nofollow"><strong>Anariel Design</strong></a> -</p>
      -->
			</header>
		</div>
		<!-- container ends here -->
		<hr class="separator1">
	</div>
	<!-- headingblock ends here -->
	<!-- Latest News & Faq ==================================================
================================================== -->
	<div class="container latest">
		<div class="one_third">
			<div class="card123">
				<img src="artist/10cm.jpg" alt="Avatar" style="width: 100%">
				<div class="container12">
					<h4>
						<b>이승기</b>
					</h4>
					<p>장소:</p>
					<strong>홍대3번출구</strong>
					<p>시간:</p>
					<strong>홍대3번출구</strong>
					<p>날짜:</p>
					<strong>홍대3번출구</strong>
				</div>
			</div>
		</div>

		<div class="one_third">
			<div class="card123">
				<img src="artist/10cm.jpg" alt="Avatar" style="width: 100%">
				<div class="container12">
					<h4>
						<b>이승기</b>
					</h4>
					<p>장소:</p>
					<strong>홍대3번출구</strong>
					<p>시간:</p>
					<strong>홍대3번출구</strong>
					<p>날짜:</p>
					<strong>홍대3번출구</strong>
				</div>

			</div>
		</div>

		<div class="one_third lastcolumn">
			<div class="card123">
				<img src="artist/10cm.jpg" alt="Avatar" style="width: 100%">
				<div class="container12">
					<h4>
						<b>이승기</b>
					</h4>
					<p>장소:</p>
					<strong>홍대3번출구</strong>
					<p>시간:</p>
					<strong>홍대3번출구</strong>
					<p>날짜:</p>
					<strong>홍대3번출구</strong>
				</div>
			</div>
		</div>
		<div class="one_third">
			<div class="card123">
				<img src="artist/10cm.jpg" alt="Avatar" style="width: 100%">
				<div class="container12">
					<h4>
						<b>이승기</b>
					</h4>
					<p>장소:</p>
					<strong>홍대3번출구</strong>
					<p>시간:</p>
					<strong>홍대3번출구</strong>
					<p>날짜:</p>
					<strong>홍대3번출구</strong>
				</div>
			</div>
		</div>

		<div class="one_third">
			<div class="card123">
				<img src="artist/10cm.jpg" alt="Avatar" style="width: 100%">
				<div class="container12">
					<h4>
						<b>이승기</b>
					</h4>
					<p>장소:</p>
					<strong>홍대3번출구</strong>
					<p>시간:</p>
					<strong>홍대3번출구</strong>
					<p>날짜:</p>
					<strong>홍대3번출구</strong>
				</div>

			</div>
		</div>

		<div class="one_third lastcolumn">
			<div class="card123">
				<img src="artist/10cm.jpg" alt="Avatar" style="width: 100%">
				<div class="container12">
					<h4>
						<b>이승기</b>
					</h4>
					<p>장소:</p>
					<strong>홍대3번출구</strong>
					<p>시간:</p>
					<strong>홍대3번출구</strong>
					<p>날짜:</p>
					<strong>홍대3번출구</strong>
				</div>




			</div>
		</div>

		<center>
			<h3>
				<a href="http://192.168.0.77/index.jsp">더보기</a>
			</h3>
		</center>
	</div>

	<!-- end container -->
	<!-- Socialize ==================================================
================================================== -->
	<hr class="separator2">
	<div class="socialsblock">
		<div class="container socialize">
			<h3>공유하기★</h3>
			<section class="socials">
				<ul class="socials">
					<li><a href="#"><img src="images/socials/twitter.png"
							alt="" /></a></li>
					<li><a href="#"><img src="images/socials/facebook.png"
							alt="" /></a></li>
				</ul>
			</section>
		</div>
		<!-- container ends here -->
	</div>
	<!-- socialsblock ends here -->
	<!-- Footer ==================================================
================================================== -->
	<div class="footer">
		<div class="container">
			<div class="one_fourth">
				<h3>정보를 알고싶어요?</h3>
				<p>
					<span class="orange"><strong>주소:</strong></span> <br> 비트캠프
				</p>
				<p>
					<span class="orange"><strong>Phone:</strong></span> <br>
					02-484-5105<br>
				</p>
				<p>
					<span class="orange"><strong>Email:</strong></span> <br>
					kimjihee02@naver.com<br>
				</p>
			</div>
			<!-- four columns ends here -->
			<div class="one_fourth">
				<h3>메뉴</h3>
				<ul>
					<li><a href="#" title="">Home</a></li>
					<li><a href="#" class="">소개하기 </a></li>
					<li><a href="#" class="">Up contest</a></li>
					<li><a href="#" class="">아티스트</a></li>
					<li><a href="#" class="">버스킹공고</a></li>
				</ul>
			</div>
			<!-- four columns ends here -->
			<div class="one_fourth">
				<h3>만든기간</h3>
				<ul>
					<li><a href="#" class="">2016.11</a></li>
					<li><a href="#" class="">2016.12</a></li>
					<li><a href="#" class="">2017.01</a></li>
				</ul>
			</div>
			<!-- four columns ends here -->
			<div class="one_fourth lastcolumn">
				<h3>About</h3>
				<p>이페지를 들어와주셔서 감사합니다.</p>
				<p>방문해주셔서감사해욧 ^^ 자바라기일동</p>
				<p>
					<a class='youtube' id="youtube1" name="video" href="ab"></a>
				</p>
				<p>
					<a class='youtube' id="youtube2" name="video" href="ab"></a>
				</p>
				<p>
					<a class='youtube' id="youtube3" name="video" href="ab"></a>
				</p>

				<div style='display: none'>
					<div id='inline_content' style='padding: 10px; background: #fff;'>
						    <form id="form">
      <h1 id="h1">내 정보 수정 </h1>
      <div class="control">
      <input type="text" placeholder="User ID"/>
      </div>
      <div class="control">
      <input type="text" placeholder="PASSWORD "/>
      </div>
      <div class="control">
      <input type="text" placeholder="User Email" />
      </div>

        <div class="filebox bs3-primary preview-image">
    <input class="upload-name" value="PROFILE" disabled="disabled"
      > <label for="input_file">프로필사진 업로드 </label> <input
      type="file" id="input_file" name="uploadfile"class="upload-hidden">
  </div>
      
      <div class="control submit">
      <span><button id="button"> 수정하기</button></span>
      <span><button id="button"> 취소</button></span>
      </div>
    </form>


					</div>
				</div>


			</div>
			<!-- four columns ends here -->
		</div>
		<!-- container ends here -->
	</div>
	<!-- footer ends here -->
	<!-- Copyright ==================================================
================================================== -->
	<div id="copyright">
		<div class="container">
			<p class="copyright">&copy; 2016</p>
		</div>
		<!-- container ends here -->
	</div>
	<!-- copyright ends here -->
	<!-- End Document
================================================== -->
	<!-- Scripts ==================================================

================================================== -->
	<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script>

	<script src="javascript/cookie/cookie.js"></script>
	<script src="javascript/colorbox/jquery.colorbox.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script src="javascript/colorbox/jquery.colorbox.js"></script>

	<script src="javascript/facebookjs/facebooklogout.js"></script>
	<!-- 로그아웃버튼  -->
	<script src="javascript/menusliderjs/menuslide.js"></script>
	<!-- 메뉴 슬라이드 부분 자바스크립트  -->

	<!-- Main js files -->
	<script src="javascript/screen.js" type="text/javascript"></script>
	<!-- Tabs -->
	<script src="javascript/tabs.js" type="text/javascript"></script>
	<!-- Include prettyPhoto -->
	<script src="javascript/jquery.prettyPhoto.js" type="text/javascript"></script>
	<!-- Include Superfish -->
	<script src="javascript/superfish.js" type="text/javascript"></script>
	<script src="javascript/hoverIntent.js" type="text/javascript"></script>
	<!-- Flexslider -->
	<script src="javascript/jquery.flexslider-min.js"
		type="text/javascript"></script>
	<!-- Modernizr -->
	<script type="text/javascript"
		src="javascript/modernizr.custom.29473.js"></script>

	<script src="node_modules/sweetalert/dist/sweetalert.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		/////////////////////////////////////////////////////////////여기는 최근본 동영상 자바스크립트 
		var player1;
		var player2;
		var player3;
		var youtubeuri = new Array();
		function onYouTubeIframeAPIReady() {
			$('iframe').each(function(i, e) {
				if ($(e).attr('id') == 'player1') {
					player1 = new YT.Player($(e).attr('id'), {
						events : {
							'onStateChange' : onPlayerStateChange
						}
					});

				}//end if

				if ($(e).attr('id') == 'player2') {
					player2 = new YT.Player($(e).attr('id'), {
						events : {
							'onStateChange' : onPlayerStateChange2
						}
					});

				}//end if

				if ($(e).attr('id') == 'player3') {
					player3 = new YT.Player($(e).attr('id'), {
						events : {
							'onStateChange' : onPlayerStateChange3
						}
					});

				}//end if
			});//end each function
		}//end function
		function onPlayerStateChange(event) {

			switch (event.data) {
			case -1:
				youtubeuri.push('https://www.youtube.com/embed/tSAJ-iW1GBg');
				console.log(($(player1.getIframe()).attr('src')));
				$.cookie('uri', ($(player1.getIframe()).attr('src')), {
					path : '/index.jsp',
					domain : 'index.jsp'
				});

				break;
			case 0:
				record('video ended');
				break;
			case 1:

				break;
			case 2:
				break;
			}
		}
		////////////
		function onPlayerStateChange2(event) {
			console.log(event.data);
			switch (event.data) {
			case -1:
				youtubeuri.push('https://www.youtube.com/embed/r52he_XcBXg');
				console.log(($(player2.getIframe()).attr('src')));
				$.cookie('uri1', ($(player2.getIframe()).attr('src')), {
					path : '/index.jsp',
					domain : 'index.jsp'
				});

				break;
			case 0:

				break;
			case 1:

				break;
			case 2:
				break;
			}
		}
		//////////////////
		function onPlayerStateChange3(event) {
			console.log(event.data);
			switch (event.data) {
			case -1:
				youtubeuri.push('https://www.youtube.com/embed/UeCTNhP-E_c');
				console.log(($(player3.getIframe()).attr('src')));
				$.cookie('uri2', ($(player3.getIframe()).attr('src')), {
					path : '/index.jsp',
					domain : 'index.jsp'
				});

				break;
			case 0:

				break;
			case 1:

				break;
			case 2:
				break;
			}
		}
		////////////////////////////////////////////////////////////////////
		function sucess() {
			///1번 
			console.log('클릭 이벤트 처음 시작부분 ㅇㄴㄻㄴㅇㄻㄴㅇㅁㄴㅇㄹ')
			var check = false;
			var abc = new Array();
			if (youtubeuri.length != 0) {
				for (var i = 0; i < youtubeuri.length; i++) {
					abc.push(youtubeuri[i]); //새로운 배열에다가 다시 null이 아닌것만 넣어줌 
					console.log('여기 안들어오나?ㅁㄴㅇ리ㅏㅁㄴ이럼ㄴ이런ㅇ미ㅏㅓㅁ니ㅏ럼나ㅣㅁ널');
					document.getElementsByName('video')[i].setAttribute("href",
							youtubeuri[i]);
					// document.getElementsByName('video')[i].setAttribute("href",abc[i]);  
					// console.log($('a').attr("href")+'여기 제대로 값이 전달이 되었나');
					check = true;
				}
				if (check == true) {
					console.log('여기잘들어오나?');
					console.log(($("a[href='ab']")).remove());
				}
			} else {
				alert('최신본 동영상이 없어요.');

				location.href = "index.jsp";
			}
			/* 
			for(var j=0;j<(def.length);j++){
			 console.log('여기는 다시 넣어주는 부분');
			 console.log(def.length);
			 console.log(def[j]);
			  if(document.getElementsByName('video')[j].getAttribute("href")=='ab'){
			   document.getElementsByName('video')[j].setAttribute("href", def[j]);
			 }
			}
			if(check==true){
			          console.log('여기잘들어오나?');
			          console.log(($("a[href='ab']")).remove());
			} */
		}// 이벤트 닫음 
		$(".group3").colorbox({
			rel : 'group3',
			transition : "none",
			width : "75%",
			height : "75%"
		});
		$(".youtube").colorbox({
			rel : 'group3',
			iframe : true,
			innerWidth : "75%",
			innerHeight : "75%"
		});

		
		
		
		
		$(".inline").colorbox({
			inline : true,
			width : "50%"
		});//내정보수정때문에 쓴것
		$(".ajax").colorbox(); //내정보수정때문에 쓴것
		/////////////////////////////////////////////////////////////여기는 최근본 동영상 자바스크립트 

		////////////////여기는 내정보 수정 
		$(document)
				.ready(
						function() {
							var fileTarget = $('.filebox .upload-hidden');

							fileTarget.on('change', function() {
								if (window.FileReader) {
									// 파일명 추출
									var filename = $(this)[0].files[0].name;
								}

								else {
									// Old IE 파일명 추출
									var filename = $(this).val().split('/')
											.pop().split('\\').pop();
								}
								;

								$(this).siblings('.upload-name').val(filename);
							});

							//preview image 
							var imgTarget = $('.preview-image .upload-hidden');

							imgTarget
									.on(
											'change',
											function() {
												var parent = $(this).parent();
												parent.children(
														'.upload-display')
														.remove();

												if (window.FileReader) {
													//image 파일만
													if (!$(this)[0].files[0].type
															.match(/image\//))
														return;

													var reader = new FileReader();
													reader.onload = function(e) {
														var src = e.target.result;
														parent
																.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
													}
													reader
															.readAsDataURL($(this)[0].files[0]);
												}

												else {
													$(this)[0].select();
													$(this)[0].blur();
													var imgSrc = document.selection
															.createRange().text;
													parent
															.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

													var img = $(this).siblings(
															'.upload-display')
															.find('img');
													img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""
															+ imgSrc + "\")";
												}
											});
						});
		///////////////여기는 내정보 수정
		////////////////  여기도 내정보 수정
		$(document)
				.ready(
						function() {
							$(".drop .option")
									.click(
											function() {
												var val = $(this).attr(
														"data-value"), $drop = $(".drop"), prevActive = $(
														".drop .option.active")
														.attr("data-value"), options = $(".drop .option").length;
												$drop.find(".option.active")
														.addClass("mini-hack");
												$drop.toggleClass("visible");
												$drop.removeClass("withBG");
												$(this).css("top");
												$drop.toggleClass("opacity");
												$(".mini-hack").removeClass(
														"mini-hack");
												if ($drop.hasClass("visible")) {
													setTimeout(
															function() {
																$drop
																		.addClass("withBG");
															},
															400 + options * 100);
												}
												triggerAnimation();
												if (val !== "placeholder"
														|| prevActive === "placeholder") {
													$(".drop .option")
															.removeClass(
																	"active");
													$(this).addClass("active");
												}
												;
											});

							function triggerAnimation() {
								var finalWidth = $(".drop").hasClass("visible") ? 22
										: 20;
								$(".drop").css("width", "24em");
								setTimeout(function() {
									$(".drop").css("width", finalWidth + "em");
								}, 400);
							}
						});

		/////////여기도 내정보 수정
	</script>
</body>
</html>