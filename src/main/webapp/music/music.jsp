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
<link rel="stylesheet" href="/css/music/order.css">
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
						<li><a href="/index.jsp">Home</a></li>
						<li><a href="/about.jsp">About</a></li>
						<li><a href="/artist/listArtist" >Artist</a>
							<ul>
								<li><a href="/artist/listArtist">Artist</a></li>
							</ul></li>
						<li><a href="/video/listVideo"  id="visited">Video</a>
							<ul>
								<li><a href="/video/listVideo">Video</a></li>
							</ul></li>
						<li><a href="/features.jsp">Features</a></li>
						<li><a href="upcontest.jsp">UP contest</a></li>
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

<!-- artist 장르별 메뉴 -->
	<nav class="genre">
		<ul>
			<li class="current"><a href="#"><span>ALL</span></a></li>
			<li class=""><a href="#"><span>R & B</span></a></li>
			<li class=""><a href="#"><span>힙합 & RAP<span></a></li>
			<li class=""><a href="#"><span>어쿠스틱<span></a></li>
			<li class=""><a href="#"><span>락<span></a></li>
			<li class=""><a href="#"><span>일렉토로닉<span></a></li>
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

<!-- 최근순 ,인기순 ,조회순 -->
	<div class="main">
	  <div class="radioholder">
	    <input type="radio" name="projecttype" value="recently" checked>
	    <label for="pt_recently">최근순</label>
	  </div>
	  <div class="radioholder">
	    <input type="radio" name="projecttype" value="popularity">
	    <label for="pt_popularity">인기순</label>
	  </div>
	   <div class="radioholder">
	    <input type="radio" name="projecttype" value="hits">
	    <label for="pt_hits">조회순</label>
	  </div>
	</div>
<!--ends 최근순 ,인기순 ,조회순 -->

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
							<div class="video">
								<img src="/images/icon/video-camera.png">
							</div>
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
	
<!-- 이미지 사이즈 조정 -->
	<script>

		var div = figure.querySelector('figure');// 이미지를 감싸는 div
		var img = div.querySelector('img'); // 이미지
		var divAspect = 90 / 120; // div의 가로세로비는 알고 있는 값이다
		var imgAspect = img.height / img.width;
		 
		if (imgAspect <= divAspect) {
		    // 이미지가 div보다 납작한 경우 세로를 div에 맞추고 가로는 잘라낸다
		    var imgWidthActual = div.offsetHeight / imgAspect;
		    var imgWidthToBe = div.offsetHeight / divAspect;
		    var marginLeft = -Math.round((imgWidthActual - imgWidthToBe) / 2);
		    img.style.cssText = 'width: auto; height: 100%; margin-left: '
		                      + marginLeft + 'px;'
		} else {
		    // 이미지가 div보다 길쭉한 경우 가로를 div에 맞추고 세로를 잘라낸다
		    img.style.cssText = 'width: 100%; height: auto; margin-left: 0;';
		}

	</script>



<!-- colorbox inline 등록창 -->
	<script>
      $(document).ready(function(){
          $(".inline").colorbox({inline:true}); 
      });
    </script>

    <script>
   		$(".ajax").colorbox({iframe:true, width:"40%", height:"650px"});
   	</script>    

<!-- genre 부분 자바스크립트 (아직 작동안됌) -->
	<script>
		$(document).on('click', 'li', function() {
		    $('.current').removeClass('current');
		    $(this).addClass('current');
		});

	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
		    $(".drop .option").click(function() {
		      var val = $(this).attr("data-value"),
		          $drop = $(".drop"),
		          prevActive = $(".drop .option.active").attr("data-value"),
		          options = $(".drop .option").length;
		      $drop.find(".option.active").addClass("mini-hack");
		      $drop.toggleClass("visible");
		      $drop.removeClass("withBG");
		      $(this).css("top");
		      $drop.toggleClass("opacity");
		      $(".mini-hack").removeClass("mini-hack");
		      if ($drop.hasClass("visible")) {
		        setTimeout(function() {
		          $drop.addClass("withBG");
		        }, 400 + options*100); 
		      }
		      triggerAnimation();
		      if (val !== "placeholder" || prevActive === "placeholder") {
		        $(".drop .option").removeClass("active");
		        $(this).addClass("active");
		      };
		    });
		    
		    function triggerAnimation() {
		      var finalWidth = $(".drop").hasClass("visible") ? 22 : 20;
		      $(".drop").css("width", "24em");
		      setTimeout(function() {
		        $(".drop").css("width", finalWidth + "em");
		      }, 400);
		    }
		  });	 
	 </script>

<!-- 이미지 파일 업로드시 작동하는 자바스크립트 -->
	<script>
	    $(document)
	        .ready(
	            function() {
	              var fileTarget = $('.filebox .upload-hidden');
	
	              fileTarget.on('change', function() {
	                if (window.FileReader) {
	                  // 파일명 추출
	                  var filename = $(this)[0].files[0].name;
	                }
	
	                else {
	                  // Old IE 파일명 추출
	                  var filename = $(this).val().split('/')
	                      .pop().split('\\').pop();
	                }
	                ;
	
	                $(this).siblings('.upload-name').val(filename);
	              });
	
	              //preview image 
	              var imgTarget = $('.preview-image .upload-hidden');
	
	              imgTarget
	                  .on(
	                      'change',
	                      function() {
	                        var parent = $(this).parent();
	                        parent.children(
	                            '.upload-display')
	                            .remove();
	
	                        if (window.FileReader) {
	                          //image 파일만
	                          if (!$(this)[0].files[0].type
	                              .match(/image\//))
	                            return;
	
	                          var reader = new FileReader();
	                          reader.onload = function(e) {
	                            var src = e.target.result;
	                            parent
	                                .prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
	                          }
	                          reader
	                              .readAsDataURL($(this)[0].files[0]);
	                        }
	
	                        else {
	                          $(this)[0].select();
	                          $(this)[0].blur();
	                          var imgSrc = document.selection
	                              .createRange().text;
	                          parent
	                              .prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
	
	                          var img = $(this).siblings(
	                              '.upload-display')
	                              .find('img');
	                          img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""
	                              + imgSrc + "\")";
	                        }
	                      });
	            });
  	</script>

<!-- 아티스트 추가 ajax -->
	<script type="text/javascript">
		$(function(){
			$("#uploadbutton").click(function(){
			     var form = $('form')[1];
			     var formData = new FormData(form);
			        $.ajax({
			            url: '/artist/upload',
			            processData: false,
			            contentType: false,
			            data: formData,
			            type: 'POST',
			            success: function(result){
			            	swal({
			            		   title: "아트스트 등록하시겠습니까?",
			            		   type: "info",
			            		   showCancelButton: true,
			            		   closeOnConfirm: false,
			            		   showLoaderOnConfirm: true
			            		 }, function () {
			            		   setTimeout(function () {
			            			   location.href="/artist/listArtist";
			            		   }, 2000);
			            		 });					  
			             }	
			       	});     
			 });
		});


		//이미지 미리보기
		 function readURL(input) {
		            if (input.files && input.files[0]) {
		                var reader = new FileReader();
		                reader.onload = function (e) {
		                    $('#blah').attr('src', e.target.result);
		                }
		                reader.readAsDataURL(input.files[0]);
		            }
		        }
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
	
<!-- 최근순,인기순,조회순 자바스크립트 -->
	<script>
		// preload image function
		function preload(arrayOfImages) {
			$(arrayOfImages).each(function(){
				$('<img/>')[0].src = this;
			});
		}
	
		$(document).ready(function(){
	
		  // set up radio boxes
			$('.radioholder').each(function(){
				$(this).children().hide();
				var description = $(this).children('label').html();
				$(this).append('<span class="desc">'+description+'</span>');
				$(this).prepend('<span class="tick"></span>');
				// on click, update radio boxes accordingly
				$(this).click(function(){
					$(this).children('input').prop('checked', true);
					$(this).children('input').trigger('change');
				});
			});
			// update radio holder classes when a radio element changes
			$('input[type=radio]').change(function(){
		    $('input[type=radio]').each(function(){
		      if($(this).prop('checked') == true) {   
		        $(this).parent().addClass('activeradioholder');
		      }
					else $(this).parent().removeClass('activeradioholder');
				});
			});
			// manually fire radio box change event on page load
			$('input[type=radio]').change();
	
		
			// preload hover images
		  preload([
		    'http://supereightstudio.com/img/radio_tick.png',
		    'http://supereightstudio.com/img/pulldown.png',
		    'http://supereightstudio.com/img/pulldown_hover.png'
		  ]);
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
</body>
</html>