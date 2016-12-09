<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sample</title>

    <link rel="stylesheet"
          href="node_modules/bootstrap/dist/css/bootstrap.min.css">
          
    <link rel="stylesheet"
          href="node_modules/bootstrap/dist/css/bootstrap-theme.min.css">

</head>
<body>


<iframe id="video" width="300" height="200" src="https://www.youtube.com/embed/tSAJ-iW1GBg" ></iframe>



<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script> 
<script type="text/javascript">

	  var returnValue = document.getElementById("video").src;
   alert(returnValue);
 </script>
 </body>
</html>
