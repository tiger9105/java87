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
<!-- colorbox창 -->
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<!-- alert창 (등록) -->
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">
<!-- 로고 -->	
<link rel="stylesheet" href="/css/UP/UP.css">
<!-- menubar -->
<link rel="stylesheet" href="/css/menubar.css">
<!-- 상단 menu -->
<link rel="stylesheet" href="/css/screen.css">
</head>
 
<body>
<!-- 내정보 슬라이드 -->
<c:import url="/nav/nav.jsp"></c:import>
<!-- ends 내정보 슬라이드 -->

<!-- 홈페이지 메뉴바 -->
	<div id="header">
		<div class="container">
			
			<!-- UP 로고 
			<div class="retrologo">
				<a href="/index.jsp">Underground Play</a>
			</div>
			ends UP 로고  -->
	
			<div class="mainmenu">
				<div id="mainmenu">
					<ul class="sf-menu">
						<li><a href="/index.jsp">Home</a></li>
            <li><a href="/artist/listArtist" id="visited">Artist</a>
            <li><a href="/video/listVideo">Music</a>
            <li><a href="/season/getSeasonlist">UP Tournament</a></li>
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
            <option value="/artist/listArtist">Artist</option>
            <option value="/video/listVideo">Video</option>
            <option value="/season/getSeasonlist">UP Tournament</option>
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
    <ul >
      <li class="genre1" id="genre2_all" ><a href="#"><span>ALL</span></a></li>
      <li class="genre1" id="genre2_R&B" ><a href="#"><span>R&B</span></a></li>
      <li class="genre1" id="genre2_힙합&RAP" ><a href="#"><span>힙합 & RAP<span></a></li>
      <li class="genre1" id="genre2_어쿠스틱"><a href="#"><span>어쿠스틱<span></a></li>
      <li class="genre1" id="genre2_락" ><a href="#"><span>락<span></a></li>
      <li class="genre1" id="genre2_일렉트로닉" ><a href="#"><span>일렉트로닉<span></a></li>
    </ul>
  </nav>
<!--ends artist 장르별 메뉴 -->
	
	
	<!-- 아티스트 등록하기 버튼 -->
	<p>
		<div class="container1">
		<c:if test="${user.artistCode=='0'}">
			<span class="pulse-button">register</span>
		</c:if>
		</div>
	</p>
	<!-- ends 아티스트 등록하기 버튼 -->


<!-- 반복문으로 artists 뽑아오는 곳(getArtistList) -->
	<c:forEach var="i" begin="0" end="${totalCount/3}" step="1">
		<section id="team" class="team content-section">
			<div class="container">
				<div class="row text-center">
					<div class="container">
						<div class="row">
						
							<c:forEach var="artist" items="${list}" begin="${3*i}" end="${3*i+2}" step="1">
								<div class="col-md-4">
									<div class="team-member">
										<figure> 
											<img src="/images/uploadFiles/${artist.image}" alt="" class="img-responsive">
											<figcaption>		
												<ul>
													<li>
													   <i class="fa fa-facebook fa-2x" id="facebook_btn_${artist.artistNo}"></i>
													   <input type="hidden" value="/images/uploadFiles/${artist.image}">
													</li>
												
													<li><i class="fa fa-twitter fa-2x" id="twitter_btn_${artist.artistNo }"></i></li>
													<li><i class="fa fa-linkedin fa-2x" id="getArtist_${artist.artistNo }"></i></li>
												</ul>
											</figcaption>
										</figure>
										<h4>${artist.artistName}</h4>
										<p>${artist.genre}</p>
									</div>
									<!-- /.team-member-->
								</div>
								<!-- /.col-md-4 -->
							</c:forEach>

						</div>
						<!-- /.row -->
					</div>
					<!-- /.container -->
	
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container --> 
		</section>
		<!-- /.our-team -->
	</c:forEach>
<!--ends 반복문으로 artists 뽑아오는 곳(getArtistList) -->	
	
	 
   <div id="logo">
    <p id="logoP">
      <a id="logoA" href="/index.jsp"> UP </a>
    </p>
   </div>
   
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	  
	  <!-- 아티스트 등록할때 버튼 이벤트  -->
	  <script type="text/javascript">
      $('.pulse-button').on("click", function() {
        $.colorbox({
          closeButton : "false",
          fixed : "true",
          iframe : "true",
          href : "/register/register.jsp", 
          width : "600px",
          height : "650px",
          fixed : true,
          scrolling : false        
        }); 
      });
  </script>
  
  <!-- 아티스트 눌렀을 떄 나오는 자바스크립트(getArtist) -->
  <script type="text/javascript">
       $('i[id^=getArtist]').on("click", function() {
        var artNo = $(this).attr("id").replace("getArtist_","");
        $.colorbox({
          closeButton : "false",
          fixed : "true",
          iframe : "true",
          href : "/artist/getArtist/"+artNo, 
          width : "640px",
          height : "550px",
          scrolling : false   
          }); 
       });
  </script>



	

<!-- 장르별로 list 보내기 -->
<script>

$(".genre1").click(function(){
	var genre =$(this).text();
	alert(genre);
	$('.current').removeClass();
	$('#genre2').removeClass().addClass('genre1');
	$(this).attr('class','current');

	location.href="/artist/genre/"+decodeURI(genre, "UTF-8");
	
});

$("#genre2_all").click(function(){
	var genre =$(this).text();
//	alert(genre);
	$('.current').removeClass();
	$(this).attr('class','current');
	
	location.href="/artist/listArtist";
	
});


</script>

<!-- genre list된 거 check -->
<script type="text/javascript">
 var link =  document.location.href;
//alert(link);
if(link.includes("genre")){
	$('.current').removeClass();
 	var genre=link.split('/');
	genre=genre[5]; 
	genre=decodeURI(genre, "UTF-8");
	
	$('li[id^=genre2_]').removeClass().addClass('genre1');
	document.getElementById("genre2_"+genre).className = "current";

	
}else if(link.includes("listArtist")){
	document.getElementById("genre2_all").className = "current";
}else if(link.includes("sorting")){
	document.getElementById("genre2_all").className = "current";
}

</script>
  <script type="text/javascript">
       $('i[id^=twitter_btn_]').on("click", function() {
        var artNo = $(this).attr("id").replace("twitter_btn_","");
        window.open("https://twitter.com/share?text=ddddddd&url=http://192.168.0.77:8080/artist/getArtistFromShare/"+artNo,"newwindow","width=552,height=690,toolbar=0,menubar=0"); 
       });
  </script>
  
   <script type="text/javascript">
   window.fbAsyncInit = function() {
	      FB.init({
	        appId      : '1831265407091493',
	        cookie     : true,  
	        xfbml      : true,  
	        version    : 'v2.8' 
	      });
	  };
	  (function(d, s, id){
	       var js, fjs = d.getElementsByTagName(s)[0];
	       if (d.getElementById(id)) {return;}
	       js = d.createElement(s); js.id = id;
	       js.src = "//connect.facebook.net/ko_KR/sdk.js";
	       fjs.parentNode.insertBefore(js, fjs);
	     }(document, 'script', 'facebook-jssdk'));
	  
	  
       $('i[id^=facebook_btn_]').on("click", function() {
        var artNo = $(this).attr("id").replace("facebook_btn_","");
        var check=$(this).next().val().split("/");
    
      alert(check[3]);
      console.log("http://192.168.0.77/images/uploadFiles/"+check[3]);
        FB.ui({
            method: 'feed',
            name: "아티스트제목",  //제목
            link: "http://192.168.0.77:8080/artist/getArtistFromShare/"+artNo,              //링크
            picture:"http://cache.clien.net/cs2/data/file/pds/thumb/728x0_70/20160311154540_TZf4Kwx9_EC9584EC9DB4EC9CA049.jpg",             //이미지
            caption: '아티스트 정보 테스트',        
            description: "와우 신난다."//내용 
        });
       });
  </script>
  
  
		
</body>
</html>