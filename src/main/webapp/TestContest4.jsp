<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
  
  <title>UP Contest</title>
 
  
    <!-- You can use Open Graph tags to customize link previews.
    Learn more: https://developers.facebook.com/docs/sharing/webmasters -->

  
</head>
<body>

  <!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<div id="btn" class="fb-share-button">dd
<!-- <a class="fb-xfbml-parse-ignore">공유하기</a> -->
</div>
<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script> 
<script>
window.fbAsyncInit = function() {
    FB.init({
      appId      : '1831265407091493',
      cookie     : true,  
      xfbml      : true,  
      version    : 'v2.8' 
    });
};
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script type="text/javascript">
$("#btn").on("click",function(){
	 FB.ui({
         method: 'feed',
         name: "ddddddddddddd",  //제목
         link: location.href,              //링크
                   //이미지
         caption: '간단한 투표는 Pick!!!',        
         description: "asdasdasdasdasd"//내용 
     });
});



</script>



</body>
</html>