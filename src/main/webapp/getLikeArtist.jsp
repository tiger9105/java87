<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
  href="/node_modules/bootstrap/dist/css/bootstrap.min.css">

<link rel="stylesheet"
  href="/node_modules/bootstrap/dist/css/bootstrap-theme.min.css">


<link rel="stylesheet" href="/css/getLikeArtist.css">

<!-- colorbox창 -->
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<!-- alert창 (등록) -->
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">


<style>
  .container {

    width: 750px !important;
 
}

.team-member figure {
    width: 240px !important;
    height: 180px !important;

 
}

</style>
</head>
 
<body>
<section id="team" class="team content-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 style="width: 550px">Following Artists</h2>
          <h3 class="captiongray" style="width: 550px">Artist profile</h3>
        </div>
      </div>
    </div>
  </section>
  

<!-- 반복문으로 artists 뽑아오는 곳(getArtistList) -->

  <section id="team" class="team content-section">
      <div class="container">
        <div class="row text-center">
          <div class="container">
            <div class="row">
            
              <c:forEach var="artist" items="${artistList}">
                <div class="col-md-4">
                  <div class="team-member">
                    <figure> 
                      <img src="/images/uploadFiles/${artist.image}" alt="" class="img-responsive">
                      <figcaption>    
                        <ul>
                          <li><i class="fa fa-facebook fa-2x"></i></li>
                          <li><i class="fa fa-twitter fa-2x"></i></li>
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

<!--javascript 모음  -->  
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>

	
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
   	 $(".ajax").colorbox({iframe:true, width:"40%", height:"650px", fixed: true});
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

<!-- 아티스트 눌렀을 떄 나오는 자바스크립트(getArtist) -->
	<script type="text/javascript">
  		 $('i[id^=getArtist]').on("click", function() {
    		var artNo = $(this).attr("id").replace("getArtist_","");
	    	$.colorbox({
	        closeButton : "false",
	        iframe : "true",
	        href : "/artist/getArtist/"+artNo, 
	        width : "640px",
	        height : "600px",
	        fixed : true,
	        scrolling : false   
      		}); 
    	 });
	</script>

<!-- 등록했을떄 나오는 alert창 -->
	<script type="text/javascript">
	    $('.pulse-button').on("click", function() {
	    	$.colorbox({
	        closeButton : "false",
	        iframe : "true",
	        href : "/register/register.jsp", 
	        width : "600px",
	        height : "650px",
	        fixed : true,
	        scrolling : false	       
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
	
	
	
</body>
</html>