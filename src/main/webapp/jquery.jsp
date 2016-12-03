<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script> 
<title>Insert title here</title>
<script type="text/javascript">
<!-- prev() : 이전 요소 선택자 -->

$(function(){

	$("#second").next().css("background-color","aqua").prev().prev().css("background-color","purple").next().siblings().css("border","1px solid black");

	
});
</script>
</head>
<body>
<!--
  문제 1 내용1의 배경을 퍼플로  문제 2 내용3의 배경을 aqua로 문3 내용 1, 내용 3의 border를 1px solid black 으로 줄것  
-->
  <h1>인접관계선택자</h1>
  <ul>
     <li>내용1</li>
      <li id="second">내용2</li>
     <li>니용3</li>
 </ul>
</body>
</html>