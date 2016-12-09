<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
   String cp=request.getContextPath();
   request.setCharacterEncoding("UTF-8");
   
   //쿠키로 상품명 저장 
   Cookie c= new Cookie("sname2",URLEncoder.encode("김창민","utf-8"));
   c.setMaxAge(60*60*24);
   response.addCookie(c);
%>
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
            href="css/test/test.css">
</head>
<body>
  좋은 세탁기 싼 가격 .^^ </br>
  <a href="shop.jsp">돌아가기</a>
<script  src="javascript/test/test.js"></script>
<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script> 
 </body>
</html>
