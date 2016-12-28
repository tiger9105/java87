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
<link rel="stylesheet" href="/css/artist.css">
<link rel="stylesheet" href="/css/music/music.css">
<link rel="stylesheet" href="/artist/artist.css">
<!-- colorbox창 -->
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<!-- alert창 (등록) -->
<link rel="stylesheet" type="text/css"
	href="/css/sweetalert/sweetalert.css">
<!-- 로고 -->	
<link rel="stylesheet" href="/css/UP/UP.css">
<!-- menubar -->
<link rel="stylesheet" href="/css/menubar.css"> 
<!-- 상단 menu -->
<link rel="stylesheet" href="/css/screen.css">
<!-- pagination -->
<link rel="stylesheet" href="/css/music/pagination.css">
<!-- 최신순,인기순,조회순 -->

<style>

.center-on-page {
  font-size: 16px;
  font-weight: 300;
  width:350px;
  z-index:100;
  color: rgba(254, 82, 76, 1);
  margin-left:200px;

}
input[type="checkbox"],
input[type="radio"] {
  position: absolute;
  opacity: 0;
  z-index: -1;
}
label {
  position: relative;
  display: inline-block;
  margin-right: 10px;
  margin-bottom: 10px;
  padding-left: 30px;
  padding-right: 10px;
  line-height: 36px;
  cursor: pointer;
}
label::before {
  content: " ";
  position: absolute;
  top: 6px;
  left: 0;
  display: block;
  width: 24px;
  height: 24px;
  border: 2px solid rgba(254, 82, 76, 1);
  border-radius: 4px;
  z-index: -1;
}
input[type="radio"] + label::before {
  border-radius: 18px;
}
/* Checked */
input[type="checkbox"]:checked + label,
input[type="radio"]:checked + label {
  padding-left: 10px;
  color: #fff;
}
input[type="checkbox"]:checked + label::before,
input[type="radio"]:checked + label::before {
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(254, 82, 76, 1);
}
/* Transition */
label,
label::before {
  -webkit-transition: .25s all ease;
  transition: .25s all ease;
}
</style>

</head>
 
<body>
<!-- 내정보 슬라이드 -->
	<div class="menu-button">
		<span class="close"></span>
	</div>

	<nav class="menubar">
		<div class="posts">		
			<div class="Userprofile">
				<a href="#">
					<img src="/images/uploadFiles/${user.filepath}" >
					${user.userId}
				</a>
			</div>	
			<hr>
<!-- 아티스트 경우 메뉴바	-->	
			<c:if test="${user.artistCode =='1'}">
  				<div class="post">
					<a href="#" class="updateArtist">
						아티스트 정보 수정
					</a>
				</div> 
				<div class="post">
					<a href="#" class="videoRegister">
						동영상 올리기
					</a>
				</div>
				<div class="post">
					<a href="#">
						내가 올린 동영상
					</a>
				</div>
					<hr>
		</c:if> 
<!--ends 아티스트 경우 메뉴바	-->		
		
			<div class="post">
				<a href="#">
					최근 본 동영상
				</a>
			</div>
			<div class="post">
				<a href="#">
					내가 찜한 아티스트
				</a>
			</div>
			<div class="post">
				<a href="#">
					버스킹 찜 목록
				</a>
			</div>
			<div class="post">
				<a class='ajax'  href="/updateUser/updateUser.jsp">
				내 정보 수정
				</a>
			</div>

		</div>	
	</nav>
<!-- ends 내정보 슬라이드 -->

<!-- 홈페이지 메뉴바 -->
	<div id="header">
		<div class="container" >
			
			<!-- UP 로고  
			<div class="retrologo">
				<a href="/index.jsp">Underground Play</a>
			</div>
			ends UP 로고  -->
		
			<div class="mainmenu">
				<div id="mainmenu">
				<ul class="sf-menu">
          
            <li><a href="/index.jsp" >Home</a></li>
            <li><a href="/about.jsp">About</a></li>
            <li><a href="/artist/listArtist">Artist</a>
            <li><a href="/video/listVideo"  id="visited">Video</a>
            <li><a href="/season/getSeasonlist">UP contest</a></li>
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
	
<!--ends 홈페이지 메뉴바 -->

<!-- artist 장르별 메뉴 -->
	<nav class="genre">
		<ul>
			<li><a href="#"><span>ALL</span></a></li>
			<li ><a href="#"><span>R & B</span></a></li>
			<li ><a href="#"><span>힙합 & RAP<span></a></li>
			<li ><a href="#"><span>어쿠스틱<span></a></li>
			<li ><a href="#"><span>락<span></a></li>
			<li ><a href="#"><span>일렉토로닉<span></a></li>
		</ul>
	</nav>
<!--ends artist 장르별 메뉴 -->


<!-- music 등록하기 버튼 -->
	<p>
		<div class="container1">
			<span class="pulse-button">register</span>
		</div>
	</p>
<!-- ends muisc 등록하기 버튼 -->




<!-- music list -->
	<section id="team" class="team content-section">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-12">
					<h2>Music Index</h2>
					<h3 class="captiongray">Music Video</h3>
				</div>
			</div>
		</div>
	</section>
	
	<!-- nav -->

<div class="center-on-page">

  <input type="radio" name="radio" id="rb1" value="recently"  checked="checked"/>
  <label for="rb1">최신순</label>
  <input type="radio" name="radio" id="rb2" value="popularity"/>
  <label for="rb2">인기순</label>
  <input type="radio" name="radio" id="rb3" value="hits" />
  <label for="rb3">조회순</label>
  
 
  
</div>

<!-- ends nav -->



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


<!--javascript 모음  -->  
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/javascript/sweetalert/sweetalert.min.js"></script>
	<script src="javascript/screen.js" type="text/javascript"></script>
	<!-- Tabs -->
	<script src="javascript/tabs.js" type="text/javascript"></script>
	






    <script>
   		$(".ajax").colorbox({iframe:true, width:"40%", height:"650px"});
   	</script>    





 <!--video 눌렀을 떄 나오는 자바스크립트(getVideo) -->
	<script type="text/javascript">
  		 $('i[id^=getVideo]').on("click", function() {
    		var videoNo = $(this).attr("id").replace("getVideo_","");
	    	$.colorbox({
	        closeButton : "false",
	        fixed : "true",
	        iframe : "true",
	        href : "/video/getVideo/"+videoNo, 
	        width : "640px",
	        height : "600px",
	        scrolling : false   
      		}); 
    	 });
	</script> 

<!-- 등록했을떄 나오는 alert창 -->
	<script type="text/javascript">
	    $('.pulse-button').on("click", function() {
	    	$.colorbox({
	        closeButton : "false",
	        fixed : "true",
	        iframe : "true",
	        href : "/register/musicRegister.jsp", 
	        width : "600px",
	        height : "650px",
	        scrolling : true	       
	      }); 
	    });
	</script>
	
	<script type="text/javascript">
	    $('.videoRegister').on("click", function() {
	    	$.colorbox({
	        closeButton : "false",
	        fixed : "true",
	        iframe : "true",
	        href : "/register/musicRegister.jsp", 
	        width : "600px",
	        height : "650px",
	        scrolling : true	       
	      }); 
	    });
	</script>

<!-- 메뉴슬라이드 자바스크립트  -->
	<script>
		$( document ).ready(function() {
			$('.menu-button, .overlay').click(function() {
				$('body').toggleClass('overflow-hidden');
				$('.menu-button').toggleClass('open').toggleClass('close');
				$('nav header').toggleClass('open');
				$('nav .posts').toggleClass('open');
				$('.overlay').fadeToggle();
			});
		});
	</script>
	


	<!-- 아티스트 수정 창 -->
	<script type="text/javascript">
	    $('.updateArtist').on("click", function() {
	    	$.colorbox({
	        closeButton : "false",
	        fixed : "true",
	        iframe : "true",
	        href : "/artist/getArtist1", 
	        width : "600px",
	        height : "650px",
	        scrolling : false	       
	      }); 
	    });
	</script>	
	

<script>

$("input:radio[name=radio]").click(function(){
	var temp = $(':radio[name="radio"]:checked').val();

	
	location.href="/video/sorting/"+temp;
	
});

</script>
	
	
<script type="text/javascript">
if (location.href.match('/hits')) {

	$("input:radio[name='radio']:radio[value='hits']").attr("checked",true);
	
	}
	else if (location.href.match('/popularity')){
		$("input:radio[name='radio']:radio[value='popularity']").attr("checked",true);

	}
	else if (location.href.match('/recently')){
		$("input:radio[name='radio']:radio[value='recently']").attr("checked",true);

		}
</script>

<script>

$("#genre1").click(function(){
	var t =$(this).text();
	alert(t);


	
});

</script>


</body>
</html>