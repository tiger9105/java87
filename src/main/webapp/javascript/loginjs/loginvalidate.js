$(function(){
    $("#checkloginbutton").click(function(){
        var form = $('form')[0];
        var formData = new FormData(form);
          $.ajax({
               url: '/user/login',
               processData: false,
               contentType: false,
               data: formData,
               type: 'POST',
               success: function(user){
            	if($("#userId").val()==""){
            		console.log("유저아이디를 적어주세요.");
            		swal("유저아이디를 적어주세요.");
              	}
            	if($("#userId").val()!=""){
            	 	if(user.userId!=null && $("#password").val()==""){
                 	   console.log("유저아이디값이 있으나");
                 	  swal("비밀번호를 적어주세요.");
                 }
                if(user.userId==null ){
             	   console.log("유저아이디값 널");
             	  swal("유저아이디가 잘못됬습니다.");
                	}	
            	}                        
            
                                         
           if(user.userId!=null && $("#password").val()!=""){
               if(user.userId!=null && (user.password!=$("#password").val())){
                	console.log("유저아이디는 있으나 비밀번호가 다른경우");
                	swal("비밀번호가 틀립니다.");
                }
               if(user.userId!=null && (user.password==$("#password").val())){
                	location.href="index.jsp";
                }
                
           			} //큰 if 
               }
            
           });
        });
})