<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/register.css">
<!-- colorbox창 -->
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<!-- alert창 (등록) -->
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">
</head>
<body>
	<form id="frm" method="post" action="/artist/upload" enctype="multipart/form-data">
			<h1>Register</h1>
			<div class="control">
				<input type="text" id="artistName" name="artistName" placeholder="ARTISTNAME" />
			</div>

      <!-- genre 나중에 수정할거임
	    <div class="drop">
	        <div class="option active placeholder" data-value="placeholder">
            GENRE
	        </div>
	        <div class="option" data-value="R & B" >
	         R & B
	        </div>
          <div class="option" data-value="힙합 & RAP">
	            힙합 & RAP
	        </div>
	        <div class="option" data-value="어쿠스틱">
	           어쿠스틱
	        </div>
	        <div class="option" data-value=" 락">
	            락
	        </div>
	        <div class="option" data-value="일렉트로닉"> 
	           일렉트로닉
	        </div>
	     </div> 
      -->

		<select name="genre" class="drop" title="select genre">
					<option selected="selected">GENRE</option>
					<option value="R&B">R&B</option>
					<option value="힙합 & RAP">힙합 & RAP</option>
					<option value="어쿠스틱">어쿠스틱</option>
					<option value="락">락</option>
					<option value="일렉트로닉">일렉트로닉</option>
		</select>
     <div class="filebox bs3-primary preview-image">
			  <input class="upload-name" placeholder="PROFILE"
						disabled="disabled"> <label for="input_file">UPLOAD</label>
				<input type="file" id="input_file" name="uploadfile"
						class="upload-hidden">
		</div>

    <div class="control">
				<input type="text" id="introduce" name="introduce"
						placeholder="INTRODUCE" />
		</div>
				
		<div class="control submit">
			   <!--      <button id="uploadbutton">register</button> -->
				<input type="button" id="uploadbutton" value="register" />
				<input type="button" id="closebutton" value="취소"/>
		</div>
	</form>

<!--javascript 모음  -->  
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js" type="text/javascript"></script>


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

<!-- 아티스트 추가 javascript -->
	<script type="text/javascript">
			$(function(){
			    $("#uploadbutton").click(function(){
			        var form = $('form')[0];
			        var formData = new FormData(form);
			            $.ajax({
			               url: '/artist/upload',
			               processData: false,
			               contentType: false,
			               data: formData,
			               type: 'POST',
			               success: function(result){
			            	   swal({
			            		   title: "아티스트 등록하시겠습니까?",
			            		   type: "info",
			            		   showCancelButton: true,
			            		   closeOnConfirm: false,
			            		   showLoaderOnConfirm: true
			            		   }, function () {
			            		   setTimeout(function () {	   
			            				parent.location.href = '/artist/listArtist';
			            				}, 2000);			               
			            		   });											  
			            	 }			            
				         });		          
			  });
			});
//이미지 미리보기 자바스크립트
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
<!-- 취소버튼 -->
<script>
    $("#closebutton").on("click",function(){
        	  parent.location.href = '/artist/listArtist';
    });
</script>
</body>
</html>