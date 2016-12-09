<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>

<link rel="stylesheet" href="css/colorbox/colorbox.css">
</head>

<body>
 <h2>No Transition + fixed width and height (75% of screen size)</h2>
 <a    class='youtube' id="player"  name="video" onclick="sucess()" href="ab">최근본 동영상</a>
 
<p><a  class='youtube' id="player2"  name="video" href="ab"></a></p>

<p><a class='youtube'  id="player3"  name="video" href="ab"></a></p>

<p><a  class='youtube' id="player4" name="video"  href="ab"></a></p>

<p><a  class='youtube' id="player5" name="video"  href="ab"></a></p>
<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script> 
<script src="javascript/cookie/cookie.js"></script>
<script src="javascript/colorbox/jquery.colorbox.js"></script>


<script type="text/javascript">
//전체의 uri 를 배열의 넣고 배열의 값이 널이 아닌부분만 뽑아서 
function sucess(){
	///1번 
var check=false;
var def = new Array();
var abc = new Array($.cookie('uri'),$.cookie('uri1'),$.cookie('uri2'),$.cookie('uri3'),$.cookie('uri4'));
for(var i=0;i<abc.length;i++){
  if(abc[i]!=null){
     def.push(abc[i]);  //새로운 배열에다가 다시 null이 아닌것만 넣어줌 
   // document.getElementsByName('video')[i].setAttribute("href",abc[i]);  
   // console.log($('a').attr("href")+'여기 제대로 값이 전달이 되었나');
   }
    check=true;
  }
  
  for(var j=0;j<(def.length);j++){
	  console.log('여기는 다시 넣어주는 부분');
	  console.log(def.length);
	  console.log(def[j]);
	   if(document.getElementsByName('video')[j].getAttribute("href")=='ab'){
		  document.getElementsByName('video')[j].setAttribute("href", def[j]);
	  }
 }
  if(check==true){
             console.log('여기잘들어오나?');
             console.log(($("a[href='ab']")).remove());
  }
}// 이벤트 닫음 

$(".group3").colorbox({rel:'group3', transition:"none", width:"75%", height:"75%"});
$(".youtube").colorbox({rel:'group3',iframe:true, innerWidth:"75%", innerHeight:"75%"});


 </script>
 </body>
</html>
