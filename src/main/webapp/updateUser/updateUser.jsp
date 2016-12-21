<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/node_modules/sweetalert/dist/sweetalert.css">
<link rel="stylesheet" href="/updateUser/updateUser.css">
<link rel="stylesheet" href="/css/updateUser.css">
</head>

<body>

	<form enctype="multipart/form-data">
	 
		<h1 id="h1">내 정보 수정</h1>
		<div class="control">
			<input type="text" placeholder="user_ID" id="user_id"
				name="user_Id" value="${user.userId }">
		</div>
		<div class="control">
			<input type="password" placeholder="PASS WORD" name="password" value="${user.password}"/>
		</div>
		<div class="control">
			<input type="text" placeholder="EMAIL"name="email" value="${user.email}"/>
		</div>

		<div class="filebox bs3-primary preview-image">
			<div class="upload-display">
				<div class="upload-thumb-wrap">
				<%-- 	<c:if test="${empty user.filepath}">
						<img src="/images/uploadFiles/Straight-Up.png"
							class="upload-thumb" name="upload_image">
					</c:if> --%>
					<c:if test="${!empty user.filepath}">
						<img src="/images/uploadFiles/${user.filepath}"
							class="upload-thumb" name="upload_image">
					</c:if>
				</div>
			</div>
			<input class="upload-name" value="PROFILE" disabled="disabled" >
			<label for="input_file">프로필사진 업로드 </label> <input type="file"
				id="input_file" name="uploadfile" class="upload-hidden">
		</div>
		<div class="control submit">
			<input type="button" style="width: 30%;"id="uploadbutton" value="수정"> 
			<input type="button" style="width: 30%;" id="closebutton" value="취소">
		</div>
	</form>
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
	  $(function(){
          $("#uploadbutton").click(function(){
              var form = $('form')[0];
              var formData = new FormData(form);
                  $.ajax({
                     url: '/user/updateUser',
                     processData: false,
                     contentType: false,
                     data: formData,
                     type: 'POST',
                     success: function(user){
                    	/*    alert('수정되었습니다');
                    	   location.href="updateUser.jsp";
                    	   */
                    	 /*     $.ajax({
                    	    	  		 url:'/user/getUser',
                    	    	  		 contentType:false,
                    	    	  		 data:"userId"=+user.userId,
                    	    	  		 type:'GET',
                    	    	  		  success: function(){
                    	    	  			    alert('성공');
                    	    	  			   }
                    		                     		 
                    	 });  */
                       swal({
                           title: "수정하시겠습니까??",
                           type: "info",
                           showCancelButton: true,
                           closeOnConfirm: false,
                           confirmButtonColor : "rgba(254, 82, 76, 1)",
                           showLoaderOnConfirm: true
                         }, function () {
                           setTimeout(function () {
                        	   parent.location.href = '/artist/listArtist';
                            }, 3000);
                         }); 
                    	
                       }
                  });
         });
          
          
          $("#closebutton").on("click",function(){
        	  parent.location.href = '/artist/listArtist';
          });
                   
      });
	
	
		/* $(document)
				.ready(
						function() {
							$(".drop .option")
									.click(
											function() {
												var val = $(this).attr(
														"data-value"), $drop = $(".drop"), prevActive = $(
														".drop .option.active")
														.attr("data-value"), options = $(".drop .option").length;
												$drop.find(".option.active")
														.addClass("mini-hack");
												$drop.toggleClass("visible");
												$drop.removeClass("withBG");
												$(this).css("top");
												$drop.toggleClass("opacity");
												$(".mini-hack").removeClass(
														"mini-hack");
												if ($drop.hasClass("visible")) {
													setTimeout(
															function() {
																$drop
																		.addClass("withBG");
															},
															400 + options * 100);
												}
												triggerAnimation();
												if (val !== "placeholder"
														|| prevActive === "placeholder") {
													$(".drop .option")
															.removeClass(
																	"active");
													$(this).addClass("active");
												}
												;
											});

							function triggerAnimation() {
								var finalWidth = $(".drop").hasClass("visible") ? 22
										: 20;
								$(".drop").css("width", "24em");
								setTimeout(function() {
									$(".drop").css("width", finalWidth + "em");
								}, 400);
							}
						}); */
	</script>

	<script type="text/javascript">
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

							imgTarget.on('change',
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

												//	console.log($(".filebox").attr("id"));
												//	console.log($("#user_id").attr("name"));
													// console.log("여기 오긴하냐 ");
													var reader = new FileReader();
													reader.onload = function(e) {
													//	console.log("여기 오긴하냐 ");
														var src = e.target.result;

														parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
													}
													reader
															.readAsDataURL($(this)[0].files[0]);
												}
												//여기뒤는 else문 
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



</body>


</html>

