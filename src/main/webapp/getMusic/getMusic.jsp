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
<!--  모달창 -->
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">   
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

<link rel="stylesheet" href="/css/getMusic.css">

<link rel="stylesheet" href="/css/carousel.css">
</head>
<style type="text/css">
#btn{
	margin-top:10px;
	margin-right:200px;
	width: auto;
	border: 2px solid rgba(254, 82, 76, 1);;
	background: #fff;
	padding: 10px 40px;
	float:right;
	color: rgba(254, 82, 76, 1);;
	border-radius: 2px;
	cursor: pointer;
	text-transform: uppercase;
}
/*comment  */
.detailBox {
	width:620px;
	border-top: 1px solid #bbb;
	border-bottom: 1px solid #bbb;
	margin: 15px;
	margin-top: 30px;
}

.titleBox {
	background-color: #fdfdfd;
	padding: 10px;
}

.titleBox label {
	color: #444;
	margin: 0;
	display: inline-block;
}

.actionBox .form-group * {
	width: 100%;
}

.taskDescription {
	margin-top: 10px 0;
}

.commentList {
	padding: 0;
	list-style: none;
	max-height: 300px;
	overflow: auto;
	margin-left: 5px;
}

.commentList li {
	margin: 0;
	margin-top: 10px;
	padding-left: 10px;
}

.commentList li>div {
	display: table-cell;
}

.commenterImage {
	width: 30px;
	margin-right: 5px;
	float: left;
}

.commenterImage img {
	width: 30px;
	height: 30px;
	border-radius: 50%;
}

.commentText p {
	margin: 0;
}

.sub-text {
	color: #aaa;
	font-family: verdana;
	font-size: 11px;
}

.actionBox {
	border-top: 1px dotted #bbb;
}

.commentText {
	padding-left: 10px;
}

#add_comment_btn {
	position: relative;
	top: 20px;
	left: -15px;
	background-color: #ED2553;
}
#toast-container {
  top: auto !important;
  right: 1%;
  bottom: 7%;
  left:auto !important;
}


.delete_btn_custom{
	cursor: pointer;
}

</style> 
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
						<li><a href="/about.jsp">About</a></li>
						<li><a href="/artist/listArtist" >Artist</a>
							<ul>
								<li><a href="/artist/listArtist">Artist</a></li>
							</ul></li>
						<li><a href="/video/listVideo" id="visited">Music</a>
							<ul>
								<li><a href="/video/listVideo" >Video</a></li>
							</ul></li>
						<li><a href="/features.jsp">Features</a></li>
						<li><a href="/upcontest.jsp">UP contest</a></li>
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
						<option value="index.jsp">Home</option>
						<option value="about.jsp">About</option>
						<option value="artist.jsp">Artist</option>
						<option value="portfolioproject.jsp">Portfolio Project</option>
						<option value="blog.jsp">asdsa</option>
						<option value="singleblog.jsp">Busking</option>
						<option value="features.jsp">Features</option>
						<option value="contact.jsp">My page</option>
					</select>
				</form>
			</div>
			<!-- mainmenu ends here -->
		</div>
		<!-- container ends here -->
	</div>
	<!-- header ends here -->

<!--ends 홈페이지 메뉴바 -->

<!-- video -->
	<div class="container3">
		<div class="title">
			<c:if test="${video.userNumber.artistCode=='0'}">
				<h2 id="name">${video.userNumber.userId }</h2>
			</c:if>	
			<c:if test="${video.userNumber.artistCode=='1'}">
				<h2 id="name">${video.artist.artistName }</h2>
			</c:if>	
			<h4 ><a class='ajax'  href="/updateUser/updateUser.jsp">${video.title }</a></h4>
		</div>
		
		<c:if test="${user.userId eq video.userNumber.userId }">
			<div class="userUpdateVideo">
					<span id="updateVideo_${video.videoNo}" class="btn1">수정</span>
					<span id="deleteVideo_${video.videoNo}" class="btn1" >삭제</span>
			</div>
		</c:if>
		
		
		<iframe width="100%" height="400" src="https://www.youtube.com/embed/${video.url}" frameborder="0" allowfullscreen></iframe>	

		<div class="good">

				<span class="hits"><img src="/images/icon/eye.png">${video.hits}</span>
				
				<span class="heart1">
					<c:if test="${videoHeart.userNo eq user.userNo}">
						<input id="heart" name="heart" type="checkbox" checked="checked" />
					</c:if>	
					
					<c:if test="${videoHeart.userNo ne user.userNo}">
						<input id="heart" name="heart" type="checkbox" />
					</c:if>	
				
					<label for="heart">❤</label>
						<div id="heartCount">
							${video.heart}
						</div>
				</span>

		</div>
		
	
			
		<div class="container4">
		  <!-- Trigger the modal with a button -->
		  <button type="button" id="btn" data-toggle="modal" data-target="#myModal">가사 보기</button>
		
		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">가사</h4>
		        </div>
		        <div class="modal-body">
		          ${video.text}
		        </div>
		        
		      </div>
		      
		    </div>
		  </div>
		  
		</div>
		

<%-- 		<div class="col offset-s2 s8">
				<div class="detailBox">
					<div class="titleBox">
						<label>너의 의견을 달아봐 </label>
					</div>
					<div class="actionBox">
						<ul id="commentList" class="commentList">
							<c:forEach var="comment" items="${commentList}">
								<li>
									<div class="commenterImage">
										<img src="/images/uploadFiles/"${user.filepath }">
									</div>
									<div class="commentText">
										<p class="">${comment.commentContent}</p>
										<span class="date sub-text">${comment.regDate}</span>

									</div> <c:if test="${comment.userNo==user.userNo}">
										<div id="delete_comment_${comment.commentNo}" class="delete_btn_custom">
											<i class="material-icons">remove_circle_outline</i>
										</div>
									</c:if>
								</li>
							</c:forEach>
							<!-- 댓글 들어가는곳 -->
						</ul>

						<div class="row">
						<form id="comment_form">
							<input name="voteNo" type="hidden" value="${vote.voteNo}">
							<div class="input-field col s8">
								<input name="commentContent" id="comment" type="text" class="validate">
								<label for="comment">댓글</label>
							</div>
						</form>
							<div class="col s4">
								<div  id="add_comment_btn" class="btn btn-default">Add</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		
	
	 --%>
	
				
	</div>
<!-- ends video -->

<!-- javascript 모임 -->
	<!-- 모달창 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>
	<script src="/javascript/screen.js" type="text/javascript"></script>
	<!-- Tabs -->
	<script src="/javascript/tabs.js" type="text/javascript"></script>

	
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
	
	 
	<!-- 동영상 수정 자바스크립트(getVideoByUpdate) -->
	<script type="text/javascript">
  		 $('span[id^=updateVideo]').on("click", function() {
    		var videoNo = $(this).attr("id").replace("updateVideo_","");
	    	$.colorbox({
	        closeButton : "false",
	        fixed : "true",
	        iframe : "true",
	        href : "/video/getVideoByUpdate/"+videoNo, 
	        width : "640px",
	        height : "650px",
	        scrolling : true  
      		}); 
    	 });
	</script>
	
	
	<!-- 동영상 삭제 자바스크립트(getVideoByUpdate) -->
	<script type="text/javascript">
  		 $('span[id^=deleteVideo]').on("click", function() {
    		var videoNo = $(this).attr("id").replace("deleteVideo_","");
    		
        	swal({
     		   title: "삭제하시겠습니까?",
     		   type: "info",
     		   showCancelButton: true,
     		   closeOnConfirm: false,
     		   confirmButtonColor : "rgba(254, 82, 76, 1)",
     		   showLoaderOnConfirm: true
     		 }, function () {
     		   setTimeout(function () {
     			   location.href="/video/deleteVideo/"+videoNo;
     		   }, 2000);
     		 });				
	    	
    	 });
	</script>
	
	
<!-- 좋아요 javaScript -->
	<script type="text/javascript">
  		 $('#heart').on("click", function() {
  			var ischecked =$(this).attr('checked');
  			if(ischecked){
 
  				
	    		var num = $("#heartCount").text();
	    	
	    		var num1=parseInt(num)+parseInt(1);
	    		
	     		var vidNo =${video.videoNo};
     		
    			document.getElementById("heartCount").innerHTML = num1;
    		
	    		$.ajax({
		               url: "/video/heartAdd",
		               type: "GET",           
		               data: {"heartAdd":num1 ,"vidNo":vidNo},
		               async: false,
		               success: function(data) {                   
		                   alert(html);
		               }
		           });   
    		  
  			 }else{
 
  		
  				var num = $("#heartCount").text();
	    		
	    		var num1=parseInt(num)-parseInt(1);
	    		
	     		var vidNo =${video.videoNo};
  	    		document.getElementById("heartCount").innerHTML = num1;
  	    		
  	    		  $.ajax({
  		               url: "/video/heartDelete",
  		               type: "GET",           
  		               data: {"heartDelete":num1 ,"vidNo":vidNo},
  		               async: false,
  		               success: function(data) {                   
  		                   
  		               }
  		   
  		           });   
	 
  	  		 }	  
    		
    	 });
  		
	</script>
	
	<script>
	
	$("#commentList").scrollTop($("#commentList")[0].scrollHeight);
	
	$("#add_comment_btn").on("click",function(){
	
		if($("#comment").val()==''){
			  Materialize.toast('댓글을 입력하세요. ', 3000,'pink accent-3')	
			  return;
		}
		
		
		var form = new FormData($("#comment_form")[0]);
		
		$.ajax({
			type : "post",
			url : "/comment/addComment",
			processData : false,/*data 파라미터로 전달된 데이터를 jQuery 내부적으로 query string 으로 만드는데, 파일 전송의 경우 이를 하지 않아야 하고 이를 설정하는 것이 processData: false 이다.*/
			contentType : false,/*contentType 은 default 값이 "application/x-www-form-urlencoded; charset=UTF-8" 인데, "multipart/form-data" 로 전송이 되게 false 로 넣어준다. */
			data : form,
			success : function(data){
				var parsedDate = new Date(parseInt(data.comment.regDate))
				var jsDate = new Date(parsedDate);
				var convertedDate= jsDate.getFullYear()+"-"+(jsDate.getMonth()+1)+"-"+jsDate.getDate()+" "+jsDate.getHours()+":"+jsDate.getMinutes()+":"+jsDate.getSeconds()+"."+jsDate.getMilliseconds();
				var row ="";
				
				row +=  "<li><div class='commenterImage'>";
				if(data.user.userPhoto.startsWith("fb_profile_image")){
					row +="<img src='"+data.user.userPhoto.replace("fb_profile_image","")+"'/></div>"
				}else{
					row +="<img src='/image/profile/thumbnail/"+data.user.userPhoto+"'/></div>"
				}
				
				
				
				row +="<div class='commentText'>";
				row +="<p class=''>"+data.comment.commentContent+"</p>";
				row +="<span class='date sub-text'>"+convertedDate+"&nbsp;&nbsp;"+data.user.userName+"님</span></div>";
				row +="<div id='delete_comment_"+data.comment.commentNo+"' class='delete_btn_custom'><i class='material-icons'>remove_circle_outline</i></div></li>";
			
				
				$("#commentList").append(row);
				$("#comment").val("");
				$("#commentList").scrollTop($("#commentList")[0].scrollHeight);
			}
		});
	});


	$(document).on("click","div[id^='delete_comment_']",function(){
		var commentNo = $(this).attr("id").replace("delete_comment_","");
		$.ajax({
			type : "get",
			url : "/comment/deleteComment/"+commentNo
		});
		$(this).parent().remove();
	});

	
	</script>


	

	
</body>
</html>