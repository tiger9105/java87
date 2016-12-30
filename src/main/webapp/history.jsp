<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style type="text/css">
.trailer-wrapper {
  background: #fff;
  overflow: hidden;
  position: relative;
  display: block;
  font-family: "roboto-regular", arial;
 
}
.trailer-wrapper.mobile {
  width: 360px;
  min-width: 360px;
}
.trailer-wrapper.tablet {
  width: 100%;
  max-width: 540px;
  min-width: 540px;
}
.trailer-wrapper.web {
  width: 100%;
}
.trailer-wrapper .tr-header {
  width:425px;
  height: 100px;
  background: #F44336;
  z-index: 4;
  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}
.trailer-wrapper .tr-header .you-icon {
  display: block;
  margin-top: 14px;
  height: 23px;
  width: 26px;
  float: left;
  margin-left: 10px;
  background: rgba(0, 0, 0, 0.2);
  border-radius: 4px;
  text-align: center;
  padding-top: 2px;
}
.trailer-wrapper .tr-header .you-icon img {
  width: 20px;
  height: 20px;
  display: inline-block;
}
.trailer-wrapper .tr-header .title {
  font-size: 20px;
  color: #fff;
  float: left;
  margin-top: 30px;
  margin-left: 20px;
}
.trailer-wrapper .tr-header .tune {
  display: block;
  float: right;
  margin-top: 15px;
  margin-right: 20px;
  opacity: 0.4;
}
.trailer-wrapper .tr-header .tune img {
  width: 24x;
  height: 24px;
}
.trailer-wrapper .tr-header .tabs {
  width: 100%;
  display: block;
  float: left;
  margin-top: 20px;
  clear: both;
}
.trailer-wrapper .tr-header .tabs span {
  width: 50%;
  display: inline-block;
  float: left;
  text-align: center;
  padding-bottom: 15px;
  color: #222;
  opacity: 0.4;
  transition: 0.3s ease;
  cursor: pointer;
}
.trailer-wrapper .tr-header .tabs span:hover {
  color: #fff;
  opacity: 1;
}
.trailer-wrapper .tr-header .tabs span.active {
  color: #fff;
  border-bottom: 4px solid #fff;
  opacity: 1;
}
.trailer-wrapper .tr-coming-soon {
  display: block;
  clear: both;
  width: 100%;
 }
.trailer-wrapper .tr-coming-soon .music-cards {
  width: 178px;
  height: 180px;
  display: inline-block;
  position: relative;
  float: left;
  padding: 1px;
}
.trailer-wrapper .tr-coming-soon .music-cards img {
  width: 100%;
  opacity: 1;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn {
  display: inline-block;
  width: 40px;
  height: 40px;
  position: absolute;
  bottom: 17px;
  right: 10px;
  z-index: 2;
  border-radius: 50%;
  box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.3);
  cursor: pointer;
  transform: scale(1, 1);
  transition: 0.5s ease;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn img {
  width: 20px;
  padding: 11px;
  opacity: 0.4;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn:hover {
  transform: scale(1.1, 1.1);
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn:hover img {
  opacity: 0.6;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn.color1 {
  background: #F6A197;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn.color2 {
  background: #FDA052;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn.color3 {
  background: #F6B2C7;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn.color4 {
  background: #476471;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn.color5 {
  background: #61BF93;
}
.trailer-wrapper .tr-coming-soon .music-cards .play-btn.color6 {
  background: #E26263;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc {
  position: absolute;
  bottom: 0px;
  height: 35px;
  left: 0;
  right: 0;
  color: #fff;
  font-size: 12px;
  text-align: left;
  margin: 1px;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc .music-title {
  margin: 10px;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc.color1 {
  background: #F6A197;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc.color2 {
  background: #FDA052;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc.color3 {
  background: #F6B2C7;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc.color4 {
  background: #476471;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc.color5 {
  background: #61BF93;
}
.trailer-wrapper .tr-coming-soon .music-cards .disc.color6 {
  background: #E26263;
}

</style>
</head>

<body>
<html>
  <head></head>
  <!-- <body style="background:#fff4c6">
  <div class="trailer-wrapper mobile">
    <div class="tr-header">
    <span class="you-icon">
      <img src="http://www.clipartbest.com/cliparts/dc7/jEk/dc7jEkRMi.png" alt="" />
    </span>
      <span class="title">Music</span>
      <span class="tune">
        <img src="https://cdn0.iconfinder.com/data/icons/pixon-1/24/filter_list_order_sequence_sort_sorting_outline-512.png" alt="" />
      </span>
      <div class="tabs">
        <span class="pop active">Popular</span>
        <span class="playlist">Playlist</span>
      </div>
    </div>
    <div class="tr-coming-soon">
      <div class="music-cards">
        <img src="http://static.idolator.com/uploads/2013/04/23/michael-buble-to-be-loved-album-cover-art.jpg" alt="" />
        <div class="play-btn color2">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color2">
          <div class="music-title">To be loved</div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://s3.amazonaws.com/NRNArt/ODESZA--In-Return-album-cover.jpg" alt="" />
        <div class="play-btn color6">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color6">
          <div class="music-title">In Rain</div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://static.idolator.com/uploads/2012/08/15/carlyraejepsen-album-cover-kiss.jpg" alt="" />
        <div class="play-btn color3">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color3">
          <div class="music-title">Call me Maybe</div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://h.fastcompany.net/multisite_files/codesign/imagecache/slideshow_large/slideshow/2013/01/1671590-slide-453052152-1.jpg" alt="" />
        <div class="play-btn color1">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color1">
          <div class="music-title">Do you feel it   </div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://static.idolator.com/uploads/david-archuleta-begin-album-cover-e1339653853757.jpg" alt="" />
        <div class="play-btn color5">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color5">
          <div class="music-title">Begin </div>
        </div>
      </div>    
      <div class="music-cards">
        <img src="https://usatsneakhype.files.wordpress.com/2015/04/emceez-ansari-4.jpg?w=1000" alt="" />
        <div class="play-btn color4">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color4">
          <div class="music-title">Wiz Khalifa</div>
        </div>
      </div>
    </div>
  </div> -->
  <!--  여기 위에는 전부 모바일 화면임 -->
  
  
<!--   <div class="trailer-wrapper tablet">
    <div class="tr-header">
    <span class="you-icon">
      <img src="http://www.clipartbest.com/cliparts/dc7/jEk/dc7jEkRMi.png" alt="" />
    </span>
      <span class="title">Music</span>
      <span class="tune">
        <img src="https://cdn0.iconfinder.com/data/icons/pixon-1/24/filter_list_order_sequence_sort_sorting_outline-512.png" alt="" />
      </span>
      <div class="tabs">
        <span class="pop active">Popular</span>
        <span class="playlist">Playlist</span>
      </div>
    </div>
    <div class="tr-coming-soon">
      <div class="music-cards">
        <img src="http://static.idolator.com/uploads/2013/04/23/michael-buble-to-be-loved-album-cover-art.jpg" alt="" />
        <div class="play-btn color2">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color2">
          <div class="music-title">To be loved</div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://s3.amazonaws.com/NRNArt/ODESZA--In-Return-album-cover.jpg" alt="" />
        <div class="play-btn color6">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color6">
          <div class="music-title">In Rain</div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://static.idolator.com/uploads/2012/08/15/carlyraejepsen-album-cover-kiss.jpg" alt="" />
        <div class="play-btn color3">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color3">
          <div class="music-title">Call me Maybe</div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://h.fastcompany.net/multisite_files/codesign/imagecache/slideshow_large/slideshow/2013/01/1671590-slide-453052152-1.jpg" alt="" />
        <div class="play-btn color1">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color1">
          <div class="music-title">Do you feel it   </div>
        </div>
      </div>
      <div class="music-cards">
        <img src="http://static.idolator.com/uploads/david-archuleta-begin-album-cover-e1339653853757.jpg" alt="" />
        <div class="play-btn color5">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color5">
          <div class="music-title">Begin </div>
        </div>
      </div>    
      <div class="music-cards">
        <img src="https://usatsneakhype.files.wordpress.com/2015/04/emceez-ansari-4.jpg?w=1000" alt="" />
        <div class="play-btn color4">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color4">
          <div class="music-title">Wiz Khalifa</div>
        </div>
      </div>
    </div>
  </div> -->
  <!--여기위에는 테블릿 모양임  -->
  
  <div class="trailer-wrapper web">
    <div class="tr-header">
   
      <span class="title"><strong>최근 본 동영상</strong></span>
      <span class="tune">
<!--   이것도 아이콘으로추정       <img src="https://cdn0.iconfinder.com/data/icons/pixon-1/24/filter_list_order_sequence_sort_sorting_outline-512.png" alt="" /> -->
      </span>
     <!--  <div class="tabs">
        <span class="pop active">Popular</span>
        <span class="playlist">Playlist</span>
      </div> -->
    </div>
    <div class="tr-coming-soon">
      
      <iframe name="video" width="420" height="250"
    src="ab"></iframe>
       
          
       <!--  <div class="play-btn color2">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color2">
          <div class="music-title">To be loved</div>
        </div>  안에 꾸미는거 필요없음 -->
    
      
           <iframe name="video" width="420" height="250"
    src="ab"></iframe>
        
        
       <!--  <div class="play-btn color6">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color6">
          <div class="music-title">In Rain</div>
        </div>
      -->
     
     
 
      
      
      
             <iframe name="video" width="420" height="250"
    src="ab"></iframe>
        
        
        
        <!-- <div class="play-btn color3">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color3">
          <div class="music-title">Call me Maybe</div>
        </div> -->
      
      
      
      
     
              <iframe name="video" width="420" height="250"
    src="ab"></iframe>
     
     
     
       <!--  <div class="play-btn color1">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color1">
          <div class="music-title">Do you feel it   </div>
        </div> -->
        
        
    
             <iframe name="video" width="420" height="250"
    src="ab"></iframe>
 
     
             <iframe name="video" width="420" height="250"
    src="ab"></iframe>
        
             <iframe name="video" width="420" height="250"
    src="ab"></iframe>
        
             <iframe name="video" width="420" height="250"
    src="ab"></iframe>
        
             <iframe name="video" width="420" height="250"
    src="ab"></iframe>
        
             <iframe name="video" width="420" height="250"
    src="ab"></iframe>
        
        <!-- <div class="play-btn color5">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color5">
          <div class="music-title">Begin </div>
        </div> -->
        
      
    <!--   //////////////////////////////////////ㄴㅇ리ㅏ넝리ㅏㄴ어라ㅣㄴㅁ어라ㅣㄴㅁ어리ㅏㅁ너링///////// -->
   
   
    <!--  (다섯개 까지만할려고 주석 ) <div class="music-cards">
              <iframe id="player2" width="180" height="180"
    src="https://www.youtube.com/embed/r52he_XcBXg?enablejsapi=1"></iframe>
        
        
        <div class="play-btn color4">
          <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-play-128.png" alt="" />
        </div>
        <div class="disc color4">
          <div class="music-title">Wiz Khalifa</div>
        </div>
        
      </div> -->
      
      
      
    </div>
  </div>

	<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="javascript/cookie/cookie.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">

	
	$(document).ready(function(){
				console.log("여기시작하나");
		  console.log("여기밑에 쿠키");
		  console.log($.cookie('uri'));
		  console.log("여기위에 쿠키");
		  ///1번 
		var check=false;
		var def = new Array();
		var abc = new Array($.cookie('uri'),$.cookie('uri1'),$.cookie('uri2'),$.cookie('uri3'),$.cookie('uri4'),$.cookie('uri5'),$.cookie('uri6'),$.cookie('uri7'),$.cookie('uri8'),$.cookie('uri9'));
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
		     if(document.getElementsByName('video')[j].getAttribute("src")=='ab'){
		      document.getElementsByName('video')[j].setAttribute("src", def[j]);
		    }
		 }
		  if(check==true){
		             console.log('여기잘들어오나?');
		             console.log(($("iframe[src='ab']")).remove());
		  }
		});// 이벤트 닫음 



	</script>
</body>
</html>
