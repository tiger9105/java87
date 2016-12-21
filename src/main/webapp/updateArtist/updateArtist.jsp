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
<link rel="stylesheet" href="/css/register.css">
</head>

<body>
	<form enctype="multipart/form-data">
	
			<h1>Artist 수정</h1>
			<div class="control">
				<input type="text" id="artistName" name="artistName" value="${artist.artistName}" />
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
			<div class="upload-display">
				<div class="upload-thumb-wrap">
					<%--<c:if test="${empty artist.image}">
							<img src="/images/uploadFiles/Straight-Up.png"
								class="upload-thumb" name="upload_image">
						</c:if> --%>
					<c:if test="${!empty artist.image}">
						<img src="/images/uploadFiles/${artist.image}"
							class="upload-thumb" name="upload_image">
					</c:if>
					</div>
				</div>
			<input class="upload-name" value="PROFILE" disabled="disabled" >
			<label for="input_file">UPLOAD </label> <input type="file"
					id="input_file" name="uploadfile" class="upload-hidden">
		</div>
			
		

    <div class="control">
				<input type="text" id="introduce" name="introduce"
						value="${artist.introduce}"/>
		</div>
				
		<div class="control submit">
			   <!--      <button id="uploadbutton">register</button> -->
				<input type="button" id="uploadbutton" value="register" />
				<input type="button" id="closebutton" value="취소"/>
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
                     url: '/artist/updateArtist',
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

