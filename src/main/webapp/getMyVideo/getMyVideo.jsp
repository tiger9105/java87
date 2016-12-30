<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/getmyvideo.css">
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
          <h2>Video Index</h2>
          <h3 class="captiongray">내가 올린동영상</h3>
        </div>
      </div>
    </div>
  </section>

<c:forEach var="videourl" items="${urllist}" begin="0" end="${fn:length(urllist)}" step="1">

<iframe width="100%" height="400" src="https://www.youtube.com/embed/${videourl.url}" frameborder="0" allowfullscreen></iframe>

</c:forEach>

<!--javascript 모음  -->  
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>

	


    <script>
    </script>
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