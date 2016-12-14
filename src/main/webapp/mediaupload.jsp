<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="frm" action="user/upload" method="post"  enctype="multipart/form-data">
<input type="file" name="uploadfile" onchange="readURL(this);" />
 <img id="blah" src="artist/waitphoto.jpg" alt="프로필 사진을 넣어주세요."  style="width: 200px; height: 200px"/>

<input type="button" id="uploadbutton" value="클릭" />

</form>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(function(){
    $("#uploadbutton").click(function(){
        var form = $('form')[0];
        var formData = new FormData(form);
            $.ajax({
               url: '/user/upload',
               processData: false,
               contentType: false,
               data: formData,
               type: 'POST',
               success: function(result){
               alert("업로드 성공!!");
               }
           });
        });
})

//이미지 미리보기 자바스크립트
 function readURL(input) {
    console.log("여기잘 드러오나 ");
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
</script>
</body>
</html>