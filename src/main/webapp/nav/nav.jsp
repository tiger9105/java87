<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>

<link rel="stylesheet" href="/css/menubar.css">
<!-- colorbox창 -->
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">
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
          <a href="#" class="updateArtist">
            아티스트 정보 수정
          </a>
        </div> 
        <div class="post">
          <a href="#" class="videoRegister">
            동영상 올리기
          </a>
        </div>
              <hr>
    </c:if> 
<!--ends 아티스트 경우 메뉴바  -->  
      <div class="post">
          <a id="myvideo" href="#">
            내가 올린 동영상
          </a>
        </div>
      <div class="post">
       <a id='ajax1'>
          최근 본 동영상
        </a>
      </div>
    <div class="post">
        <a id="getLikeArtistList">
              내가 찜한 아티스트
        </a>
      </div>
      <div class="post">
        <a id="my">
       	 내 정보 수정
        </a>
      </div>
      <c:if test="${user.userId=='admin'}">
       <div class="post">
        <a class='makeseason'  href="/season/season.jsp">
        관리자여서시즌만들기
        </a>
      </div>
      </c:if>

    </div>  
  </nav>



<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
  <script src="/javascript/colorbox/jquery.colorbox.js"></script>
    <script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>

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


<!-- 동영상 올리기 -->  
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


<!-- 내가 찜한 아티스트 -->
  <script>
     $("#getLikeArtistList").on("click",function(){
         $.colorbox({
           iframe:true,
           href:"/artist/getLikeArtistList",
           width:"700px",
           height:"600px",
           fixed: true
           });
        });

  </script>




    <script>
     
       $(".makeseason").colorbox({iframe:true, width:"40%", height:"300px"});
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
  
    <!-- 최근 동영상 창 -->
  <script type="text/javascript">
      $('#ajax1').on("click", function() {
        $.colorbox({
          closeButton : "false",
          fixed : "true",
          iframe : "true",
          href : "/history.jsp", 
          width : "600px",
          height : "650px",
               
        }); 
      });
  </script> 
  
      <!-- 내 수정 창 -->
  <script type="text/javascript">
      $('#my').on("click", function() {
        $.colorbox({
          closeButton : "false",
          fixed : "true",
          iframe : "true",
          href : "/updateUser/updateUser.jsp", 
          width : "600px",
          height : "650px",
          scrolling : false        
        }); 
      });
  </script> 
  <!-- 내가 올린동영상 -->
  <script type="text/javascript">
  $('#myvideo').on("click", function() {
	     $.colorbox({
        closeButton : "false",
        fixed : "true",
        iframe : "true",
        href : "/user/myvideo", 
        width : "600px",
        height : "650px"      
      }); 
    });
  </script>  


</body>
</html>

