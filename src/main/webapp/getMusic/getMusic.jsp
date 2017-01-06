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

#add_comment_btn{
    width: auto;
    border: 0px solid rgba(254, 82, 76, 0.7);
    background: rgba(254, 82, 76, 0.7);
    padding: 8px 20px;
    margin: 0px;
    margin-left: 2px;
    color: white;
    border-radius: 10px;
    cursor: pointer;
    text-transform: uppercase;
}
#commentList{
 padding-left:100px;
 list-style:none;
}

.commenterImage{
 display:inline-block;
 float:left;
 width:50px;
 heigth:50px;
 
}

.commenterImage img{
    margin-bottom: 4px;
   display: block;
    max-width: 100%;
    height: auto;
    object-fit: cover;
    border-radius: 50%;
}

.dateSubText{
   padding-left:50px;
   font-size:10px;
}

p{
 display:inline-block;
 padding-top:10px;   
 padding-left:50px;
 padding-right:10px;
 font-size:18px;
 }

.delete_btn_custom{
 margin-top:10px;
 float:right;
 display:inline-block;

}

.delete_btn_custom img{
    cursor: pointer;
}

.actionBox{
   width:850px;
   height:auto;
}

#comment{
 width:650px;
 height:70px;
 padding:20px;
 margin-left:110px;
}
.addComment{
display:inline-block;

}
.addCommentButton{
margin:30px;
margin-top:20px;
float:right;
}
.addCommentBox{

display:inline-block;
}
#hr1{
margin-top:10px;
margin-bottom:10px;
border:1px solid #eee;
}
h3{
    margin: 20px 0 0 100px;
    text-transform: none;
    color: rgba(254, 82, 76, 1);
    font-family: "Raleway", "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-weight: 600;
    letter-spacing: 1px;
    line-height: 1.5;


}

#append{
    padding-left: 100px;
    list-style: none;
    width:850px;
}

.container2{
 
 position: relative;
    width: 960px;
    margin: 0 auto;
margin-top:80px;

}
#commentH5{

  display: inline;
  margin: 1px 0 20px 0;
  font-weight: 600;
  line-height: 1;
  color:gray;
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
            <option value="/index.jsp">Home</option>
            <option value="/about.jsp">About</option>
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
		
		
		<iframe id="player" width="100%" height="400" src="https://www.youtube.com/embed/${video.url}?enablejsapi=1" frameborder="0" allowfullscreen></iframe>	

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
		
	</div>
	<br>
	
	<div class="container2">	
	<div class="addComment">

				<h3>Comment</h3>
						<div class="row">
						<form id="comment_form">
							<input name="video" type="hidden" value="${video.videoNo}">
							<div class="addCommentBox">
								<input name="commentContent" id="comment" type="text" class="validate">
								<label for="comment"></label>
							</div>
							<div class="addCommentButton">
								<div  id="add_comment_btn" class="btn btn-default">Add</div>
							</div>
						</form>

						</div>
	
				<div class="detailBox">
				
					
					<div id="append"></div>
					
					<div class="actionBox">
						<ul id="commentList" class="commentList">
							<c:forEach var="comment" items="${commentList}">
							
								<li id="commentIi">
								<hr id="hr1">
								<div class="OneComment">
									<div class="commenterImage">
										 <img src="/images/uploadFiles/${ comment.user.filepath}">
										  <h5 id="commentH5">${comment.user.userId}</h5> 
									</div>
								<div class="commentText">
										<p class="">${comment.commentContent}</p>
										
									<c:if test="${comment.user.userNo==user.userNo}">
										<div id="delete_comment_${comment.commentNo}" class="delete_btn_custom">
											<img style="width:30px; height:30px;" src="/images/icon/delete.png">
										</div>
									</c:if>
										<br>
										<span class="dateSubText">${comment.commentTime}</span>
												
				
								</div>	
								</li>
						
							</c:forEach>
							<!-- 댓글 들어가는곳 -->
						</ul>

					</div>
					
					
				</div>
			</div>
		</div>
	
<!-- ends video -->

 
   <div id="logo">
    <p id="logoP">
      <a id="logoA" href="/index.jsp"> UP </a>
    </p>
   </div>

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
	  <script src="https://www.youtube.com/iframe_api"></script>
	   <script src="/javascript/cookie/cookie.js"></script>

	
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
	
	
<!-- 댓글 구현 -->  
  <script>
  
  $("#commentList").scrollTop($("#commentList")[0].scrollHeight);
  
  $("#add_comment_btn").on("click",function(){
    alert($("#comment").val());
    
    if($("#comment").val()==''){
        Materialize.toast('댓글을 입력하세요. ', 3000,'pink accent-3')  
        return;
    }
    
    
    var form = new FormData($("#comment_form")[0]);
    
    $.ajax({
      type : "post",
      url : "/video/addComment",
      processData : false,/*data 파라미터로 전달된 데이터를 jQuery 내부적으로 query string 으로 만드는데, 파일 전송의 경우 이를 하지 않아야 하고 이를 설정하는 것이 processData: false 이다.*/
      contentType : false,/*contentType 은 default 값이 "application/x-www-form-urlencoded; charset=UTF-8" 인데, "multipart/form-data" 로 전송이 되게 false 로 넣어준다. */
      data : form,
      success : function(data){
    
        
        var row ="";
        row="<div id='append'>"
        row += "<hr id='hr1'>";
        row +=  "<li><div class='commenterImage'>";

        image="<img src='/images/uploadFiles/";
        image+=data.user.filepath+"'"+"/>";
        row += image;
        row += "<h5 id='commentH5'>"+data.user.userId+"</h5></div>";
            
      
        row +="<div class='commentText'>";
        row +="<div id='delete_comment_"+data.comment.commentNo+"' class='delete_btn_custom'><img style='width:30px; height:30px;' src='/images/icon/delete.png'></div>";
        row +="<p class=''>"+data.comment.commentContent+"</p>";
        row +="<br><span class='dateSubText'>"+data.comment.commentTime+"</span></div>";
        row +="</li></div>";
          
      
        $("#append").before(row);
        $("#comment").val("");
        $("#commentList").scrollTop($("#commentList")[0].scrollHeight); 
      }
    });
  });


  $(document).on("click","div[id^='delete_comment_']",function(){
    var commentNo = $(this).attr("id").replace("delete_comment_","");
    $.ajax({
      type : "get",
      url : "/video/deleteComment/"+commentNo
    });
    $(this).parent().parent().remove();
    $("#hr1").remove();

  });

  
  </script>


  
  <!-- 최근본동영상 자바 스크립트  1/1 추가된 부분 ! -->
  <script type="text/javascript">
  var player;
  function onYouTubeIframeAPIReady() {
	 /*  alert("이건실행되나?"); */
      $('iframe').each(function(i, e) {
        if($(e).attr('id')=='player'){
          player =  new YT.Player($(e).attr('id'), {
          events: { 'onStateChange': onPlayerStateChange}
        });
        }//end if
      });//end each function
    }//end function
    
    
    function onPlayerStateChange(event) {
        switch(event.data) {
        case -1:
          var abc = new Array($.cookie('uri3'),$.cookie('uri4'),$.cookie('uri5'),$.cookie('uri6'),$.cookie('uri7'),$.cookie('uri8'),$.cookie('uri9'));
          for(var i=0;i<abc.length;i++){
            console.log(i+"번째:"+abc[i]);
            if(abc[i]==null){
              var uri="uri"+(i+3);
              console.log(uri);
              $.cookie(uri,($(player.getIframe()).attr('src')),{path :'/'});
              break;
            }//end if
          }//end for 
          console.log($.cookie('uri3'));
        /*  console.log($("#player").attr("src"));
            $("#player").each(function(index,value){
              console.log(index+"번째:"+value.src);
            });
            
            console.log("여기 잘들어오시나여ㅛ? "); */
          break;
        } 
    }
  
  </script>

  


	

	
</body>
</html>