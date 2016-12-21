<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>

<link rel="stylesheet" href="/css/menubar.css">

<!-- 상단 menu -->
<link rel="stylesheet" href="/css/screen.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="menu-button">
    <span class="close"></span>
  </div>

  <nav class="menubar" style="height: 100px;">
    <div class="posts">   
      <div class="Userprofile">
        <a href="#">
          <img src="/images/uploadFiles/${user.filepath}" >
          ${user.userId}
          
        </a>
      </div>  
      <hr>
<!-- 아티스트 경우 메뉴바  --> 
      <c:if test="${user.artistCode =='1'}">
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
          <hr>
    </c:if> 
<!--ends 아티스트 경우 메뉴바  -->   
    
      <div class="post">
       <a class='ajax1' href="/history.jsp">
          최근 본 동영상
        </a>
      </div>
      <div class="post">
        <a href="#">
          내가 찜한 아티스트
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


<script type="text/javascript"></script>
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

