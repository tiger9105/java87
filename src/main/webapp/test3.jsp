<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>

	<iframe id="player1" width="300" height="200"
		src="https://www.youtube.com/embed/tSAJ-iW1GBg?enablejsapi=1"></iframe>

	<iframe id="player2" width="300" height="200"
		src="https://www.youtube.com/embed/r52he_XcBXg?enablejsapi=1"></iframe>

	<iframe id="player3" width="300" height="200"
		src="https://www.youtube.com/embed/UeCTNhP-E_c?enablejsapi=1"></iframe>

	<iframe id="player4" width="300" height="200"
		src="https://www.youtube.com/embed/kBsycvSU6r8?enablejsapi=1"></iframe>
		
		<iframe id="player5"  width="640" height="360" 
 src="https://www.youtube.com/embed/RWeFOe2Cs4k?enablejsapi=1"
></iframe>
<h5>Record of user actions:</h5>
<a href="test4.jsp">잠깐만</a>


	<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="javascript/cookie/cookie.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	
	
	<script type="text/javascript">
	var player1;
	var player2;
	var player3;
	var player4;
	var player5;
	function onYouTubeIframeAPIReady() {
		$('iframe').each(function(i, e) {
			if($(e).attr('id')=='player1'){
				player1 =  new YT.Player($(e).attr('id'), {
		    events: { 'onStateChange': onPlayerStateChange}
		  });
			
		}//end if
		
		    if($(e).attr('id')=='player2'){
		        player2 =  new YT.Player($(e).attr('id'), {
		        events: { 'onStateChange': onPlayerStateChange2}
		      });
		      
		    }//end if
		    
		    if($(e).attr('id')=='player3'){
	            player3 =  new YT.Player($(e).attr('id'), {
	            events: { 'onStateChange': onPlayerStateChange3}
	          });
	          
	        }//end if
	        
		    if($(e).attr('id')=='player4'){
	            player4 =  new YT.Player($(e).attr('id'), {
	            events: { 'onStateChange': onPlayerStateChange4}
	          });
	          
	        }//end if
	        
		    if($(e).attr('id')=='player5'){
	            player5 =  new YT.Player($(e).attr('id'), {
	            events: { 'onStateChange': onPlayerStateChange5}
	          });
	          
	        }//end if
		});//end each function
	}//end function
	
	
	
	function onPlayerStateChange(event) {
		
	  switch(event.data) {
	  case -1:
		  console.log(($(player1.getIframe()).attr('src')));
		  $.cookie('uri', ($(player1.getIframe()).attr('src')), {path:'/'});
		  break;
	 case 0:
	      record('video ended');
	   break;
	  case 1:
	
	       break;
	  case 2:
	      break;
	  }
	} 

	////////////
	 function onPlayerStateChange2(event) {
		    console.log(event.data);
		    switch(event.data) {
		    case -1:
		    	 console.log(($(player2.getIframe()).attr('src')));
		        $.cookie('uri1', ($(player2.getIframe()).attr('src')), {path:'/'});
		      break;
		   case 0:
		       
		     break;
		    case 1:
		  
		         break;
		    case 2:
		        break;
		    }
		  } 
	 
	 //////////////////
	    function onPlayerStateChange3(event) {
        console.log(event.data);
        switch(event.data) {
        case -1:
            console.log(($(player3.getIframe()).attr('src')));
            console.log(player3.getVideoUrl());
            console.log(player3.getVideoUrl());
            console.log(player3.getVideoUrl());
            console.log("여기가 테스트할곳이야 !!!! ");
            $.cookie('uri2', ($(player3.getIframe()).attr('src')), {path:'/'});
          break;
       case 0:
           
         break;
        case 1:
      
             break;
        case 2:
            break;
        }
      } 
   
   //////////////////
   
     function onPlayerStateChange4(event) {
        console.log(event.data);
        switch(event.data) {
        case -1:
        	   console.log(($(player4.getIframe()).attr('src')));
               $.cookie('uri3', ($(player4.getIframe()).attr('src')), {path:'/'});
          break;
       case 0:
           
         break;
        case 1:
             	
             break;
        case 2:
            break;
        }
      } 
   
   //////////////////
   
        function onPlayerStateChange5(event) {
        console.log(event.data);
        switch(event.data) {
        case -1:
            console.log(($(player5.getIframe()).attr('src')));
            $.cookie('uri4', ($(player5.getIframe()).attr('src')), {path:'/'});
            break;
       case 0:
           
         break;
        case 1:
      
             break;
        case 2:
            break;
        }
      } 
   
   //////////////////
   
   	</script>
</body>
</html>
