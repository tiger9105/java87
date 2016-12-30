<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/season.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
  <form>  
      <h1>Make Season</h1>
      <div class="control">
        <input type="text" id="artistName" name="seasonNmae" placeholder="시즌명" value="" />
      </div>
        <p>
        <label>시즌 시작일</label>
        </p>
     <div class="control" >
    
        <input type="date" id="introduce" name="seasonstartday"   value="2016-06-08"/>
    </div>
    <p>
        <label>시즌 마감일</label>
        </p>
    <div class="control">
         <input type="date" id="introduce" name="seasonendday"   value="2016-06-08" />
    </div>
        
    <div class="control submit">
         <!--      <button id="uploadbutton">register</button> -->
        <input type="button" id="uploadbutton" value="시즌만들기" style="padding-top: 7px;"/>
        <input type="button" id="closebutton" value="취소"/>
    </div>
  </form>


  <script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
  <script type="text/javascript">

  $("#uploadbutton").on("click",function(){
	  var form = $('form')[0];
      var formData = new FormData(form);
   /*    $.ajax({
           url:'/season/addSeason',
           data:formData,
           type: 'POST',
           success: function(season){
            alert("컨트롤단 들어갔다오나? ");
              
         }    //end success              
      });        //end ajax
       */
      

             $.ajax({
                 url: '/season/addSeason',
                 processData: false,
                 contentType: false,
                 data: formData,
                 type: 'POST',
                 success: function(season){
                	 console.log(season.seasonName);
                	 console.log(season.seasonStart);
                	 console.log(season.seasonEnd);
                	 alert("성공");
                 }
                 }); 
             
  });

  
  </script>
</body>
</html>