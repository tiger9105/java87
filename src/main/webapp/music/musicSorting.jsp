<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">	

<!--music , video list  -->
<c:forEach var="video" items="${list}">
 
		<div class="container2" >
				<!-- column -->
				<div class="column">
					<!-- Post-->
					<div class="post-module" >
						<!-- thumbnail1-->
						<div class="thumbnail1" >
						
							<c:if test="${video.userNumber.artistCode=='0'}">
							<a href="/video/getVideo?videoNo=${video.videoNo}">
								<img
								src="/images/uploadFiles/${video.userNumber.filepath}"/>
								</a>
							</c:if>	
							<c:if test="${video.userNumber.artistCode=='1'}">
							<a href="/video/getVideo?videoNo=${video.videoNo}">
							<img
								src="/images/uploadFiles/${video.artist.image}" />
							</a>
							</c:if>	
						</div>
						<!--ends thumbnail1-->
						
						<!-- Post Content-->
						<div class="post-content" >
						<c:if test="${video.artist ==null }">
							<h1 class="title">${video.userNumber.userId }</h1>
						</c:if>
						<c:if test="${video.artist !=null }">
							<h1 class="title">${video.artist.artistName }</h1>
						</c:if>
							
							<h2 class="sub_title">${video.title}</h2>
							<div class="post-meta">
								<span class="heart"><img src="/images/icon/heart.png">${video.heart}</span>
								<span class="hits"><img src="/images/icon/eye.png">${video.hits}</span>
							</div>
						</div>
						<!--ends Post Content-->
					</div>
					<!--ends Post-->
				</div>
				<!--ends column -->
			</div>
			<!--ends music , video list  -->

</c:forEach>



</div>
	<!--ends container -->
</body>
</html>