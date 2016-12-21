<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- menubar -->
<link rel="stylesheet" href="/css/menubar.css">
<!-- colorbox창 -->
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<!-- alert창 (등록) -->
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">
</head>
<body>
<!-- 내정보 슬라이드 -->
	<div class="menu-button">
		<span class="close"></span>
	</div>

	<nav class="menubar">
		<div class="posts">		
			<div class="Userprofile">
				<a href="#">
					<img src="/images/uploadFiles/${user.filepath}" >
					${user.userId}
				</a>
			</div>	
			<hr>
<!-- 아티스트 경우 메뉴바	-->	
			<c:if test="${user.artistCode =='1'}">
  				<div class="post">
					<a href="#" class="updateArtist">
						아티스트 정보 수정
					</a>
				</div> 
				<div class="post">
					<a href="#" class="videoRegister">
						동영상 올리기
					</a>
				</div>
				<div class="post">
					<a href="#">
						내가 올린 동영상
					</a>
				</div>
					<hr>
		</c:if> 
<!--ends 아티스트 경우 메뉴바	-->		
		
			<div class="post">
				<a href="#">
					최근 본 동영상
				</a>
			</div>
			<div class="post">
				<a href="#">
					내가 찜한 아티스트
				</a>
			</div>
			<div class="post">
				<a href="#">
					버스킹 찜 목록
				</a>
			</div>
			<div class="post">
				<a class='ajax'  href="/updateUser/updateUser.jsp">
				내 정보 수정
				</a>
			</div>

		</div>	
	</nav>
	
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>
	
<!-- 메뉴슬라이드 자바스크립트  -->
	<script>
		$( document ).ready(function() {
			$('.menu-button, .overlay').click(function() {
				$('body').toggleClass('overflow-hidden');
				$('.menu-button').toggleClass('open').toggleClass('close');
				$('nav header').toggleClass('open');
				$('nav .posts').toggleClass('open');
				$('.overlay').fadeToggle();
			});
		});
	</script>
	
<!-- 아티스트 수정 창 -->
	<script type="text/javascript">
	    $('.updateArtist').on("click", function() {
	    	$.colorbox({
	        closeButton : "false",
	        fixed : "true",
	        iframe : "true",
	        href : "/artist/getArtist1", 
	        width : "600px",
	        height : "650px",
	        scrolling : false	       
	      }); 
	    });
	</script>
	
<!-- 회원 수정 창 -->
 	<script>
   		$(".ajax").colorbox({iframe:true, width:"40%", height:"650px"});
   	</script>			
	
	<script type="text/javascript">
	    $('.videoRegister').on("click", function() {
	    	$.colorbox({
	        closeButton : "false",
	        fixed : "true",
	        iframe : "true",
	        href : "/register/musicRegister.jsp", 
	        width : "600px",
	        height : "650px",
	        scrolling : true	       
	      }); 
	    });
	</script>
</body>
</html>