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
	
			<h1>Artist ����</h1>
			<div class="control">
				<input type="text" id="artistName" name="artistName" value="${artist.artistName}" />
			</div>

      <!-- genre ���߿� �����Ұ���
	    <div class="drop">
	        <div class="option active placeholder" data-value="placeholder">
            GENRE
	        </div>
	        <div class="option" data-value="R & B" >
	         R & B
	        </div>
          <div class="option" data-value="���� & RAP">
	            ���� & RAP
	        </div>
	        <div class="option" data-value="����ƽ">
	           ����ƽ
	        </div>
	        <div class="option" data-value=" ��">
	            ��
	        </div>
	        <div class="option" data-value="�Ϸ�Ʈ�δ�"> 
	           �Ϸ�Ʈ�δ�
	        </div>
	     </div> 
      -->

		<select name="genre" class="drop" title="select genre">
					<option selected="selected">GENRE</option>
					<option value="R&B">R&B</option>
					<option value="���� & RAP">���� & RAP</option>
					<option value="����ƽ">����ƽ</option>
					<option value="��">��</option>
					<option value="�Ϸ�Ʈ�δ�">�Ϸ�Ʈ�δ�</option>
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
				<input type="button" id="closebutton" value="���"/>
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
                    	/*    alert('�����Ǿ����ϴ�');
                    	   location.href="updateUser.jsp";
                    	   */
                    	 /*     $.ajax({
                    	    	  		 url:'/user/getUser',
                    	    	  		 contentType:false,
                    	    	  		 data:"userId"=+user.userId,
                    	    	  		 type:'GET',
                    	    	  		  success: function(){
                    	    	  			    alert('����');
                    	    	  			   }
                    		                     		 
                    	 });  */
                       swal({
                           title: "�����Ͻðڽ��ϱ�??",
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
									// ���ϸ� ����
									var filename = $(this)[0].files[0].name;
								}

								else {
									// Old IE ���ϸ� ����
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
													//image ���ϸ�
													if (!$(this)[0].files[0].type
															.match(/image\//))
														return;

												//	console.log($(".filebox").attr("id"));
												//	console.log($("#user_id").attr("name"));
													// console.log("���� �����ϳ� ");
													var reader = new FileReader();
													reader.onload = function(e) {
													//	console.log("���� �����ϳ� ");
														var src = e.target.result;

														parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
													}
													reader
															.readAsDataURL($(this)[0].files[0]);
												}
												//����ڴ� else�� 
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

