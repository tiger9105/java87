<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/* Transitions */

.LikeAritst {
  transition-property: all;
  transition-duration: 0.4s;
  transition-timing-function: ease-out;
}

/* General styling */

.LikeAritst {
  background: #ff9999;

  border-radius: 1em;
  color: #fff;
  cursor: pointer;
  font-size: 24px;
  font: Helvetica, Arial, Sans-serif;
  padding: 1em 3em;
}

.LikeAritst:hover {
  background: #ff9999;
  color: #fff;
  font-size: 27px;
}

</style>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/getArtist.css">
<link rel="stylesheet" href="/getArtist/getArtist.css">
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">

</head>
<body>

	<section> 
	<input type="radio" id="profile" value="1" name="tractor" checked='checked' />
	 <input type="radio" id="settings"value="2" name="tractor" />
	  <input type="radio" id="posts" value="3"	name="tractor" /> 
	  <input type="radio" id="books" value="4"	name="tractor" />
	  <nav> 
	  <label for="profile"		class='fontawesome-camera-retro'></label>
	   <label for="settings"	class='fontawesome-film'></label> 
	   <label for="posts"		class='fontawesome-calendar'></label> 
	   <label for="books"	class='fontawesome-list-alt'></label>
	    </nav> 
		
		
		
		<article class='uno'>
			<h2>
				<img alt='' src='/images/uploadFiles/${artist.image}' />
				<button class='fontawesome-up' onclick="button1_click();"></button>
				${artist.artistName }<br>
				
				장르 : ${artist.genre}<br>
		
				소개글 : ${artist.introduce}<br>
		
		
			</h2>
  <input type="hidden" name="artistjjim" id="artistjjim" value="${artist.artistNo}">
      
      <button   style="margin-left:200px;" class="LikeAritst" id="jjim_btn">LIKE</button>
        

		</article>
	 <article class='dos fontawesome-wrench'>
	<p>Music</p>
	<div class="myvideo"></div>
	<input type="hidden" id="hiddenNo" value="${artist.artistNo}">
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
                    	 swal({
                             title:"",     
                             text:"찜목록에 이미 있습니다.",
                             confirmButtonColor:"#ff2770",
                             imageSize:"40x40"
                           });
                     }
                     else{
                    	 swal({
                             title:"",     
                             text:"찜목록에 추가 되었습니다.",
                             confirmButtonColor:"#ff2770",
                             imageSize:"40x40"
                           });
                     }
                 }                  
          });              
      });
    });
	  
	
	$("#settings").one("click",function(){
		var artNo =$("#hiddenNo").val();
	      console.log(artNo);
	      console.log("ajax실행전 ");
	      $.ajax({
	        url:'/video/artistvideos/'+artNo,
	        processData: false,
	        contentType: false,
	        type:'GET',
	        success:function(list){
	         // console.log(list[0]);
	         var youtubesrc="https://www.youtube.com/embed/";
	         
	         console.log(youtubesrc);
	          $.each((list),function(index,value){
	             $(".myvideo").append("<iframe width='100%' height='200' src="+(youtubesrc+value.url)+" frameborder='0'></iframe>")
	          });
	                  
	        }
	      });
	});

	</script>



</body>
</html>