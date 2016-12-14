<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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

<meta name="viewport"
  content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

<!-- CSS ==================================================
================================================== -->
<link rel="stylesheet" href="css/about/aboutUs.css">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/screen.css">
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
  media="screen" />

<!-- 새로 추가된 메인 UI로고부분   -->
<link rel="stylesheet" href="css/UP/UP.css">
<link rel="stylesheet" href="css/test/test.css">

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

  <!--Content Part ==================================================
================================================== -->
  <div id="header">
    <div class="container">
      <!-- Header | Logo, Menu
    ================================================== -->

      <div class="retrologo">
        <a href="index.jsp" style="font-size: 50px">Underground Play</a>
      </div>
      <!-- ㅁㄴㅇㅁ니ㅏㅁㄴ어미ㅏㄴ어ㅣㅁㄴㅇ -->
      <div class="mainmenu">
        <div id="mainmenu">
          <ul class="sf-menu">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp" id="visited">About</a></li>
            <li><a href="portfolio.jsp">Portfolio</a>
              <ul>
                <li><a href="portfolioproject.jsp">Portfolio Project</a></li>
              </ul></li>
            <li><a href="blog.jsp">Blog</a>
              <ul>
                <li><a href="singleblog.jsp">Single Post</a></li>
              </ul></li>
            <li><a href="features.jsp">Features</a></li>
            <li><a href="contact.jsp">MY Page</a></li>
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
            <option value="">Navigation</option>
            <option value="index.jsp">Home</option>
            <option value="about.jsp">About</option>
            <option value="portfolio.jsp">Portfolio</option>
            <option value="portfolioproject.jsp">Portfolio Project</option>
            <option value="blog.jsp">Blog</option>
            <option value="singleblog.jsp">Single Post</option>
            <option value="features.jsp">Features</option>
            <option value="contact.jsp">Contact</option>
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
    <div class="container">
      <header>
        <h3>About Page</h3>
        <p>
          introduce <span class="pink">UP</span> page
        </p>
      </header>
    </div>
    <!-- container ends here -->
    <hr class="separator1">
  </div>
  <!-- breadcrumbs ends here -->
  <!-- About us ==================================================
================================================== -->

<main>

  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1">introduce</label>

  <input id="tab2" type="radio" name="tabs">
  <label for="tab2">동영상 업로드</label>

  <input id="tab3" type="radio" name="tabs">
  <label for="tab3">UP Contest 대진표 및 Rule</label>



  <section id="content1">
    <p>시대의 변화에 따라 엔터쪽 변화가 급물살을 가리고 있는시점에 비인기 장르나 실력이 있으면서 예술에 종사하고
      있는 사람에 대한 홍보할수 있는곳이 마땅치 않다.<br> 그런 의미에서 우리의 사이트는 실력있는 일반인 및 현재
      활동하고 있는 인디 들의 실력을 뽐내고 홍보를 할 수 있는 공간을 만들자 하는 취지를 갖는다. 우리는
      여러컨텐츠를 아티스트들에게 제공해줄 것이며, <br>SNS와 연계해 더 원활한 홍보를 할 수 있도록 도와줄 것
      이다.</p>
      <h2 align="right">ceo 이승기</h2>
  </section>

  <section id="content2">
    <h2 style="font-size: 20px">UP 동영상 업로드</h2>
        <p class="testimonials">&quot;아티스트 등록후 동영상 업로드 하십시오. &quot;<br/><br/>
        <button type="button">아티스트등록</button>
        <button type="button">동영상 업로드</button></p>
        
  </section>

  <section id="content3">
   
    <div class="blankSeparator"></div>
    
      <h2 style="font-size: 20px">UP Contest 대진표 및 Rule</h2>
      <br />
      <br />
        <img class="shadow" src="images/tournament.png" /><br />
        <br />
        <h4 style="font-size: 20px">Contest Rule</h4>
        <ul>
          <li>
            <p style="font-size: 15px">1달 기간동안 아티스트 선호도를 "좋아요" 누적포인트로 조사하여
              상위 16명이 정해진다.</p>

            <p style="font-size: 15px">16강에 진출한 아티스트 들의 대진표는 랜덤으로 형성되며,
              경연배틀의 결과는 투표로 정해진다.</p>


            <p style="font-size: 15px">경연 후 일주일 동안 투표가 진행되어 발표가된다. ex)16강
              A조 경연 일주일 후 16강 B조 경연</p>

            <p style="font-size: 15px">4,8강은 A,B 조 구분없이 경연 하게되며,위와 동일하게
              경연후 일주일 기간의 투표기간이 형성된다.</p>

            <p style="font-size: 15px">준결승 경연 후 일주일 후 결승 진행.</p>

            <p style="font-size: 15px">준결승(3,4위전) 및 결승 은 경연후 바로 투표진행</p>

            <p style="font-size: 15px">1인 1투표이며, 다중 투표를 할수 없다.</p>
          </li>
        </ul>
      
  </section>

  

</main>

<!-- ///////////////////////////////////////////////////// -->


  <hr class="separator2">
  <div class="socialsblock">
    <div class="container socialize">
      <h3>Socialize with us!</h3>
      <section class="socials">
        <ul class="socials">
          <li><a href="#"><img src="images/socials/twitter.png"
              alt="" /></a></li>
          <li><a href="#"><img src="images/socials/facebook.png"
              alt="" /></a></li>
          <li><a href="#"><img src="images/socials/dribbble.png"
              alt="" /></a></li>
          <li><a href="#"><img src="images/socials/google+.png"
              alt="" /></a></li>
          <li><a href="#"><img src="images/socials/linkedin.png"
              alt="" /></a></li>
          <li><a href="#"><img src="images/socials/youtube.png"
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
        <h3>Contact Informations</h3>
        <p>
          <span class="orange"><strong>Address:</strong></span> <br>
          No.2 - 123678 street name City, Country
        </p>
        <p>
          <span class="orange"><strong>Phone:</strong></span> <br> + 9
          (094) 067 93567<br>
        </p>
        <p>
          <span class="orange"><strong>Email:</strong></span> <br>
          info@yoursite.com<br>
        </p>
      </div>
      <!-- four columns ends here -->
      <div class="one_fourth">
        <h3>Blogroll</h3>
        <ul>
          <li><a href="#" title="">Development Blog</a></li>
          <li><a href="#" class="">New Freebies</a></li>
          <li><a href="#" class="">Themeforest Theme</a></li>
          <li><a href="#" class=""> Design News</a></li>
          <li><a href="#" class="">WordPress Theme</a></li>
        </ul>
      </div>
      <!-- four columns ends here -->
      <div class="one_fourth">
        <h3>Archive</h3>
        <ul>
          <li><a href="#" class=""> August 2012</a></li>
          <li><a href="#" class="">July 2012</a></li>
          <li><a href="#" class="">Juny 2012</a></li>
          <li><a href="#" class=""> May 2012</a></li>
          <li><a href="#" class="">April 2012</a></li>
        </ul>
      </div>
      <!-- four columns ends here -->
      <div class="one_fourth lastcolumn">
        <h3>About</h3>
        <p>Freebix is responsive, simple and clean template with a lot
          attention to detail. Get it now!</p>
        <p>
          Visit <a href="http://anarieldesign.com/" rel="nofollow">Anariel
            Design</a> and find more interesting things.
        </p>
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
      <p class="copyright">
        &copy; Copyright 2013. &quot;Freebix&quot; by <a
          href="http://www.anarieldesign.com/" rel="nofollow">Anariel
          Design</a>. All rights reserved.
      </p>
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
  <script src="javascript/jquery.flexslider-min.js"
    type="text/javascript"></script>
  <!-- Modernizr -->
  <script type="text/javascript"
    src="javascript/modernizr.custom.29473.js"></script>
</body>
</html>