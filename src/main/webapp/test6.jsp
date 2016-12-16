<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style>
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css');

[type="checkbox"]:not(:checked),
[type="checkbox"]:checked {
  position: absolute; 
  left: -9999px;
}
[type="checkbox"]:not(:checked) + label,
[type="checkbox"]:checked + label {
  position: relative;
  padding-left: 95px;
  cursor: pointer;
}
[type="checkbox"]:not(:checked) + label:before,
[type="checkbox"]:checked + label:before,
[type="checkbox"]:not(:checked) + label:after,
[type="checkbox"]:checked + label:after {
  content: '';
  position: absolute;
}
[type="checkbox"]:not(:checked) + label:before,
[type="checkbox"]:checked + label:before {
  left: 0; top: 0;
  width: 80px; height: 22px;
  background:#f93bc0;
  border-radius: 10px;
  transition: background-color .2s;
}
[type="checkbox"]:not(:checked) + label:after,
[type="checkbox"]:checked + label:after {
  width: 30px; height: 22px;
  transition: all .2s;
  border-radius: 6px 0 0 6px;
  background: #ffc1dc;
  top: 0; left: 0;
}

/* on checked */
[type="checkbox"]:checked + label:before {
  background:#ffc1dc; 
}
[type="checkbox"]:checked + label:after {
  background: #f93bc0;
  top: 0; left: 51px;
  border-radius: 0 6px 6px 0;
}

[type="checkbox"]:checked + label .ui,
[type="checkbox"]:not(:checked) + label .ui:before,
[type="checkbox"]:checked + label .ui:after {
  position: absolute;
  left: 6px;
  width: 65px;
  border-radius: 15px;
  font-size: 14px;
  font-weight: bold;
  line-height: 22px;
  transition: all .2s;
}

[type="checkbox"]:not(:checked) + label .ui:before {
  font-family: 'FontAwesome';
  content: "\f00d";
  left: 46px;
  margin-top: 3px;
}
[type="checkbox"]:checked + label .ui:after {
  font-family: 'FontAwesome';
  content: "\f00c";
  color: #f93bc0;
  margin-top: 3px;
  left: 12px;
}
[type="checkbox"]:focus + label:before {
  border: 0; outline: 0;
  box-sizing: border-box;
}

/* Basics */



</style>
</head>

<body>

<form action="#">
<p><input type="checkbox" id="test1" /><label for="test1"><span class="ui"></span>19금컨</label></p>
<p><input type="checkbox" id="test2" /><label for="test2"><span class="ui"></span>London</label></p>
<p><input type="checkbox" id="test3" /><label for="test3"><span class="ui"></span>New York</label></p>
</form>

  <!--End Pattern HTML-->
	<script src="javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="javascript/cookie/cookie.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">

	</script>
</body>
</html>
