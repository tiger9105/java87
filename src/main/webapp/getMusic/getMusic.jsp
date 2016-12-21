<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--  모달창 -->
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">  
<link rel="stylesheet" href="/css/artist.css">
<link rel="stylesheet" href="/artist/artist.css">
<!-- colorbox창 -->
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<!-- alert창 (등록) -->
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">
<!-- 로고 -->	
<link rel="stylesheet" href="/css/UP/UP.css">
<!-- menubar -->
<link rel="stylesheet" href="/css/menubar.css">
<!-- 상단 menu -->
<link rel="stylesheet" href="/css/screen.css">
<link rel="stylesheet" href="/css/getMusic.css">
<link rel="stylesheet" href="/css/carousel.css">
</head>
<style type="text/css">
#btn{
	margin-top:10px;
	margin-right:200px;
	width: auto;
	border: 2px solid rgba(254, 82, 76, 1);;
	background: #fff;
	padding: 10px 40px;
	float:right;
	color: rgba(254, 82, 76, 1);;
	border-radius: 2px;
	cursor: pointer;
	text-transform: uppercase;
}
</style> 
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
			<c:if test="${user.artistCode == '1'}">
				<div class="post">
					<a href="#">
					아티스트 정보 수정
					</a>
				</div>
				<div class="post">
					<a href="#">
						동영상 올리기
					</a>
				</div>
				<div class="post">
					<a href="#">
						내가 올린 동영상
					</a>
				</div>
				<div class="post">
					<a href="#">
						나의 버스킹 정보
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
<!-- ends 내정보 슬라이드 -->

<!-- 홈페이지 메뉴바 -->
	<div id="header">
		<div class="container">
			
			<!-- UP 로고 
			<div class="retrologo">
				<a href="/index.jsp">Underground Play</a>
			</div>
			ends UP 로고  -->
	
			<div class="mainmenu">
				<div id="mainmenu">
					<ul class="sf-menu">
						<li><a href="/index.jsp">Home</a></li>
						<li><a href="/about.jsp">About</a></li>
						<li><a href="/artist/listArtist" >Artist</a>
							<ul>
								<li><a href="/artist/listArtist" >Artist</a></li>
							</ul></li>
						<li><a href="/video/listVideo" id="visited">Video</a>
							<ul>
								<li><a href="/video/listVideo" >Video</a></li>
							</ul></li>
						<li><a href="/features.jsp">Features</a></li>
						<li><a href="/upcontest.jsp">UP contest</a></li>
						<!-- 로그인 로그아웃 부분  -->
						<c:if test="${user!=null}">
							<li><a href="/user/logout" onclick="FB.logout();"
								style="color: white;">logout</a><br></li>
						</c:if>
						<c:if test="${user==null}">
							<li><a href="/login.jsp" style="color: white;">login</a><br></li>
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

<!--ends 홈페이지 메뉴바 -->

<!--carousel 
	<div class='g-carousel'>
	  <a class='prev' href='#'><</a>
	  <a class='next' href='#'>></a>
	  <ul class='carousel'>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/daybreak.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/hong1.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/hong2.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/lee.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/sungso.jpg'>
	    </li>
	        <li class="thumbnail">
	      <img src='/images/uploadFiles/daybreak.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/hong1.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/hong2.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/lee.jpg'>
	    </li>
	    <li class="thumbnail">
	      <img src='/images/uploadFiles/sungso.jpg'>
	    </li>
	  </ul>
	</div>
ends carousel -->


<!-- video -->
	<div class="container3">
		<div class="title">
			<c:if test="${video.userNumber.artistCode=='0'}">
				<h2>${video.userNumber.userId }</h2>
			</c:if>	
			<c:if test="${video.userNumber.artistCode=='1'}">
				<h2>${video.artist.artistName }</h2>
			</c:if>	
			<h4>${video.title }</h4>
		</div>
		<div class="good">
			<span class="heart"><img src="/images/icon/heart.png">${video.heart}</span>
			<span class="hits"><img src="/images/icon/eye.png"></i>${video.hits }</span>
		</div>
		
		<iframe width="100%" height="400" src="https://www.youtube.com/embed/${video.url }" frameborder="0" allowfullscreen></iframe>	

		<div class="container">
		  <!-- Trigger the modal with a button -->
		  <button type="button" id="btn" data-toggle="modal" data-target="#myModal">가사 보기</button>
		
		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">가사</h4>
		        </div>
		        <div class="modal-body">
		          ${video.text }
		        </div>
		        
		      </div>
		      
		    </div>
		  </div>
		  
		</div>
	</div>
<!-- ends video -->

<!-- javascript 모임 -->
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>
	<script src="javascript/screen.js" type="text/javascript"></script>
	<!-- Tabs -->
	<script src="javascript/tabs.js" type="text/javascript"></script>
	<!-- 모달창 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
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
	
	<!-- carousel javascript -->
	<script>
		(function () {
		    $(document).ready(function () {
		        var $carouselList, $width, currentItem, initLeft, numberOfItems, totalNumberOfItems;
		        initLeft = 40;
		        $width = 800;
		        numberOfItems = 4;
		        $carouselList = $('ul.carousel');
		        totalNumberOfItems = $carouselList.children().size();
		        currentItem = numberOfItems;
		        $('a.next').on('click', function () {
		            var left;
		            left = parseInt($carouselList.css('left'));
		            left = left - 200;
		            if (currentItem === totalNumberOfItems) {
		                left = initLeft;
		                currentItem = numberOfItems;
		            } else {
		                currentItem += 1;
		            }
		            return $carouselList.animate({ 'left': left + 'px' }, 400);
		        });
		        return $('a.prev').on('click', function () {
		            var left;
		            left = parseInt($carouselList.css('left'));
		            left = left + 200;
		            if (currentItem === numberOfItems) {
		                left = initLeft - 200 * (totalNumberOfItems - numberOfItems);
		                currentItem = totalNumberOfItems;
		            } else {
		                currentItem -= 1;
		            }
		            return $carouselList.animate({ 'left': left + 'px' }, 400);
		        });
		    });
		}.call(this));
	</script>
</body>
</html>