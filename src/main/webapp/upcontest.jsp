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

<!-- Basic Page Needs ================================================== 
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

<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/skeleton.css">
<link rel="stylesheet" href="/css/screen.css">
<link rel="stylesheet" href="/css/prettyPhoto.css" type="text/css" media="screen" />

<!-- 새로 추가된 메인 UI로고부분   -->
<link rel="stylesheet" href="/css/UP/UP.css">
<!-- Favicons ==================================================
================================================== -->

<link rel="shortcut icon" href="/images/favicon.png">
<link rel="apple-touch-icon" href="/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="/images/apple-touch-icon-114x114.png">

<!-- Google Fonts ==================================================
================================================== -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
</head>
<body>
<c:import url="/nav/nav.jsp"></c:import>


<!--Content Part ==================================================
================================================== -->
<div id="header">
  <div class="container"> 
    <!-- Header | Logo, Menu
    ================================================== -->
   
   <div class="retrologo"><a href="index.jsp" style="font-size: 50px">Underground  Play</a></div>
    <!-- ㅁㄴㅇㅁ니ㅏㅁㄴ어미ㅏㄴ어ㅣㅁㄴㅇ -->
    <div class="mainmenu">
      <div id="mainmenu">
        <ul class="sf-menu">
          <li><a href="/index.jsp">Home</a></li>
          <li><a href="/about.jsp">About</a></li>
          <li><a href="portfolio.jsp">Portfolio</a>
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
             <li><a href="/upcontest.jsp">UP Contest</a></li>
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
          <option value="">Navigation</option>
          <option value="index.jsp">Home</option>
          <option value="about.jsp">About</option>
          <option value="portfolio.jsp">Portfolio</option>
          <option value="portfolioproject.jsp">Portfolio Project</option>
          <option value="blog.jsp">Blog</option>
          <option value="singleblog.jsp">Single Post</option>
          <option value="features.jsp">Features</option>
          <option value="upcontest.jsp">UP contest</option>
        </select>
      </form>
    </div>
    <!-- mainmenu ends here --> 
  </div>
  <!-- container ends here --> 
</div>
<!-- header ends here --> 
<!--Breadcrumbs ==================================================
================================================== -->
<div class="breadcrumbs">
  <div class="container" style="text-align: center;">
    <header>
   
      <h1>UP contest</h1>

    </header>
  </div>
  <!-- container ends here -->
  <hr class="separator1">
  
</div>
<!-- breadcrumbs ends here --> 
<!-- Contact Content Part - GoogleMap ==================================================
================================================== -->














<!-- Contact Content Part - Contact Form ==================================================
================================================== -->

<div class="blankSeparator"></div>

<!-- Socialize ==================================================
================================================== -->
<hr class="separator2">
<div class="socialsblock">
  <div class="container socialize">
    <h3>Socialize with us!</h3>
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
    <p class="copyright">&copy; Copyright 2013. &quot;Freebix&quot; by <a href="http://www.anarieldesign.com/" rel="nofollow">Anariel Design</a>. All rights reserved.</p>
  </div>
  <!-- container ends here --> 
</div>
<!-- copyright ends here --> 
<!-- End Document
================================================== --> 
<!-- Scripts ==================================================
================================================== --> 
<script src="/js/jquery-1.8.0.min.js" type="text/javascript"></script> 
<!-- Main js files --> 
<script src="/js/screen.js" type="text/javascript"></script> 
<!-- Tabs --> 
<script src="/js/tabs.js" type="text/javascript"></script> 
<!-- Include prettyPhoto --> 
<script src="/js/jquery.prettyPhoto.js" type="text/javascript"></script> 
<!-- Include Superfish --> 
<script src="/js/superfish.js" type="text/javascript"></script> 
<script src="/js/hoverIntent.js" type="text/javascript"></script> 
<!-- Flexslider --> 
<script src="/js/jquery.flexslider-min.js" type="text/javascript"></script> 
<!-- Modernizr --> 
<script type="text/javascript" src="/js/modernizr.custom.29473.js"></script>
</body>
</html>