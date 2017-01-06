<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT language=JavaScript>

function getTime() { 
now = new Date(); 
dday = new Date(2017,06,14,00,00,00); // 원하는 날짜, 시간 정확하게 초단위까지 기입.
days = (dday - now) / 1000 / 60 / 60 / 24; 
dRound = Math.floor(days); 
hours = (dday - now) / 1000 / 60 / 60 - (24 * dRound); 
hRound = Math.floor(hours); 
minutes = (dday - now) / 1000 /60 - (24 * 60 * dRound) - (60 * hRound); 
mRound = Math.floor(minutes); 
seconds = (dday - now) / 1000 - (24 * 60 * 60 * dRound) - (60 * 60 * hRound) - (60 * mRound); 
sRound = Math.round(seconds);

document.getElementById("counter1").innerHTML = dRound; 
document.getElementById("counter2").innerHTML = hRound; 
document.getElementById("counter3").innerHTML = mRound; 
document.getElementById("counter4").innerHTML = sRound; 
newtime = window.setTimeout("getTime();", 1000); 
}

</SCRIPT>

<STYLE type="text/css">

 

 


/*타임*/
#count {
 height: 167px;
 color: #000;
 padding-left: 100px;
 padding-top:130px;
 background-repeat: no-repeat;
}
#bt {
 height: 16px;
 width: 49;
 padding-left: 100px;
 padding-top: 0px;
}
</STYLE>
<head>
<body>

<DIV id=count>
<SPAN id=counter1>
</SPAN>일 <SPAN id=counter2>
</SPAN>시간 <SPAN id=counter3>
</SPAN>분 <SPAN id=counter4>
</SPAN>초 남음
<SPAN style="padding-left:30px;"></SPAN>
</div>



<SCRIPT>getTime()</SCRIPT>
</body>
</html>