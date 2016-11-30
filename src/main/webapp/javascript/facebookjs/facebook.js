 window.fbAsyncInit = function () {
            FB.init({
              appId      : '1831265407091493', 
              status     : true,         
              cookie     : false,         
              xfbml      : true          
            });
                      
            	FB.Event.subscribe('auth.logout', function(response) {
                document.location.reload();
            });
           
        
            FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                    alert('여기는 connected');
                    FB.api('/me', function(user) {
                    	
                        if (user) {
                            /*var image = document.getElementById('image123');*/
                            /*image.src = 'http://graph.facebook.com/' + user.id + '/picture';*/
                            var name = document.getElementById('name');
                            alert(name);
                            /*name.innerHTML = user.name*/
                            var id = document.getElementById('id');
                            alert(id);
                            /* id.innerHTML = user.id*/
                       
                            if(id!=null){
                            				alert('여기는 얼아님')
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
          (function(d){
             var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
             if (d.getElementById(id)) {return;}
             js = d.createElement('script'); js.id = id; js.async = true;
             js.src = "//connect.facebook.net/ko_KR/all.js";
             ref.parentNode.insertBefore(js, ref);
           }(document));