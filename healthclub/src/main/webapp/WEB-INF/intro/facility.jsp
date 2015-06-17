<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
var $list = $('ul.imageSlide');
var size = $list.children().outerWidth();
var len = $list.children().length;
var speed = 5000;
var timer = null;
var auto = true;
var cnt = 1;
$list.css('width',len*size);
if(auto)timer = setInterval(autoSlide, speed);
$list.children().bind({})

</script>
<title>Insert title here</title>
</head>
<style>
.Slide {width: 325px; height: 203px; overflow: hidden; position: relative;}
.imageSlide {width: 325px; height: 203px; position: absolute;}
.imageSlide {width: 325px; float: left;}

.slideDot {cursor: pointer; margin: 33px 0 0 253px; position: absolute;}
.slideDot li {margin: 0 3px; float: left;}

</style>
<body>
<div class="Slide">
	<ul class="imageSlide">
		<li>내용1</li>
		<li>내용2</li>
		<li>내용3</li>
		<li>내용4</li>
		<li>내용5</li>
		<li>내용6</li>
	</ul>
	<ul class="slideDot">
		<li><img alt="" src="PP/si1.jpg"></li>
		<li><img alt="" src="PP/si2.jpg"></li>
		<li><img alt="" src="PP/si3.jpg"></li>
		<li><img alt="" src="PP/si4.jpg"></li>
		<li><img alt="" src="PP/si5.jpg"></li>
		<li><img alt="" src="PP/si6.jpg"></li>
	</ul>
</div>

</body>
</html>