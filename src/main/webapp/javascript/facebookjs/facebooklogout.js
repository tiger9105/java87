window.fbAsyncInit = function() {
	FB.init({
		appId : '1831265407091493',
		status : false,
		cookie : false,
		xfbml : true
	});

	FB.getLoginStatus(function(response) {
		if (response.status === 'connected') {
		} else if (response.status === 'not_authorized') {
		} else {
		}
	});
	FB.Event.subscribe('auth.logout', function(response) {
		document.location.reload();
	});
	

};
(function(d) {
	var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
	if (d.getElementById(id)) {
		return;
	}
	js = d.createElement('script');
	js.id = id;
	js.async = true;
	js.src = "//connect.facebook.net/ko_KR/all.js";
	ref.parentNode.insertBefore(js, ref);
}(document));