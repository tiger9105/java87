<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="node_modules/sweetalert/dist/sweetalert.css">
<style type="text/css">
#form {
	min-width: 400px;
	width: 35%;
	padding: 3% 3%;
	margin: 20px auto;
	background: #fff;
	box-shadow: 0 20px 28px #ddd;
}

#form .control {
	position: relative;
	margin-bottom: 10px;
	padding-top: 20px;
}

#form .control label {
	position: absolute;
	top: 30px;
	left: 0;
	-webkit-transition: .3s ease;
	transition: .3s ease;
	font-weight: 600;
	letter-spacing: 2px;
	font-size: 16px;
}

#form .control.submit {
	text-align: right;
}

#form input {
	width: 80%;
	border: none;
	border-bottom: 2px solid #e3e3e3;
	outline: none;
	padding: 10px 0;
	padding-left: 12px;
	letter-spacing: 3px;
	font-size: 16px
}

#uploadbutton {
	width: auto;
	background: rgba(254, 82, 76, 1);;
	color: #fff;
	padding: 10px 40px;
	border-radius: 2px;
	cursor: pointer;
}

#closebutton {
  width: auto;
  background: rgba(254, 82, 76, 1);;
  color: #fff;
  padding: 10px 40px;
  border-radius: 2px;
  cursor: pointer;
}

#h1 {
	text-transform: uppercase;
	color: rgba(254, 82, 76, 1);;
}

#h1:after {
	content: "";
	display: block;
	width: 150px;
	height: 3px;
	background: rgba(254, 82, 76, 1);;
	margin: 15px 0;
	opacity: .9;
}

/* //////////////////////////////////////GENRE////////////////////////////		 */
.drop {
	width: 80%;
	color: black;
	text-transform: uppercase;
	position: relative;
	-webkit-transition: width 0.5s;
	transition: width 0.5s;
	will-change: width;
	letter-spacing: 2px;
}

.drop .option {
	padding: 0.8em;
	cursor: pointer;
	background-color: white;
}

.drop .option:not (.active ) {
	display: none;
	opacity: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

.drop.visible {
	-webkit-animation: bounce 1s;
	animation: bounce 1s;
	width: 24em;
}

.drop.visible:before, .drop.visible:after {
	border-color: #fff;
}

.drop.visible:before {
	opacity: 0;
}

.drop.visible:after {
	opacity: 1;
}

.drop.visible .option {
	color: gray;
	display: block;
}

.drop.opacity .option {
	-webkit-transform: translateZ(0);
	transform: translateZ(0);
	opacity: 1;
}

.drop.opacity .option:nth-child(0) {
	-webkit-transition: opacity 0.5s 0s, -webkit-transform 0.5s 0s;
	transition: opacity 0.5s 0s, -webkit-transform 0.5s 0s;
	transition: opacity 0.5s 0s, transform 0.5s 0s;
	transition: opacity 0.5s 0s, transform 0.5s 0s, -webkit-transform 0.5s
		0s;
}

.drop.opacity .option:nth-child(1) {
	-webkit-transition: opacity 0.5s 0.1s, -webkit-transform 0.5s 0.1s;
	transition: opacity 0.5s 0.1s, -webkit-transform 0.5s 0.1s;
	transition: opacity 0.5s 0.1s, transform 0.5s 0.1s;
	transition: opacity 0.5s 0.1s, transform 0.5s 0.1s, -webkit-transform
		0.5s 0.1s;
}

.drop.opacity .option:nth-child(2) {
	-webkit-transition: opacity 0.5s 0.2s, -webkit-transform 0.5s 0.2s;
	transition: opacity 0.5s 0.2s, -webkit-transform 0.5s 0.2s;
	transition: opacity 0.5s 0.2s, transform 0.5s 0.2s;
	transition: opacity 0.5s 0.2s, transform 0.5s 0.2s, -webkit-transform
		0.5s 0.2s;
}

.drop.opacity .option:nth-child(3) {
	-webkit-transition: opacity 0.5s 0.3s, -webkit-transform 0.5s 0.3s;
	transition: opacity 0.5s 0.3s, -webkit-transform 0.5s 0.3s;
	transition: opacity 0.5s 0.3s, transform 0.5s 0.3s;
	transition: opacity 0.5s 0.3s, transform 0.5s 0.3s, -webkit-transform
		0.5s 0.3s;
}

.drop.opacity .option:nth-child(4) {
	-webkit-transition: opacity 0.5s 0.4s, -webkit-transform 0.5s 0.4s;
	transition: opacity 0.5s 0.4s, -webkit-transform 0.5s 0.4s;
	transition: opacity 0.5s 0.4s, transform 0.5s 0.4s;
	transition: opacity 0.5s 0.4s, transform 0.5s 0.4s, -webkit-transform
		0.5s 0.4s;
}

.drop.opacity .option:nth-child(5) {
	-webkit-transition: opacity 0.5s 0.5s, -webkit-transform 0.5s 0.5s;
	transition: opacity 0.5s 0.5s, -webkit-transform 0.5s 0.5s;
	transition: opacity 0.5s 0.5s, transform 0.5s 0.5s;
	transition: opacity 0.5s 0.5s, transform 0.5s 0.5s, -webkit-transform
		0.5s 0.5s;
}

.drop.opacity .option:nth-child(6) {
	-webkit-transition: opacity 0.5s 0.6s, -webkit-transform 0.5s 0.6s;
	transition: opacity 0.5s 0.6s, -webkit-transform 0.5s 0.6s;
	transition: opacity 0.5s 0.6s, transform 0.5s 0.6s;
	transition: opacity 0.5s 0.6s, transform 0.5s 0.6s, -webkit-transform
		0.5s 0.6s;
}

.drop.opacity .option:nth-child(7) {
	-webkit-transition: opacity 0.5s 0.7s, -webkit-transform 0.5s 0.7s;
	transition: opacity 0.5s 0.7s, -webkit-transform 0.5s 0.7s;
	transition: opacity 0.5s 0.7s, transform 0.5s 0.7s;
	transition: opacity 0.5s 0.7s, transform 0.5s 0.7s, -webkit-transform
		0.5s 0.7s;
}

.drop.opacity .option:nth-child(8) {
	-webkit-transition: opacity 0.5s 0.8s, -webkit-transform 0.5s 0.8s;
	transition: opacity 0.5s 0.8s, -webkit-transform 0.5s 0.8s;
	transition: opacity 0.5s 0.8s, transform 0.5s 0.8s;
	transition: opacity 0.5s 0.8s, transform 0.5s 0.8s, -webkit-transform
		0.5s 0.8s;
}

.drop.opacity .option:nth-child(9) {
	-webkit-transition: opacity 0.5s 0.9s, -webkit-transform 0.5s 0.9s;
	transition: opacity 0.5s 0.9s, -webkit-transform 0.5s 0.9s;
	transition: opacity 0.5s 0.9s, transform 0.5s 0.9s;
	transition: opacity 0.5s 0.9s, transform 0.5s 0.9s, -webkit-transform
		0.5s 0.9s;
}

.drop.withBG .option {
	-webkit-transition: background-color 0.1s;
	transition: background-color 0.1s;
}

.drop.withBG .option:not (.placeholder ):hover {
	background-color: rgba(242, 104, 43, 0.55);
}

.drop.withBG .option:not (.placeholder ).active {
	background-color: rgba(228, 32, 32, 0.61);
}

.drop:after, .drop:before {
	content: "";
	position: absolute;
	top: 1.5em;
	right: 1em;
	width: 0.75em;
	height: 0.75em;
	border: 0.2em solid rgba(254, 82, 76, 1);
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
	-webkit-transform-origin: 50% 50%;
	transform-origin: 50% 50%;
	-webkit-transition: opacity 0.2s;
	transition: opacity 0.2s;
}

.drop:before {
	border-left: none;
	border-top: none;
	top: 1.2em;
}

.drop:after {
	border-right: none;
	border-bottom: none;
	opacity: 0;
}

.mini-hack {
	opacity: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

/* //////////////////FILE UPLOAD/////////////// */
.where {
	display: block;
	margin: 25px 15px;
	font-size: 11px;
	color: #000;
	text-decoration: none;
	font-family: verdana;
	font-style: italic;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
	margin-bottom: 10px;
	padding-top: 30px;
	width: 60%;
	display: inline-block;
	padding-left: 12px;
	letter-spacing: 3px;
	font-size: 16px;
	color: gray;
	background-color: white;
	border: none;
	border-bottom: 2px solid #e3e3e3;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

/* imaged preview */
.filebox .upload-display {
	margin-bottom: 5px;
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		margin-bottom: 10px;
		padding-top: 20px;
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}

.filebox .upload-thumb-wrap {
	display: inline-block;
	width: 54px;
	padding: 2px;
	vertical-align: middle;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

.filebox .upload-display img {
	display: block;
	max-width: 100%;
	width: 100% \9;
	height: auto;
}

.filebox.bs3-primary label {
	background: rgba(254, 82, 76, 1);
	color: white;
	border-radius: 2px;
	cursor: pointer;
	text-transform: uppercase;
}
</style>

</head>

<body>

	<form id="form" enctype="multipart/form-data">
	 
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
	<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="node_modules/sweetalert/dist/sweetalert.min.js"></script>
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
                           showLoaderOnConfirm: true
                         }, function () {
                           setTimeout(function () {
                        	    parent.location.href = 'index.jsp';
                            }, 3000);
                         }); 
                    	
                       }
                  });
         });
          
          
          $("#closebutton").on("click",function(){
        	  parent.location.href = 'index.jsp';
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

