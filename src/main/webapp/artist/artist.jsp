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
</head>
 
<body>
<!-- 내정보 슬라이드 -->
<c:import url="/nav/nav.jsp"></c:import>
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
						<li><a href="/artist/listArtist" id="visited">Artist</a>
							<ul>
								<li><a href="portfolioproject.jsp">Artist</a></li>
							</ul></li>
						<li><a href="/video/listVideo">Video</a>
							<ul>
								<li><a href="/video/listVideo">Video</a></li>
							</ul></li>
						<li><a href="/features.jsp">Features</a></li>
						<li><a href="upcontest.jsp">UP contest</a></li>
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
	
	<!-- 아티스트 등록하기 버튼 -->
	<p>
		<div class="container1">
		<c:if test="${user.artistCode=='0'}">
			<span class="pulse-button">register</span>
		</c:if>
		</div>
	</p>
	<!-- ends 아티스트 등록하기 버튼 -->

<!-- artist 장르별 메뉴 -->
	<nav class="genre">
		<ul>
			<li class="current"><a href="#"><span>ALL</span></a></li>
			<li class=""><a href="#"><span>R & B</span></a></li>
			<li class=""><a href="#"><span>힙합 & RAP<span></a></li>
			<li class=""><a href="#"><span>어쿠스틱<span></a></li>
			<li class=""><a href="#"><span>락<span></a></li>
			<li class=""><a href="#"><span>일렉토로닉<span></a></li>
		</ul>
	</nav>
<!--ends artist 장르별 메뉴 -->


<!-- artist list -->
	<section id="team" class="team content-section">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-12">
					<h2>Artists Index</h2>
					<h3 class="captiongray">Artist profile</h3>
				</div>
			</div>
		</div>
	</section>
	

<!-- 반복문으로 artists 뽑아오는 곳(getArtistList) -->
	<c:forEach var="i" begin="0" end="${totalCount/3}" step="1">
		<section id="team" class="team content-section">
			<div class="container">
				<div class="row text-center">
					<div class="container">
						<div class="row">
						
							<c:forEach var="artist" items="${list}" begin="${3*i}" end="${3*i+2}" step="1">
								<div class="col-md-4">
									<div class="team-member">
										<figure> 
											<img src="/images/uploadFiles/${artist.image}" alt="" class="img-responsive">
											<figcaption>		
												<ul>
													<li><i class="fa fa-facebook fa-2x"></i></li>
													<li><i class="fa fa-twitter fa-2x"></i></li>
													<li><i class="fa fa-linkedin fa-2x" id="getArtist_${artist.artistNo }"></i></li>
												</ul>
											</figcaption>
										</figure>
										<h4>${artist.artistName}</h4>
										<p>${artist.genre}</p>
									</div>
									<!-- /.team-member-->
								</div>
								<!-- /.col-md-4 -->
							</c:forEach>

						</div>
						<!-- /.row -->
					</div>
					<!-- /.container -->
	
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container --> 
		</section>
		<!-- /.our-team -->
	</c:forEach>
<!--ends 반복문으로 artists 뽑아오는 곳(getArtistList) -->	
	
	
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	  <script type="text/javascript">
      $('.pulse-button').on("click", function() {
        $.colorbox({
          closeButton : "false",
          fixed : "true",
          iframe : "true",
          href : "/register/register.jsp", 
          width : "600px",
          height : "650px",
          fixed : true,
          scrolling : false        
        }); 
      });
  </script>
	
</body>
</html>