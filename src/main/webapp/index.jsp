<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

<!-- CSS ==================================================
================================================== -->

<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/screen.css">
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" />
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
<!-- Favicons ==================================================
================================================== -->

<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

<!-- Google Fonts ==================================================
================================================== -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Content Part ==================================================
================================================== -->
<div id="header">
  <div class="container"> 
    <!-- Header | Logo, Menu
    ==================================여기는 UP ================ -->


   <div class="retrologo"><a href="index.jsp" >Underground  Play</a></div>
 

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
            </ul>
          </li>
          <li><a href="blog.jsp">Blog</a>
            <ul>
              <li><a href="singleblog.jsp">Single Post</a></li>
            </ul>
          </li>
          <li><a href="features.jsp">Features</a></li>
          <li><a href="contact.jsp">MY Page</a></li>
          <!-- 로그인 로그아웃 부분  -->
            <c:if test="${user!=null}">
            <li> <a href="/user/logout" onclick="FB.logout();" style="color: white;">logout</a><br></li>
            </c:if>
            <c:if test="${user==null}">
            <li> <a href="/login.jsp" style="color: white;">login</a><br></li>
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
      <li> <a href="#"><img class="img12" src="images/flexslider/musicback1.jpg"   style="width:1600px; height:500px; overflow: hidden;" /></a>
        <section class="caption">
       
          <h2 class="shadow3">Up contest</h2>
          <p>이번주는 이승기와 창민이가 대결합니다 <a href="http://www.anarieldesign.com/" rel="nofollow"></a></p>
          <a class="button" href="#">지금 바로 보러가기 !</a></section>
       
      </li>
      <li> <img  class="img12"  src="images/flexslider/musicback2.jpg" alt=""  style=" width:1600px; height:500px; overflow: hidden; "/>
        
        <section class="caption" style="text-align: center;">
          <h2 class="shadow3">Best Artist</h2>
          <p>김지희가 현재 1등을 유지하고있어요 <a href="http://www.anarieldesign.com/" rel="nofollow"></a></p>
          <a class="button" href="#">지금 바로 보러가기!</a></section>
      </li>
      <li> <a href="#"><img  class="img12"src="images/flexslider/musicback3.jpg"   style="width:1600px; height:500px; overflow: hidden; " alt="" /></a>
        <section class="caption">
          <h2 class="shadow3">Busking</h2>
          <p>이민옥의 거리공연 어디서하는지  궁금하시죠? <a href="http://www.anarieldesign.com/" rel="nofollow"></a></p>
          <a class="button" href="#">지금 바로 보러가기!</a></section>
      </li>
    </ul>
  </div>
  <!-- flexslider ends here --> 
</section>
<!-- slider ends here --> 
<!-- info Box ==================================================
================================================== -->
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
<!--Latest Photos ==================================================
================================================== -->
<div class="container latest">
  <div class="one_third">
    <figure class="shadow"><a href="#" class="thumb"> <iframe width="300" height="200" src="https://www.youtube.com/embed/tSAJ-iW1GBg"></iframe></a>
      <figcaption> <a href="#">
        <h3 class="heading">데이브레이크</h3>
        </a>
        <p class="bioquote">-좋다-</br>
                                                                              
        </p>
      </figcaption>
    </figure>
  </div>
  <!-- one_third ends here -->
  <div class="one_third">
    <figure class="shadow"><a href="#" class="thumb"><iframe width="300" height="200" src="https://www.youtube.com/embed/r52he_XcBXg" ></iframe></a>
      <figcaption> <a href="#">
        <h3 class="heading">볼빨간 사춘기</h3>
        </a>
        <p class="bioquote">심술</br>
                           </p>
      </figcaption>
    </figure>
  </div>
  <!-- one_third ends here -->
  <div class="one_third lastcolumn">
    <figure class="shadow"><a href="#" class="thumb"><iframe width="300" height="200" src="https://www.youtube.com/embed/UeCTNhP-E_c" ></iframe></a>
      <figcaption> <a href="#">
        <h3 class="heading">혁 오</h3>
        </a>
        <p class="bioquote">위잉위잉 </br>
                     </p>
      </figcaption>
    </figure>
  </div>
  <!-- one_third ends here --> 
  <center><h3><a href="http://192.168.0.77/UI01/index.jsp">더보기</a></h3></center>
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
  <img src="artist/10cm.jpg" alt="Avatar" style="width:100%">
  <div class="container12">
    <h4><b>이승기</b></h4> 
    <p>장소:</p><strong>홍대3번출구</strong>
    <p>시간:</p><strong>홍대3번출구</strong>
    <p>날짜:</p><strong>홍대3번출구</strong> 
  </div>
  </div>
  </div>
  
 <div class="one_third">
 <div class="card123" >
    <img src="artist/10cm.jpg" alt="Avatar" style="width:100%">
  <div class="container12" >
    <h4><b>이승기</b></h4> 
    <p>장소:</p><strong>홍대3번출구</strong>
    <p>시간:</p><strong>홍대3번출구</strong>
    <p>날짜:</p><strong>홍대3번출구</strong> 
  </div>

</div>
</div>

<div class="one_third lastcolumn">
 <div class="card123" >
    <img src="artist/10cm.jpg" alt="Avatar" style="width:100%">
  <div class="container12" >
    <h4><b>이승기</b></h4> 
    <p>장소:</p><strong>홍대3번출구</strong>
    <p>시간:</p><strong>홍대3번출구</strong>
    <p>날짜:</p><strong>홍대3번출구</strong> 
  </div>
</div>
</div>
<div class="one_third">
<div class="card123">
  <img src="artist/10cm.jpg" alt="Avatar" style="width:100%">
  <div class="container12">
    <h4><b>이승기</b></h4> 
    <p>장소:</p><strong>홍대3번출구</strong>
    <p>시간:</p><strong>홍대3번출구</strong>
    <p>날짜:</p><strong>홍대3번출구</strong> 
  </div>
  </div>
  </div>
  
 <div class="one_third">
 <div class="card123" >
    <img src="artist/10cm.jpg" alt="Avatar" style="width:100%">
  <div class="container12" >
    <h4><b>이승기</b></h4> 
    <p>장소:</p><strong>홍대3번출구</strong>
    <p>시간:</p><strong>홍대3번출구</strong>
    <p>날짜:</p><strong>홍대3번출구</strong> 
  </div>

</div>
</div>

<div class="one_third lastcolumn">
 <div class="card123" >
    <img src="artist/10cm.jpg" alt="Avatar" style="width:100%">
  <div class="container12" >
    <h4><b>이승기</b></h4> 
    <p>장소:</p><strong>홍대3번출구</strong>
    <p>시간:</p><strong>홍대3번출구</strong>
    <p>날짜:</p><strong>홍대3번출구</strong> 
  </div>




</div>
</div>

 <center><h3><a href="http://192.168.0.77/index.jsp">더보기</a></h3></center>
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
        <li><a href="#"><img src="images/socials/twitter.png" alt="" /></a></li>
        <li><a href="#"><img src="images/socials/facebook.png" alt="" /></a></li>
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
      <p><span class="orange"><strong>주소:</strong></span> <br>
       비트캠프</p>
      <p><span class="orange"><strong>Phone:</strong></span> <br>
       02-484-5105<br>
      </p>
      <p><span class="orange"><strong>Email:</strong></span> <br>
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
      <p>이페지를 들어와주셔서 감사합니다. </p>
      <p>방문해주셔서감사해욧 ^^  자바라기일동</p>
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
<script src="javascript/jquery.flexslider-min.js" type="text/javascript"></script> 
<!-- Modernizr --> 
<script type="text/javascript" src="javascript/modernizr.custom.29473.js"></script>
</body>
</html>