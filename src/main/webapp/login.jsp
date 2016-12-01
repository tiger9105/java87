<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>


 <link rel="stylesheet" href="css/login/login.css">

</head>
<body>

<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="video/video.mp4">

      </video>
    <div class="layer">
  <span class="content">


<div class="rerun"><a href="">Rerun Pen</a></div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">로그인</h1>
    <form name="loginForm"  method="post" action="/user/login" target="_parent">
      <div class="input-container">
        <input type="text" id="userId"  name="userId" required="required"/>
        <label for="Username">ID</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="password"  name="password" required="required"/>
        <label for="Password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button type="submit"><span>Go</span></button>
      </div>
      <div class="footer"><a href="#">Forgot your password?</a></div>
      <div id="fb-root"></div>
      <fb:login-button show-faces="false" width="200" max-rows="1"></fb:login-button>
       <a href="#" onclick="FB.logout();">[logout]</a><br>
           <div align="left">
             <div id="name"></div>
            <div id="id"></div>
        </div>
    </form>
    
    
  </div>
  <div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">회원가입
      <div class="close"></div>
    </h1>
    <form>
      <div class="input-container">
        <input type="text" id="Username" required="required"/>
        <label for="Username">ID</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="text" id="UserID" required="required"/>
        <label for="Username">E-mail</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="Password" required="required"/>
        <label for="Password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="Repeat Password" required="required"/>
        <label for="Repeat Password">Repeat Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Next</span></button>
      </div>
  </form>
  </div>
</div>

 
 
  
</span>
  <span class="blank"></span>
</div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="javascript/loginjs/login.js"></script>
<script src="javascript/facebookjs/facebook.js"></script>
<script src="http://connect.facebook.net/ko_KR/all.js"></script>

</body>
</html>