<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE>
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
  
  <section id="team" class="team content-section">
      <div class="container">
        <div class="row text-center">
          <div class="container">
            <div class="row">
            
              <c:forEach var="artist" items="${artistList}">
                <div class="col-md-6 team-member">
                  
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

<!--javascript 모음  -->  
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>
	<script src="javascript/screen.js" type="text/javascript"></script>
	<!-- Tabs -->
	<script src="javascript/tabs.js" type="text/javascript"></script>
	
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
	
	
	
</body>
</html>