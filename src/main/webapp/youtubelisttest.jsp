<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style>
/* ==========================================================================
   $Variables
   ========================================================================== */
/* $Fonts
   ========================================================================== */
/* $Colors
   ========================================================================== */
/* $Radius
   ========================================================================== */
/* $Easing
   ========================================================================== */
/* ==========================================================================
   $Mixins
   ========================================================================== */
/* ==========================================================================
   $Globals
   ========================================================================== */
html {
  box-sizing: border-box;
}

*,
*:before,
*:after {
  box-sizing: inherit;
}

/* body {
  background-color: #04A777;
  font: 18px/1.277 "Jaldi", sans-serif;
  color: #fff;
}
 */
main {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  min-height: 100vh;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  text-align: center;
}

.wrap {
  max-width: 80%;
}

iframe {
  border: 0;
}

a {
  color: inherit;
  text-decoration: none;
}

:focus {
  outline-color: #04A777;
}

/* ==========================================================================
   $Buttons
   ========================================================================== */
.btn {
  background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
  background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
  border: 1px solid;
  border-radius: 7px;
  display: inline-block;
  text-align: center;
  -webkit-transition: all 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
  transition: all 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
}
.btn:active, .btn:focus, .btn:hover {
  -webkit-transition: all 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  transition: all 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.btn-primary {
  background-color: #291720;
  border-color: #291720;
  padding: 1em 1.5em;
}
.btn-primary:active, .btn-primary:focus, .btn-primary:hover {
  background-color: #21121a;
}

/* .btn-has-icon .icon {
  margin-right: 0.1em;
  opacity: 0;
  -webkit-transform: translateX(-100%);
          transform: translateX(-100%);
  -webkit-transition: all 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
  transition: all 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
} */
/* .btn-has-icon .icon-text {
  display: inline-block;
  -webkit-transform: translateX(-0.22em);
          transform: translateX(-0.22em);
  -webkit-transition: all 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
  transition: all 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
} */
.btn-has-icon:active .icon, .btn-has-icon:focus .icon, .btn-has-icon:hover .icon {
  opacity: 1;
  -webkit-transform: translateX(0);
          transform: translateX(0);
  -webkit-transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
          transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
/* .btn-has-icon:active .icon-text, .btn-has-icon:focus .icon-text, .btn-has-icon:hover .icon-text {
  -webkit-transform: translateX(0);
          transform: translateX(0);
  -webkit-transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
          transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
} */

/* ==========================================================================
   $Flexible Media
   ========================================================================== */
.flex-media {
  height: 0;
  overflow: hidden;
  padding-bottom: 56.25%;
  position: relative;
}
.flex-media iframe,
.flex-media object {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  height: 100%;
  width: 100%;
}

/* ==========================================================================
   $Media Object
   ========================================================================== */
.media,
.media-body {
  overflow: hidden;
}

.media-left .media-img {
  float: left;
  margin-right: 1.277em;
}

.media-right .media-img {
  float: right;
  margin-left: 1.277em;
}

.media-img img {
  display: block;
}

/* ==========================================================================
   $Magnific Popup (lightbox)
   ========================================================================== */
.popup {
  background-color: #fff;
  box-shadow: 0 0 6px rgba(0, 0, 0, 0.6);
  color: #1a1b1b;
  max-width: 976px;
  margin: auto;
  overflow: hidden;
  position: relative;
  width: 85%;
}

.mfp-close {
  color: #DEDFDF;
  position: absolute;
  top: 0;
  right: 0;
}

/* $Interactive Stuff
   ========================================================================== */
.mfp-active.mfp-bg {
  opacity: 0;
  -webkit-transition: opacity 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
  transition: opacity 0.2s cubic-bezier(0.6, -0.28, 0.735, 0.045);
}
.mfp-active .mfp-content {
  -webkit-transition: all 0.24s;
  transition: all 0.24s;
  -webkit-transform: translateY(15%);
          transform: translateY(15%);
  opacity: 0;
}

.mfp-ready.mfp-bg {
  opacity: 0.85;
}
.mfp-ready .mfp-content {
  opacity: 1;
  -webkit-transform: translateY(0);
          transform: translateY(0);
}

.mfp-removing.mfp-bg {
  opacity: 0;
}
.mfp-removing .mfp-content {
  opacity: 0;
  -webkit-transform: translateY(15%);
          transform: translateY(15%);
  -webkit-transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
          transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

/* ==========================================================================
   $Gallery
   ========================================================================== */
.gallery-items {
  padding: 0 0.31em;
}

.gallery-title {
  border-top: 1px solid #DEDFDF;
  border-bottom: 1px solid #DEDFDF;
  font-weight: 700;
  overflow: hidden;
  padding: 0.62em 1.277em;
}

.gallery-item {
  padding: 0.31em 0 0.62em;
  -webkit-transition: background 0.25s;
  transition: background 0.25s;
}
.gallery-item:active, .gallery-item:focus, .gallery-item:hover {
  background-color: #e2e3e3;
}

.gallery-item + .gallery-item {
  border-top: 1px solid #DEDFDF;
}

.gallery-item-desc {
  font-size: 77%;
  -webkit-transition: color 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  transition: color 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
.gallery-item-desc:after {
  content: 'Playing';
  display: block;
  font-size: 80%;
  letter-spacing: 1px;
  speak: none;
  opacity: 0;
  text-transform: uppercase;
  -webkit-transform: translateY(100%);
          transform: translateY(100%);
  -webkit-transition: all 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  transition: all 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.active .gallery-item-desc {
  color: #04A777;
  -webkit-transition-timing-function: cubic-bezier(0.6, -0.28, 0.735, 0.045);
          transition-timing-function: cubic-bezier(0.6, -0.28, 0.735, 0.045);
}
.active .gallery-item-desc:after {
  opacity: 1;
  -webkit-transform: translateY(0);
          transform: translateY(0);
  -webkit-transition-timing-function: cubic-bezier(0.6, -0.28, 0.735, 0.045);
          transition-timing-function: cubic-bezier(0.6, -0.28, 0.735, 0.045);
  speak: normal;
}

@media (min-width: 925px) {
  .gallery-main {
    float: left;
    width: 65%;
  }

  .gallery-items {
    margin-top: 2.55em;
    overflow-x: hidden;
    overflow-y: scroll;
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    width: 35%;
  }
}

</style>
</head>

<body>

  <div class="wrap">
    <div id="vid-gallery" class="popup gallery mfp-hide">
      <ul class="gallery-items">
        <li class="gallery-item"><a  id="player"  name="video" href="ab" class="gallery-item-link"></a></li>
        <li class="gallery-item"><a  id="player1"  name="video" href="ab" class="gallery-item-link"></a></li>
        <li class="gallery-item"><a  id="player2"  name="video" href="ab" class="gallery-item-link"></a></li>
        
      </ul>
    </div>
  </div>



	<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="javascript/cookie/cookie.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">
	/**
	 * Project: Youtube Gallery
	 * Description: Creates a gallery w/ playlist for youtube videos.
	 * Author: James Mejia
	 */
	;(function($) {
		console.log($.cookie('uri'));
		console.log($.cookie('uri1'));
		console.log($.cookie('uri2'));
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
		
		
		
		
		
		
	  var pluginName  = 'vidGallery',
	    dataKey   = 'plugin_' + pluginName,
	    defaults  = {
	      galleryMainClass: 'gallery-main',
	      galleryItemsClass:  'gallery-items',
	      galleryItemClass: 'gallery-item',
	      galleryTitleText:   '최근 본 동영상 ',
	      // Valid sizes: default (default), medium (mqdefault),
	      // high (hqdefault), standard (sqdefault), max (maxresdefault)
	      thumbSize:      'default'
	    };

	  function Plugin (element, options) {

	    this.element  = element;
	    this.$element   = $(element);
	    this.options  = $.extend({}, defaults, options);

	    this._defaults = defaults;
	    this._name = pluginName;

	    this.init(options);

	  }

	  Plugin.prototype = {

	    init: function () {

	      this._getVideos();
	      this._getMainVid();
	      this._getEvents();

	      return this;

	    },
	    _getVideos: function () {

	      var self      = this,
	        thumbSize     = self.options.thumbSize;

	      videoList = [];

	      switch ( thumbSize ) {

	        case 'default':
	          thumbSize = 'default.jpg';
	          break;
	        case 'mqdefault':
	        case 'medium':
	          thumbSize = 'mqdefault.jpg';
	          break;
	        case 'hqdefault':
	        case 'high':
	          thumbSize = 'hqdefault.jpg';
	          break;
	        case 'sddefault':
	        case 'standard':
	          thumbSize = 'sddefault.jpg';
	          break;
	        case 'maxresdefault':
	        case 'max':
	          thumbSize = 'maxresdefault.jpg';
	          break;
	        default:
	          throw new Error( '`' + self.options.thumbSize + '`' + ' is not a valid thumbnail size. Valid sizes: default (default), medium (mqdefault), high (hqdefault), standard (sqdefault), max (maxresdefault)');

	      }

	      $('.' + self.options.galleryItemClass).each(function (index) {

	        var $vidLink = $(this).find('a.gallery-item-link'),listItem = [];
	        console.log($vidLink.attr('href'));
	        
	        
	        if($vidLink.attr('href')!=null){
	        console.log($vidLink.attr('href').split('v=')[1]);
	        }
	        videoList.push({
	          reference: this,
	          videoId: $vidLink.attr('href').split('v=')[1],
	          vidDesc: $vidLink.text()
	        });
	        

	        $vidLink.html('');

	        listItem  += '<div class=\"media media-left\">';
	        listItem  +=    '<div class=\"media-img gallery-item-thumb\">';
	        listItem  +=      '<img src=\"http://i.ytimg.com/vi/' + videoList[index].videoId + '/' + thumbSize + '\"/>';
	        listItem  +=    '</div>';
	        listItem  +=    '<div class=\"media-body gallery-item-desc\">';
	        listItem  +=      videoList[index].vidDesc;
	        listItem  +=    '</div>';
	        listItem  +=  '</div>';

	        $vidLink.append(listItem);

	      });

	    },
	    _getMainVid: function () {

	      var self    = this,
	        mainVid   = [];

	        mainVid   += '<div class=\"' + self.options.galleryMainClass + '\">';
	        mainVid   +=    '<div class=\"flex-media\">';
	        mainVid   +=      '<iframe src=\"https://www.youtube.com/embed/' + videoList[0].videoId + '?rel=0' + '\" seamless>';
	        mainVid   +=    '</div>';
	        mainVid   += '</div>';

	        $('.gallery').prepend(mainVid);
	        $('<div class=\"gallery-title\">' + self.options.galleryTitleText + '</div>').insertBefore('.gallery-items');
	        $('.' + self.options.galleryItemClass).eq(0).addClass('active');

	    },
	    _getEvents: function () {

	      var self = this;

	      $('.' + self.options.galleryItemClass).on('click', function (e) {

	        e.preventDefault();

	        var $iframe     = $('.' + self.options.galleryMainClass).find('iframe'),
	          currentIndex  = $(this).index(),
	          newSrc      = 'https://www.youtube.com/embed/' + videoList[currentIndex].videoId + '?rel=0';


	        if ( !$(this).hasClass('active') ) {

	          $(this).siblings().removeClass('active');
	          $(this).addClass('active');
	          $iframe.attr('src', newSrc);

	        }

	      });

	    }
	  };

	  $.fn[pluginName] = function (options) {

	    var plugin = this.data(dataKey);

	    if ( plugin instanceof Plugin ) {
	      if (typeof options !== 'undefined') {
	        plugin.init(options);
	      }
	    } else{
	      plugin = new Plugin(this, options);
	      this.data(dataKey, plugin);
	    }

	    return plugin;

	  };

	})(jQuery);


	$(function() {
	    
	  $('.gallery').vidGallery();

	  $('.vid-popup').magnificPopup({
	    type: 'inline',
	    preloader: false,
	    showCloseBtn: true,
	    mainClass: 'mfp-active',
	    removalDelay: 300
	  });
	  
	});
	</script>
</body>
</html>
