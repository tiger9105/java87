<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style>
.list li {
  background: url(images/icon_arrow_right.png) no-repeat 97% 50%;
  border-bottom: 1px solid #ccc;
  display: table;
  border-collapse: collapse;
  width: 100%;
}
.inner {
  display: table-row;
  overflow: hidden;
}
.li-img {
  display: table-cell;
  vertical-align: middle;
  width: 30%;
  padding-right: 1em;
}
.li-img img {
  display: block;
  width: 100%;
  height: auto;
}
.li-text {
  display: table-cell;
  vertical-align: middle;
  width: 70%;
  padding-right: 1em;
}
.li-head {
  margin: 0;
}
.li-summary {
  display: none;
  margin: 0;
}
.li-action {
  margin: 0;
}

@media screen and (min-width: 40em) {
  .list li {
    background: none;
  }
  .li-summary {
    display: block;
  }
}

@media screen and (min-width: 60em) {
  .list li {
    float: left;
    width: 50%;
  }
  .inner {
    padding-right: 1em;
  }
}
</style>
</head>

<body>
<!--Pattern HTML-->


  <div id="pattern" class="pattern">
    <ul class="list img-list">
      <li>
        <a href="#" class="inner">
          <div class="li-img">
            <p><a  id="player2"  name="video" href="ab"></a></p>
          </div>
          <div class="li-text">
            <h4 class="li-head">최근본 동영상 </h4>
            <p class="li-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus velit, ut semper neque.</p>
            <p class="li-action">Read More</p>
          </div>
        </a>
      </li>
      <li>
        <a href="#" class="inner">
          <div class="li-img">
           <p><a  id="player3"  name="video" href="ab"></a></p>
          </div>
          <div class="li-text">
            <h4 class="li-head">Title of Content</h4>
            <p class="li-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus velit, ut semper neque.</p>
            <p class="li-action">Learn More</p>
          </div>
        </a>
      </li>
      <li>
        <a href="#" class="inner">
          <div class="li-img">
     <p><a  id="player4" name="video"  href="ab"></a></p>
          </div>
          <div class="li-text">
            <h4 class="li-head">Title of Content</h4>
            <p class="li-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus velit, ut semper neque.</p>
            <p class="li-action">Read More</p>
          </div>
        </a>
      </li>
      <li>
        <a href="#" class="inner">
          <div class="li-img">
  <p><a  id="player5" name="video"  href="ab"></a></p>
          </div>
          <div class="li-text">
            <h4 class="li-head">Title of Content</h4>
            <p class="li-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus velit, ut semper neque.</p>
            <p class="li-action">Learn More</p>
          </div>
        </a>
      </li>
      <li>
        <a href="#" class="inner">
          <div class="li-img">
            <img src="http://bradfrost.github.com/this-is-responsive/patterns/images/fpo_square.png" alt="Image Alt Text" />
          </div>
          <div class="li-text">
            <h4 class="li-head">Title of Content</h4>
            <p class="li-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus velit, ut semper neque.</p>
            <p class="li-action">Read More</p>
          </div>
        </a>
      </li>
      <li>
        <a href="#" class="inner">
          <div class="li-img">
            <img src="http://bradfrost.github.com/this-is-responsive/patterns/images/fpo_square.png" alt="Image Alt Text" />
          </div>
          <div class="li-text">
            <h4 class="li-head">Title of Content</h4>
            <p class="li-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus velit, ut semper neque.</p>
            <p class="li-action">Read More</p>
          </div>
        </a>
      </li>
    </ul>
  </div>
  <!--End Pattern HTML-->
	<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="javascript/cookie/cookie.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">
	function sucess(){
		  console.log("여기밑에 쿠키");
		  console.log($.cookie('uri'));
		  console.log("여기위에 쿠키");
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



	</script>
</body>
</html>
