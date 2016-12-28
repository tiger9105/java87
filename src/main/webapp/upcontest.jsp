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
<style type="text/css">
/**
 * Resize images without JavaScript or jQuery
 */


li img {
  max-height: 150px;
  max-width: 150px;
}

/**
 * IGNORE - Not required. Just some eye candy
 */
 
 /* 유투브가 들어갈 li css */
.lioption {
  list-style: none;
  box-shadow: 0 0 10px #ccc;
  float: left;
  margin: 50px 0 0 50px;
  padding: 0;
  text-align: center;
  
    height: 300px;
  width: 300px;
}


 /* VS가 들어갈 li css */
.lioption1 {
  list-style: none;

  float: left;
  margin: 50px 0 0 50px;
  padding: 0;
  text-align: center;
  
}


 /* 대결구도전체적인 틀 ul 가운데 정렬옵션을줌 */
.uloption{
  width : 1200px;
  margin:0 auto;
}


/*여기는 셀렉문 css*/
/* -------------------- Page Styles (not required) */

/* -------------------- Select Box Styles: bavotasan.com Method (with special adaptations by ericrasch.com) */
/* -------------------- Source: http://bavotasan.com/2011/style-select-box-using-only-css/ */
.styled-select {
  background: url(http://i62.tinypic.com/15xvbd5.png) no-repeat 96% 0;
  height: 25px;
  overflow: hidden;
  width: 240px;
}
.styled-select select {
  background: transparent;
  border: none;
  font-size: 14px;
  height: 29px;
  padding: 5px;
  /* If you add too much padding here, the options won't show in IE */
  width: 268px;
}

/* -------------------- Rounded Corners */
.rounded {
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
}
.semi-square {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}
/* -------------------- Colors: Background */


.yellow {
  background-color: #eec111;
}

/* -------------------- Colors: Text */


.yellow select {
  color: #000;
}

/* -------------------- Select Box Styles: danielneumann.com Method */
/* -------------------- Source: http://danielneumann.com/blog/how-to-style-dropdown-with-css-only/ */




/*여기는 버튼 css*/
/* Material style */
.votebutton {
  border: none;
  cursor: pointer;
  color: white;
  padding: 1px 20px;
  border-radius: 2px;
  font-size: 22px;
  box-shadow: 2px 2px 4px rgba(0, 0, 0, .4);
  background: #FD7979;
}

/* Ripple magic */
.votebutton{
  position: relative;
  overflow: hidden;
}

.votebutton:after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  width: 5px;
  height: 5px;
  background: rgba(255, 255, 255, .5);
  opacity: 0;
  border-radius: 100%;
  transform: scale(1, 1) translate(-50%);
  transform-origin: 50% 50%;
}

@keyframes ripple {
  0% {
    transform: scale(0, 0);
    opacity: 1;
  }
  20% {
    transform: scale(25, 25);
    opacity: 1;
  }
  100% {
    opacity: 0;
    transform: scale(40, 40);
  }
}

.votebutton:focus:not(:active)::after {
  animation: ripple 1s ease-out;
}
 
</style>
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
<link rel="stylesheet" href="/css/upcontest.css">
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
   
 
    <!-- ㅁㄴㅇㅁ니ㅏㅁㄴ어미ㅏㄴ어ㅣㅁㄴㅇ -->
    <div class="mainmenu">
      <div id="mainmenu">
          <ul class="sf-menu">
            <li><a href="/index.jsp" >Home</a></li>
            <li><a href="/about.jsp">About</a></li>
            <li><a href="/artist/listArtist">Artist</a>
            <li><a href="/video/listVideo">Video</a>
            <li><a href="/season/getSeasonlist" id="visited">UP contest</a></li>
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
            <option value="/index.jsp">Home</option>
            <option value="/about.jsp">About</option>
            <option value="/artist/listArtist">Artist</option>
            <option value="/video/listVideo">Video</option>
            <option value="/season/getSeasonlist">UP contest</option>
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
   
      <h1 style="color:#FE524C;">UP contest</h1>

    </header>
  </div>
  <!-- container ends here -->
  <hr class="separator1">
  
</div>

  <nav class="genre">
    <ul>
      <li class="current"><a href="#"><span>8강</span></a></li>
      <li class=""><a href="#"><span>4강</span></a></li>
      <li class=""><a href="#"><span>3,4위전<span></a></li>
      <li class=""><a href="#"><span>결승<span></a></li>
    </ul>
  </nav>


<!-- breadcrumbs ends here --> 
<!-- Contact Content Part - GoogleMap ==================================================
================================================== -->

<div class="styled-select yellow rounded" style="height:30px; margin-top: 20px; margin-left: 350px;">
<select id="selectseason"style="float:left;  ">
<c:forEach var="season" items="${list}" begin="0" end="${totalCount}" step="1">

  <option class="myOptions"  value="${season.seasonName}">${season.seasonName}</option>

</c:forEach>
</select>

</div>

<div style="height:30px; margin-top: 20px; margin-left: 350px;" >
<h5 style="float:left;padding-left:5px;width:100px;">시즌시작:</h5><h4 id="stday"style="width:200px; float:left; padding-left:10px; ">${list[0].seasonStart}</h4>
<h5 style="float:left;padding-left:5px;width:100px;">시즌종료:</h5><h4 id="enday"style="width:200px; float:left; padding-left:10px; ">${list[0].seasonEnd}</h4>
</div>





<div style="text-align: center; padding-left: 200px;">
<ul class="uloption" >
  <li class="lioption">
    <iframe id="player1"
             width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
            <button class="votebutton">UP</button>
            <h3>100</h3>
  </li>
  <li class="lioption1">
    <img src="/artistImage/vs.pn.png">
  </li>
  <li class="lioption">
    <iframe id="player1"
            width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
            <button class="votebutton">UP</button>
            <h3>100</h3>
  </li>
</ul>





<ul class="uloption">
  <li class="lioption">
    <iframe id="player1"
             width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
  </li>
  <li class="lioption1">
    <img src="/artistImage/vs.pn.png">
  </li>
  <li class="lioption">
    <iframe id="player1"
            width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
  </li>
</ul>

<ul class="uloption">
  <li class="lioption">
    <iframe id="player1"
             width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
  </li>
  <li class="lioption1">
    <img src="/artistImage/vs.pn.png">
  </li>
  <li class="lioption">
    <iframe id="player1"
            width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
  </li>
</ul>

<ul class="uloption">
  <li class="lioption">
    <iframe id="player1"
             width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
  </li>
  <li class="lioption1">
    <img src="/artistImage/vs.pn.png">
  </li>
  <li class="lioption">
    <iframe id="player1"
            width="300" height="200"
            src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>
  </li>
</ul>

</div>







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


<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script> 
<!-- Main js files --> 
<script src="/javascript/screen.js" type="text/javascript"></script> 
<!-- Tabs --> 
<script src="/javascript/tabs.js" type="text/javascript"></script> 
<!-- Include prettyPhoto --> 
<script src="/javascript/jquery.prettyPhoto.js" type="text/javascript"></script> 
<!-- Include Superfish --> 
<script src="/javascript/superfish.js" type="text/javascript"></script> 
<script src="/javascript/hoverIntent.js" type="text/javascript"></script> 
<!-- Flexslider --> 
<script src="/javascript/jquery.flexslider-min.js" type="text/javascript"></script> 
<!-- Modernizr --> 
<script type="text/javascript" src="/javascript/modernizr.custom.29473.js"></script>
<script type="text/javascript">
$('#selectseason').change(function(){
       var selectseason = $("#selectseason option:selected").val();
          $.ajax({
          url:'/season/getSeason/'+selectseason,
          type: 'GET',
          success: function(season){
        	 console.log(($("#stday")).text());
           console.log(($("#enday")).text());
           console.log("바꾸기전 /후 상황비교하기 ")
        	 console.log(($("#stday")).text(season.seasonStart));
           console.log(($("#enday")).text(season.seasonEnd));
           console.log(($("#stday")).text());
           console.log(($("#enday")).text());
        }                  
      });      
  });

</script>
</body>
</html>