<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/getArtist.css">
<link rel="stylesheet" href="/getArtist/getArtist.css">
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">

</head>
<body>

	<section> 
	<input type="radio" id="profile" value="1"
		name="tractor" checked='checked' /> <input type="radio" id="settings"
		value="2" name="tractor" /> <input type="radio" id="posts" value="3"
		name="tractor" /> <input type="radio" id="books" value="4"
		name="tractor" /> <nav> <label for="profile"
		class='fontawesome-camera-retro'></label> <label for="settings"
		class='fontawesome-film'></label> <label for="posts"
		class='fontawesome-calendar'></label> <label for="books"
		class='fontawesome-list-alt'></label> </nav> 
		
		
		
		<article class='uno'>
			<h2>
				<img alt='' src='/images/uploadFiles/${artist.image}' />
				<button class='fontawesome-up' onclick="button1_click();"></button>
				${artist.artistName }<br>
				
				장르 : ${artist.genre}<br>
		
				소개글 : ${artist.introduce}<br>
		
		
			</h2>
  <input type="hidden" name="artistjjim" id="artistjjim" value="${artist.artistNo}">
      
      <input type="button" id="jjim_btn" value="찜버튼">
        

		</article> <article class='dos fontawesome-wrench'>
	<p>내가 올린 동영상</p>
	</article> <article class='tres fontawesome-file-alt'>
	<ol>

		<li>Dimensionado de im찼genes y objetos en CSS</li>
		<li>Evita pulsaciones no deseadas al hacer scroll</li>
		<li>쩔Qu챕 es CSS?</li>
		<li>CSS Style Attributes. La especificaci처n</li>
		<li>M첬ltiples labels por cada input</li>
		<li>Sintaxis de Css y Glosario de t챕rminos</li>
	</ol>
	</article> <article class='cuatro fontawesome-copy'>
	<dl>
		<dt>Gu챠a de Transiciones Css</dt>
		<dd>Todas y cada una de las propiedades css que componen el grupo
			de lass transitions con demos.</dd>
		<dt>@Font-face y sus problemas</dt>
		<dd>Los problemas m찼s comunes y sus soluciones, que suelen
			presentarse al utilizar la regla @font-face de Css para mostrar los
			textos en tipograf챠as distintas a las safety fonts.</dd>
	</dl>
	</article> </section>


	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	  <script src="/node_modules/sweetalert/dist/sweetalert.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function(){
        $("#jjim_btn").click(function(){
            var artNo = $("#artistjjim").val();
              $.ajax({
                   url:'/user/addLikeArt/'+artNo,
                   type: 'GET',
                   success: function(userlikeart){
                     console.log("여기들어왔다옴");
                     if(userlikeart.artNo==0 && userlikeart.userNo==0 ){
                     swal("찜목록에 이미들어갔슴");
                     }
                     else{
                       swal("찜목록에 추가로들어갔슴");
                     }
                 }                  
          });              
      });
    });

	</script>



</body>
</html>