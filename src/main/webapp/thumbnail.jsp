<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style type="text/css">
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
	
	</script>
</body>
</html>
