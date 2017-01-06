<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">

<style type="text/css">
body {
  background-color: #ffffff;
  font-family: "Open Sans", Arial, Helvetica;
  margin-top: 50px;
  font-size: 14px;
}
div {
  width: 400px;
  margin: 0 auto;
  text-align: center;
}
h1 {
  margin-bottom: 1.5em;
  font-size: 30px;
  color: #ff2770;
  font-weight: 100;
}
 h1 span {
  display:block;
  font-size: 20px;
  color: #000000;
 }
form p { position: relative; }
label { 
  position: absolute;
  left:-9999px;
  text-indent: -9999px;
}
input {
  width: 250px;
  padding: 15px 12px;
  margin-bottom: 5px;
  border: 1px solid #e5e5e5;
  border-bottom: 2px solid #ddd;
  background: #f2f2f2;
  color: #555;
}

  /* // ////////////////*/
  


.searchBtn {
  position:relative;
  border:0;
  margin:0;
  padding:0;
  cursor:pointer;
  font-size:1rem;
  font-weight:bold;
  color:rgba(0,0,0,0);
  background:transparent;
  border-radius:.25rem;
  -webkit-tap-highlight-color: rgba(0,0,0,0);
  -webkit-touch-callout: none;
}

.searchBtn,
.searchBtn:after,
.searchBtn:before {
  padding:.6875rem 2rem;
  -webkit-transition:-webkit-transform 0.75s,background-color .125s;
  -moz-transition:-moz-transform 0.75s,background-color .125s;
  -ms-transition:-ms-transform 0.75s,background-color .125s;
  transition:transform 0.75s,background-color .125s;
  -webkit-transform-style:preserve-3d;
  -moz-transform-style:preserve-3d;
  -ms-transform-style:preserve-3d;
  transform-style:preserve-3d;
}

.searchBtn:after,
.searchBtn:before {
  position:absolute;
  top:0;
  bottom:0;
  left:0;
  right:0;
  border-radius:.25rem;
  -webkit-backface-visibility:hidden;
  -moz-backface-visibility:hidden;
  -ms-backface-visibility:hidden;
  backface-visibility:hidden;

}

.searchBtn:before {
  z-index:2;
  color:#fff;
  background-color:#ff2770;
  content:attr(data-label);
}

.searchBtn:after {
  z-index:1;
  background-color:#999;
  background-repeat:no-repeat;
  background-position:center center;
  background-image:url(data:image/gif;base64,R0lGODlhEAAQAPIAAJmZmf///7CwsOPj4////9fX18rKysPDwyH+GkNyZWF0ZWQgd2l0aCBhamF4bG9hZC5pbmZvACH5BAAKAAAAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAADMwi63P4wyklrE2MIOggZnAdOmGYJRbExwroUmcG2LmDEwnHQLVsYOd2mBzkYDAdKa+dIAAAh+QQACgABACwAAAAAEAAQAAADNAi63P5OjCEgG4QMu7DmikRxQlFUYDEZIGBMRVsaqHwctXXf7WEYB4Ag1xjihkMZsiUkKhIAIfkEAAoAAgAsAAAAABAAEAAAAzYIujIjK8pByJDMlFYvBoVjHA70GU7xSUJhmKtwHPAKzLO9HMaoKwJZ7Rf8AYPDDzKpZBqfvwQAIfkEAAoAAwAsAAAAABAAEAAAAzMIumIlK8oyhpHsnFZfhYumCYUhDAQxRIdhHBGqRoKw0R8DYlJd8z0fMDgsGo/IpHI5TAAAIfkEAAoABAAsAAAAABAAEAAAAzIIunInK0rnZBTwGPNMgQwmdsNgXGJUlIWEuR5oWUIpz8pAEAMe6TwfwyYsGo/IpFKSAAAh+QQACgAFACwAAAAAEAAQAAADMwi6IMKQORfjdOe82p4wGccc4CEuQradylesojEMBgsUc2G7sDX3lQGBMLAJibufbSlKAAAh+QQACgAGACwAAAAAEAAQAAADMgi63P7wCRHZnFVdmgHu2nFwlWCI3WGc3TSWhUFGxTAUkGCbtgENBMJAEJsxgMLWzpEAACH5BAAKAAcALAAAAAAQABAAAAMyCLrc/jDKSatlQtScKdceCAjDII7HcQ4EMTCpyrCuUBjCYRgHVtqlAiB1YhiCnlsRkAAAOwAAAAAAAAAAAA==);
  -webkit-transform:rotateX(180deg);
  -moz-transform:rotateX(180deg);
  -ms-transform:rotateX(180deg);
  transform:rotateX(180deg);
  content:'';
}

.searchBtn:active:before {
  background-color:#3571c8;
}

.searchBtn.loading {
  -webkit-transform:rotateX(180deg);
  -moz-transform:rotateX(180deg);
  -ms-transform:rotateX(180deg);
  transform:rotateX(180deg);
}
  
 /*폰트  /// */
 #id{
  font-family: 'kiwibananabold';
}

@font-face {
font-family: 'kiwibananabold'; /* 폰트 패밀리 이름 주기*/
src: url("/fonts/kiwibananabold.ttf"); /*폰트 파일 주소*/
}

  
  

</style>
</head>
<body>
<div>
  <h1 style="font-family: kiwibananabold; font-size: 50px; margin-bottom:20px; ">비밀번호 찾기<span >-이메일을 입력하세요.-</span></h1>
  <form>
     <p>
      <label for="password">Your password</label>
      <input type="text" value=""  id="EmCheck" class="EmCheck"  style="padding-bottom: 11px;" placeholder="Email을 입력해주세요.">
      <button id="try" class="searchBtn" data-label="검색">검색</button>
		<div id="resultDIV">
	  <!-- Ajax 로딩시 이미지 출력 영역 -->
			  <div id="ajax_indicator" style="display:none">
			   <p style="text-align:center; padding:16px 0 0 0; left:45.5%; top:10%; position:absolute;"><img style="width:120px;height:80px;"src="../images/front/ajax-load.gif"/></p>
			  </div>﻿
			</div>
		</div>      
    </p>
  </form>
</div>
<!-- Script -->
	<script src="../node_modules/jquery/dist/jquery.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>
<script type="text/javascript">
$('#try').on('click', function(){
		var EmCheck = $("#EmCheck").val();
		$('#contents').empty().html('<img width:120px;height:80px; src="./ajax-loader.gif" />');
	
		$.ajax({
		    type: "post",
		    global: true,
		    async: true,
		    url: "/user/findPwd",
		    dataType : "html",
		    timeout: 30000,
		    cache: true,
		    data: {"EmCheck":EmCheck},
		    contentType : "application/x-www-form-urlencoded; charset=utf-8",
		    error: function (jqXHR, textStatus, errorThrown) {
		        swal(errorThrown);
		        swal(textStatus);
		    },
		    success: function (data, textStatus, jqXHR) {
		       	
		    	if(data=='true'){
		        	/* swal("패스워드를 메일로 발송하였습니다."); */
		    		swal({
		                title:"",     
		                text:"패스워드를 메일로 발송하였습니다.",
		                confirmButtonColor:"#ff2770",
		                imageSize:"40x40"
		              });
		        }else{
		       /*  	swal("발송실패, 이메일 확인하세요."); */
		        	swal({
		                title:"",     
		                text:"발송실패, 이메일 확인하세요.",
		                confirmButtonColor:"#ff2770",
		                imageSize:"20x40"
		              });
		        	
		        }
	  	    },
		/*     beforeSend: function (jqXHR, settings) {
		    	 $('#ajax_indicator').show().fadeIn('fast'); 

		    },*/
		   /*  complete: function (jqXHR, settings) {
		    	swal("이메일을 확인하세요.");
		    }  */
		});
	  return false;
	});
</script>

<!-- try에대한   버튼 이쁜거  -->
<script type="text/javascript">

var loading = function(e) {
  e.preventDefault();
  e.stopPropagation();
  e.target.classList.add('loading');
  e.target.setAttribute('disabled','disabled');
  setTimeout(function(){
    e.target.classList.remove('loading');
    e.target.removeAttribute('disabled');
   },1000);
};

var btns = document.querySelectorAll('button');
for (var i=btns.length-1;i>=0;i--) {
  btns[i].addEventListener('click',loading);
}


</script>


</body>
</html>