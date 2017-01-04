	/////////////////////////////////////////////////////////////여기는 최근본 동영상 자바스크립트 
		var player1;
		var player2;
		var player3;
		var youtubeuri = new Array();
		function onYouTubeIframeAPIReady() {
			console.log("여기는 잘들어오시나요? ");
			$('iframe').each(function(i, e) {
				if ($(e).attr('id') == 'player1') {
					player1 = new YT.Player($(e).attr('id'), {
						events : {
							'onStateChange' : onPlayerStateChange
						}
					});

				}//end if

				if ($(e).attr('id') == 'player2') {
					player2 = new YT.Player($(e).attr('id'), {
						events : {
							'onStateChange' : onPlayerStateChange2
						}
					});

				}//end if

				if ($(e).attr('id') == 'player3') {
					player3 = new YT.Player($(e).attr('id'), {
						events : {
							'onStateChange' : onPlayerStateChange3
						}
					});

				}//end if
			});//end each function
		}//end function
		function onPlayerStateChange(event) {
			console.log("여기는 잘들어와야 정상이지");
			switch (event.data) {
			case -1:
				
				console.log(($(player1.getIframe()).attr('src')));
				$.cookie('uri', ($(player1.getIframe()).attr('src')),{path :'/'});
				break;
			case 0:
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
			switch (event.data) {
			case -1:
				console.log(($(player2.getIframe()).attr('src')));
				console.log(player2.getVideoUrl());
				$.cookie('uri1', ($(player2.getIframe()).attr('src')),{path :'/'});

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
			switch (event.data) {
			case -1:
				console.log(($(player3.getIframe()).attr('src')));
				$.cookie('uri2', ($(player3.getIframe()).attr('src')),{path :'/'});

				break;
			case 0:

				break;
			case 1:

				break;
			case 2:
				break;
			}
		}
		////////////////////////////////////////////////////////////////////
	//	function sucess() {
			///1번 
	//		console.log('클릭 이벤트 처음 시작부분 ㅇㄴㄻㄴㅇㄻㄴㅇㅁㄴㅇㄹ')
	//		var check = false;
	//		var abc = new Array();
	//		if (youtubeuri.length != 0) {
	//			for (var i = 0; i < youtubeuri.length; i++) {
		//			abc.push(youtubeuri[i]); //새로운 배열에다가 다시 null이 아닌것만 넣어줌 
		///			console.log('여기 안들어오나?ㅁㄴㅇ리ㅏㅁㄴ이럼ㄴ이런ㅇ미ㅏㅓㅁ니ㅏ럼나ㅣㅁ널');
		//			document.getElementsByName('video')[i].setAttribute("href",
			//				youtubeuri[i]);
					// document.getElementsByName('video')[i].setAttribute("href",abc[i]);  
					// console.log($('a').attr("href")+'여기 제대로 값이 전달이 되었나');
		//			check = true;
			//	}
			//	if (check == true) {
		//			console.log('여기잘들어오나?');
			//		console.log(($("a[href='ab']")).remove());
		////		}
		//	} else {
		//		alert("최근본 동영상이없어요. ")
		//		parent.location.href = "index.jsp";
		//	}
			
			/* 
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
			} */
		//}// 이벤트 닫음 
/* 		$(".group3").colorbox({
			rel : 'group3',
			transition : "none",
			width : "75%",
			height : "75%"
		});
		$(".youtube").colorbox({
			rel : 'group3',
			iframe : true,
			innerWidth : "75%",
			innerHeight : "75%"
		
		}); */
 /////////////////////////////////////////////////////////////여기는 최근본 동영상 자바스크립트 

 ////////
			
			//내 정보 수정 페이지 처리하기 