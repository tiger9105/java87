<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sample</title>
<link href="css/button/button.css" rel="stylesheet">
    <link rel="stylesheet"
          href="node_modules/bootstrap/dist/css/bootstrap.min.css">
          
    <link rel="stylesheet"
          href="node_modules/bootstrap/dist/css/bootstrap-theme.min.css">
     <link rel="stylesheet"
            href="css/menuslide/menuslide.css">
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>


<div id="main">
  <h2>Sidenav Push Example</h2>
  <p>Click on the element below to open the side navigation menu, and push this content to the right.</p>
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>
</div>


<script  src="javascript/menusliderjs/menuslide.js"></script>
 </body>
</html>
