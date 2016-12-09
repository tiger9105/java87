<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.net.URI" %>
 <%@page import="java.net.URLDecoder" %>
 <%
  String cp = request.getContextPath();
  request.setCharacterEncoding("UTF-8");
  
  //쿠키 가져오기 
  Cookie []ck = request.getCookies();
 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘의 본 상품 목록 나오게 하기</title>
</head>
<body>
상품목록
<br/>
<table width="200">
  <tr height="25">
      <td width="100">상품명</td>
      <td width="100">단가</td>
  </tr>
  <tr height="25">
      <td width="100"><a href="shop1.jsp">세탁기</a>
      <td width="100">100<td>
  </tr>
  <tr height="25">
      <td width="100"><a href="shop2.jsp">김창민</a>
      <td width="100">200<td>
  </tr>
  <tr height="25">
      <td width="100"><a href="shop3.jsp">강요셉</a>
      <td width="100">300<td>
  </tr>
</table>
</br>
오늘 본 상품 목록
<br/>
<%
    if(ck !=null){
      for(Cookie c:ck){
        if(c.getName().indexOf("sname") !=-1){
            out.println(java.net.URLDecoder.decode(c.getValue(),"UTF-8")+"<br/>");
        }
      }
    }
%>
</body>
</html>