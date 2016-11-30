<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
  <body>
        <div id="fb-root"></div>
        <script>
          window.fbAsyncInit = function() {
            FB.init({
              appId      : '1831265407091493', // 앱 ID
              status     : true,          // 로그인 상태를 확인
              cookie     : false,          // 쿠키허용
              xfbml      : true           // parse XFBML
            });
            
          
            	FB.Event.subscribe('auth.logout', function(response) {
                document.location.reload();
            });
           
        
            FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                    
                    FB.api('/me', function(user) {
                    	
                        if (user) {
                            var image = document.getElementById('image123');
                            image.src = 'http://graph.facebook.com/' + user.id + '/picture';
                            var name = document.getElementById('name123');
                            name.innerHTML = user.name
                            var id = document.getElementById('id123');
                            id.innerHTML = user.id
                       
                            if(id!=null){
                            	alert('여기는 id 널값아님')
                            	document.location.href="index.jsp";
                            }
                           
                        }
                    });    
                    
                   
                } else if (response.status === 'not_authorized') {
           
                     
                } else {
                    
                }
            });
            
           
            
            //
            FB.Event.subscribe('auth.login', function(response) {
                document.location.reload();
            });
          };
          
          
        
          // Load the SDK Asynchronously
          (function(d){
             var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
             if (d.getElementById(id)) {return;}
             js = d.createElement('script'); js.id = id; js.async = true;
             js.src = "//connect.facebook.net/ko_KR/all.js";
             ref.parentNode.insertBefore(js, ref);
           }(document));
        </script>
        
        <p>로그인 버튼 추가</p>
        <fb:login-button show-faces="false" width="200" max-rows="1"></fb:login-button>
        <a href="#" onclick="FB.logout();">[logout]</a><br>
        <p>사용자정보 출력</p>
        <div align="left">
            <img id="image123"/>
            <div id="name123"></div>
            <div id="id123"></div>
        </div>
     <!--    <script src="javascript/facebookjs/facebook.js"></script> -->

    </body>
</html>