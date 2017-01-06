<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<style type="text/css">
/**
 * Resize images without JavaScript or jQuery
 */


li img {
  max-height: 150px;
  max-width: 150px;
}

/**
 * IGNORE - Not required. Just some eye candy
 */
 
 /* 유투브가 들어갈 li css */
.lioption {
  list-style: none;
  box-shadow: 0 0 10px #ccc;
  float: left;
  margin: 50px 0 0 50px;
  padding: 0;
  text-align: center;
  
    height: 300px;
  width: 300px;
}


 /* VS가 들어갈 li css */
.lioption1 {
  list-style: none;

  float: left;
  margin: 50px 0 0 50px;
  padding: 0;
  text-align: center;
  
}


 /* 대결구도전체적인 틀 ul 가운데 정렬옵션을줌 */
.uloption{
  width : 1200px;
  margin:0 auto;
}


/*여기는 셀렉문 css*/
/* -------------------- Page Styles (not required) */

/* -------------------- Select Box Styles: bavotasan.com Method (with special adaptations by ericrasch.com) */
/* -------------------- Source: http://bavotasan.com/2011/style-select-box-using-only-css/ */
.styled-select {
  background: url(http://i62.tinypic.com/15xvbd5.png) no-repeat 96% 0;
  height: 25px;
  overflow: hidden;
  width: 240px;
}
.styled-select select {
  background: transparent;
  border: none;
  font-size: 14px;
  height: 29px;
  padding: 5px;
  /* If you add too much padding here, the options won't show in IE */
  width: 268px;
}

/* -------------------- Rounded Corners */
.rounded {
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
}
.semi-square {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}
/* -------------------- Colors: Background */


.yellow {
  background-color: #eec111;
}

/* -------------------- Colors: Text */


.yellow select {
  color: #000;
}

/* -------------------- Select Box Styles: danielneumann.com Method */
/* -------------------- Source: http://danielneumann.com/blog/how-to-style-dropdown-with-css-only/ */




/*여기는 버튼 css*/
/* Material style */
.votebutton {
  border: none;
  cursor: pointer;
  color: white;
  padding: 1px 20px;
  border-radius: 2px;
  font-size: 22px;
  box-shadow: 2px 2px 4px rgba(0, 0, 0, .4);
  background: #FD7979;
}

/* Ripple magic */
.votebutton{
  position: relative;
  overflow: hidden;
}

.votebutton:after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  width: 5px;
  height: 5px;
  background: rgba(255, 255, 255, .5);
  opacity: 0;
  border-radius: 100%;
  transform: scale(1, 1) translate(-50%);
  transform-origin: 50% 50%;
}

@keyframes ripple {
  0% {
    transform: scale(0, 0);
    opacity: 1;
  }
  20% {
    transform: scale(25, 25);
    opacity: 1;
  }
  100% {
    opacity: 0;
    transform: scale(40, 40);
  }
}

.votebutton:focus:not(:active)::after {
  animation: ripple 1s ease-out;
}
 
</style>
<!-- Basic Page Needs ================================================== 
================================================== -->

<meta charset="utf-8">
<title>Freebix Responsive Site Template</title>
<meta name="description" content="Place to put your description text">
<meta name="author" content="">
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

<!-- Mobile Specific Metas ================================================== 
================================================== -->
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">   
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

<!-- CSS ==================================================
================================================== -->
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">
<link rel="stylesheet" href="/css/upcontest.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/skeleton.css">
<link rel="stylesheet" href="/css/screen.css">
<link rel="stylesheet" href="/css/prettyPhoto.css" type="text/css" media="screen" />

<!-- 새로 추가된 메인 UI로고부분   -->
<link rel="stylesheet" href="/css/UP/UP.css">
<!-- Favicons ==================================================
================================================== -->

<link rel="shortcut icon" href="/images/favicon.png">



<!-- Google Fonts ==================================================
================================================== -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
</head>
<body>
<c:import url="/nav/nav.jsp"></c:import>


<!--Content Part ==================================================
================================================== -->
<div id="header">
  <div class="container"> 
    <!-- Header | Logo, Menu
    ================================================== -->
   
 
    <!-- ㅁㄴㅇㅁ니ㅏㅁㄴ어미ㅏㄴ어ㅣㅁㄴㅇ -->
    <div class="mainmenu">
      <div id="mainmenu">
          <ul class="sf-menu">
            <li><a href="/index.jsp" >Home</a></li>
         
            <li><a href="/artist/listArtist">Artist</a>
            <li><a href="/video/listVideo">Music</a>
            <li><a href="/season/getSeasonlist" id="visited">UP Tournament</a></li>
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
            <option value="/index.jsp">Home</option>
         
            <option value="/artist/listArtist">Artist</option>
            <option value="/video/listVideo">Video</option>
            <option value="/season/getSeasonlist">UP Tournament</option>
        </select>
      </form>
    </div>
    <!-- mainmenu ends here --> 
  </div>
  <!-- container ends here --> 
</div>
<!-- header ends here --> 
<!--Breadcrumbs ==================================================
================================================== -->
<div class="breadcrumbs">
  <div class="container" style="text-align: center;">
    <header>
   
      <h1 style="color:#FE524C;">UP contest</h1>

    </header>
  </div>
  <!-- container ends here -->
  <hr class="separator1">
  
</div>

  <nav class="genre">
    <ul>
      <li class="current"><a href="/season/getSeasonlist"><span>8강</span></a></li>
      <li class=""><a href="#" id="fourgang"><span>4강</span></a></li>
      <li class=""><a href="#" id="threefourgang"><span>3,4위전<span></a></li>
      <li class=""><a href="#" id="final"><span>결승<span></a></li>
    </ul>
  </nav>
  <p>
  <div class="container1">
  <c:if test="${user.userId=='admin'&& leaglist[0].progress=='4'}">
<span class="pulse-button" id="probtn" name="probtn" value="3">시즌진행</span>
</c:if>
<c:if test="${user.userId=='admin'&& leaglist[0].progress=='3'}">
<span class="pulse-button"id="probtn1" name="probtn1" value="2">시즌진행</span>
</c:if>
<c:if test="${user.userId=='admin'&& leaglist[0].progress=='1'}">
<span class="pulse-button"id="probtn2" name="probtn2" value="1">시즌End</span>
</c:if>
</div>
</p>  

<!-- breadcrumbs ends here --> 
<!-- Contact Content Part - GoogleMap ==================================================
================================================== -->

<div class="styled-select yellow rounded" style="height:30px; margin-top: 20px; margin-left: 350px;">
<select id="selectseason"style="float:left;  ">
<c:forEach var="season" items="${list}">
  <option class="myOptions"  value="${season.seasonName}">${season.seasonName}</option>
</c:forEach>
</select>
</div>

<div id="seasoninfo" style="height:30px; margin-top: 20px; margin-left: 350px;" >
<h5 style="float:left;padding-left:5px;width:100px;">시즌시작:</h5><h4 id="stday"style="width:200px; float:left; padding-left:10px; ">${list[0].seasonStart}</h4>
<h5 style="float:left;padding-left:5px;width:100px;">시즌종료:</h5><h4 id="enday"style="width:200px; float:left; padding-left:10px; ">${list[0].seasonEnd}</h4>

<input type="hidden" id="checkseason" name="checkseason" value="${list[0].state}"> 

</div>





<div style="text-align: center; padding-left: 200px;">

<c:forEach var="leag" items="${leaglist}">
<ul class="uloption" >
  <li class="lioption">
    <iframe class="player"
             width="300" height="200"
            src="https://www.youtube.com/embed/${leag.voteObject1}?enablejsapi=1"></iframe>
            <button class="votebutton" name="${leag.leagNo}">UP</button>
            <h3 class="votelike">${leag.vote1}</h3>
            <h3 class="voteArtist">${leag.artist1.artistName}</h3>
  </li>
  <li class="lioption1">
    <img src="/artistImage/vs.pn.png">
  </li>
  <li class="lioption">
    <iframe class="player"
            width="300" height="200"
            src="https://www.youtube.com/embed/${leag.voteObject2}?enablejsapi=1"></iframe>
            <button class="votebutton" name="${leag.leagNo}">UP</button>
            <h3 class="votelike">${leag.vote2}</h3>
            <h3 class="voteArtist">${leag.artist2.artistName}</h3>
  </li>
</ul>
<input class="checkvote" type="hidden" name="checkvote" value="${leag.vote1<=leag.vote2?leag.voteObject2:leag.voteObject1}_${leag.vote1<=leag.vote2?leag.artist2.artistNo:leag.artist1.artistNo}" >

</c:forEach>

</div>







<!-- Contact Content Part - Contact Form ==================================================
================================================== -->

<div class="blankSeparator"></div>

<!-- Socialize ==================================================
================================================== -->
<hr class="separator2">

<!-- socialsblock ends here --> 
<!-- Footer ==================================================
================================================== -->
<div class="footer" style="margin-top:50px;">
    <div class="container">
      <div class="one_fourth">
        <h3>정보를 알고싶어요?</h3>
        <p>
          <span class="orange"><strong>주소:</strong></span> <br> 비트캠프
        </p>
        <p>
          <span class="orange"><strong>Phone:</strong></span> <br>
          02-484-5105<br>
        </p>
        <p>
          <span class="orange"><strong>Email:</strong></span> <br>
          kimjihee02@naver.com<br>
        </p>
      </div>
      <!-- four columns ends here -->
      <div class="one_fourth">
        <h3>메뉴</h3>
        <ul>
          <li><a href="#" title="">Home</a></li>
          <li><a href="#" class="">소개하기 </a></li>
          <li><a href="#" class="">Up contest</a></li>
          <li><a href="#" class="">아티스트</a></li>
          <li><a href="#" class="">버스킹공고</a></li>
        </ul>
      </div>
      <!-- four columns ends here -->
      <div class="one_fourth">
        <h3>만든기간</h3>
        <ul>
          <li><a href="#" class="">2016.11</a></li>
          <li><a href="#" class="">2016.12</a></li>
          <li><a href="#" class="">2017.01</a></li>
        </ul>
      </div>
      <!-- four columns ends here -->
      <div class="one_fourth lastcolumn">
        <h3>About</h3>
        <p>이페지를 들어와주셔서 감사합니다.</p>
        <p>방문해주셔서감사해욧 ^^ 자바라기일동</p>
          </div>
      <!-- four columns ends here -->
    </div>
    <!-- container ends here -->
  </div>
<!-- footer ends here --> 
<!-- Copyright ==================================================
================================================== -->
<div id="copyright">
  <div class="container">
    <p class="copyright">&copy; Copyright 2013. &quot;Freebix&quot; by <a href="http://www.anarieldesign.com/" rel="nofollow">Anariel Design</a>. All rights reserved.</p>
  </div>
  <!-- container ends here --> 
</div>
<!-- copyright ends here --> 
<!-- End Document
================================================== --> 
<!-- Scripts ==================================================
================================================== --> 
 
   <div id="logo">
    <p id="logoP">
      <a id="logoA" href="/index.jsp"> UP </a>
    </p>
   </div>

<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script> 
<!-- Main js files --> 
<script src="/javascript/screen.js" type="text/javascript"></script> 
<!-- Tabs --> 
<script src="/javascript/tabs.js" type="text/javascript"></script> 
<!-- Include prettyPhoto --> 
<script src="/javascript/jquery.prettyPhoto.js" type="text/javascript"></script> 
<!-- Include Superfish --> 
<script src="/javascript/superfish.js" type="text/javascript"></script> 
<script src="/javascript/hoverIntent.js" type="text/javascript"></script> 
<!-- Flexslider --> 
<script src="/javascript/jquery.flexslider-min.js" type="text/javascript"></script> 
<!-- Modernizr --> 
  <script src="/node_modules/sweetalert/dist/sweetalert.min.js"
    type="text/javascript"></script>
<script type="text/javascript" src="/javascript/modernizr.custom.29473.js"></script>
<script type="text/javascript">


//시즌에 맞게 정보를 가져오는 함수
/* $(document).ready(function() {
	  alert("이건실행되자너?");
	  alert($("#checkseason").val());
	 check=$("#checkseason").val();
	if(check=='끝'){
		  alert("잘들어오나?")
		  swal("시즌이 끝났습니다.")
		  $('.votebutton').attr('disabled',true);  //투표버튼 활성화
		}
	});
 */

$('#selectseason').change(function(){
    var selectseason = $("#selectseason option:selected").val();
  
          $.ajax({
          url:'/season/getSeason/'+selectseason,
          type: 'POST',
          dataType : "json" ,
          headers : {
            "Accept" : "application/json",
            "Content-Type" : "application/json"
          },
          success: function(JSONData){
        	 console.log(JSONData.season);
        	 console.log(JSONData.leaglist);
        	 console.log(JSONData.leaglist[0]);
        	 console.log(JSONData.leaglist[0].leagNo);
        	 console.log(($("#stday")).text());
           console.log(($("#enday")).text());
           console.log("바꾸기전 /후 상황비교하기 ");
        	 console.log(($("#stday")).text(JSONData.season.seasonStart));
           console.log(($("#enday")).text(JSONData.season.seasonEnd));
           console.log(($("#stday")).text());
           console.log(($("#enday")).text()); 
           
           console.log($("#checkseason").val(JSONData.season.state));
       
               
           
           // console.log($('ul.uloption').find('iframe'));
            
           var leaglist = new Array(); //리그 리스트
           var leagvote = new Array(); //리그 투표수
           var leagartist = new Array(); //리그 아티스트 
           var leagNo =new Array(); //리그번호 다시바꿔주기 
       
           $.each((JSONData.leaglist),function(index,value){
        	     console.log(index+"번째의 첫번째 url"+value.voteObject1+"두번째 url"+value.voteObject2);
        	     console.log(index+"번째의 첫번째 투표개수:"+value.vote1+"두번째 투표개수:"+value.vote2);
        	     leaglist.push("https://www.youtube.com/embed/"+value.voteObject1+"?enablejsapi=1");
        	     leaglist.push("https://www.youtube.com/embed/"+value.voteObject2+"?enablejsapi=1");
        	     leagvote.push(value.vote1);
        	     leagvote.push(value.vote2);
        	     leagartist.push(value.artist1.artistName);
        	     leagartist.push(value.artist2.artistName);
        	     leagNo.push(value.leagNo);
        	     leagNo.push(value.leagNo);
            }); 
                  
           console.log(leagNo);
           
           $.each($('.player'),function(index,value){
        	   value.src=leaglist[index];
        	   console.log(index+"번째:"+value.src);
           });
           $.each($('.votelike'),function(index,value){
        	   value.innerHTML=leagvote[index];
             console.log(index+"번째 벨류:"+value.innerHTML );
            });
           
           $.each($('.voteArtist'),function(index,value){
        	   value.innerHTML=leagartist[index];
        	   console.log(index+"번째 :"+value.innerHTML);
           });
           
           $.each($('.votebutton'),function(index,value){
        	   value.name=leagNo[index];
        	   console.log(index+"번째:"+value.name);
           });
           
           if(JSONData.season.state=="끝"){
               $('.votebutton').attr('disabled',true);  //투표버튼 비활성화
               
               if($("#seasoninfo").children().size()==6){
            	   return;
               } 
               $("#seasoninfo").append("<h3 style='padding-left:5px;width:300px;'><strong>시즌이 끝났습니다.</strong></h3>");
               
                  return;
             }
           
           
           
         }//end sus                  
      });      
  });

//시즌이 진행되면 ADD 하는 함수 
$("#probtn").on("click",function(){

	 var selectseason = $("#selectseason option:selected").val();
	 var progressNumber="4";
	  $.ajax({
          url:'/season/addLeagProgress/'+selectseason+'/'+progressNumber,
          type : 'GET',
          headers : {
              "Accept" : "application/json",
              "Content-Type" : "application/json"
           },
          success: function(data){
        	  console.log(data.result);
        	  if(data.result==100){
        		     swal({
                         title:"",     
                         text:"시즌이 진행되었습니다.",
                         confirmButtonColor:"#ff2770",
                         imageSize:"40x40"
                       });  
        		  window.location.reload();
        	  }
        
         }//end success
   });//ajaxend
});//end function 

$("#probtn1").on("click",function(){

	   var selectseason = $("#selectseason option:selected").val();
	   var progressNumber="3";
	    $.ajax({
	          url:'/season/addLeagProgress/'+selectseason+'/'+progressNumber,
	          type : 'GET',
	          headers : {
	              "Accept" : "application/json",
	              "Content-Type" : "application/json"
	           },
	          success: function(data){
	            console.log(data.result);
	            if(data.result==101){
	                swal({
	                     title:"",     
	                     text:"시즌이 진행되었습니다.",
	                     confirmButtonColor:"#ff2770",
	                     imageSize:"40x40"
	                   }); 
	              window.location.reload();
	             
	            
	            }
	        
	         }//end success
	   });//ajaxend
	});//end function 









//UP버튼누르면 개수하나 증가하는 함수
$(".votebutton").on("click",function(){
	console.log("투표버튼을 누르셨습니다. ");
/* 	  check=$("#checkseason").val();
	    alert(check);
	    if(check=='끝'){
	        alert("잘들어오나?")
	        $('.votebutton').attr('disabled',true);  //투표버튼 비활성화
	     swal("시즌이 끝났습니다");
	        return;
	      } */

	//버튼 누른 다음곳에 텍스트에 1을 더해준다  
	var num=parseInt($(this).next().text())+parseInt(1);
	var leagNo=$(this).attr("name");
	var artistName=$(this).next().next().text();
  
	 //var seasonName = ${season.seasonName};
	 //var seasonName=$("#selectseason option:selected").text();
 //
  var $a=$(this).next();
  // $(this).next().html(num)
   console.log("보낼 아티스트이름:"+artistName);
	 console.log("보낼숫자:"+num);
	 console.log("보낼 리그번호:"+leagNo)
	//console.log("시즌이름:"+seasonName);
//ajaxstart
  $.ajax({
          url:'/season/addLeagVote',
          type : 'GET',
          dataType : "json" ,
           data: {voteAdd:num, leagNo:leagNo, artistName:artistName},
           async:false,
           headers : {
               "Accept" : "application/json",
               "Content-Type" : "application/json"
             },
          success: function(data){
        	 if(data.check==100){
        		 swal({
                     title:"",     
                     text:"이미 투표하셨습니다.",
                     confirmButtonColor:"#ff2770",
                     imageSize:"40x40"
                   });
        	 }else{
        	   console.log("여기가 들어오긴하나?");
        	   $a.text(num);
        	 }
          }//end success
   });//ajaxend
});

//4강버튼을 눌렀을대 이벤트  시즌네임이랑 프로그레스 정보를 줘야되는데 
$("#fourgang").on("click",function(){
	  var selectseason = $("#selectseason option:selected").val();
	  var progress="3";
	  var checkpro=${min};
	  
	  if(checkpro==4){	  
		    swal({
                title:"",     
                text:"시즌중 입니다.",
                confirmButtonColor:"#ff2770",
                imageSize:"40x40"
              });
	  }else{
		  location.href='/season/LeagList/'+selectseason+'/'+progress;
	  }
});

$("#threefourgang").on("click",function(){
    var selectseason = $("#selectseason option:selected").val();
    var progress="2";
    var checkpro=${min};
    if(checkpro==3 || checkpro==4){   
        swal({
            title:"",     
            text:"시즌중 입니다.",
            confirmButtonColor:"#ff2770",
            imageSize:"40x40"
          });
    }
    else{
        location.href='/season/LeagList/'+selectseason+'/'+progress;
      }
    
});

$("#final").on("click",function(){
    var selectseason = $("#selectseason option:selected").val();
    var progress="1";
    var checkpro=${min};
    if(checkpro==3 || checkpro==4){
    	
        swal({
            title:"",     
            text:"시즌중 입니다.",
            confirmButtonColor:"#ff2770",
            imageSize:"40x40"
          });
    }
    else{
        location.href='/season/LeagList/'+selectseason+'/'+progress;
      }
    
});

$("#probtn2").on("click",function(){
	alert("시즌마무리버튼");
	var selectseason = $("#selectseason option:selected").val();
	 $.ajax({
         url:'/season/setEndSeason/'+selectseason,
         type : 'GET',
         dataType : "json" ,
         headers : {
              "Accept" : "application/json",
              "Content-Type" : "application/json"
            },
         success: function(data){
        	  alert(data.endseason);      
         }//end success
  });//ajaxend
});

</script>
</body>
</html>