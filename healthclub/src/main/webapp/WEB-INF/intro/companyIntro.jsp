<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
   <style>
      .container {
        width: 90%;
        margin: auto;
      }
      .youtubeWrap {
        position: relative;
        width: 100%;
        padding-bottom: 56.25%;
      }
      .youtubeWrap iframe {
        position: absolute;
        width: 1000px;
        height: 500px;
      }
    </style>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$("#ch").click(function(){
		$("#if").attr("src",$("#in").val());
	});
	  return false
});
</script>
</head>
<body>
	<font size=9><b>��� �ｺ��</b></font>
	<br>
	<br>

	<font color="red">WORLD ��� INTERNATIONAL (SINCE 1976) </font>
	<p>�� 40�� ����� ������ ��Ʈ�Ͻ� ��� ������ʸ� �ڶ��ϴ� ����� ���� ������ �鸸���� �Ѵ� ȸ���� �����ϰ� �ִ�
		�������� ��Ʈ�Ͻ� �����������Դϴ�. Bodybuilding���� �������� ��ȭ ��Ÿ�ܡ��� ���ΰ� Joe Gold�� 1976��
		World Gym ���� �̷� Arnold Schwarzenegger, Rou Ferrigno Dave Draper �� ������
		�Ҹ���� ��Ÿ�� �����Ͽ����ϴ�.
	<P>
		<embed
			src=http://www.youtube.com/embed/LEPWY5InD6k?&amp;hl=ko_KR&autoplay=1
			type="application/x-shockwave-flash" width="560" height="315"
			allowscriptaccess="always" allowfullscreen="true"></embed>
			
	<div class="c">
      <h1>Enjoy the video</h1>
      <input id="in" type="text"/>
      <input id="ch" type="button" value="������ ����"/>
      <div class="youtubeWrap">
        <iframe id="if" src="https://www.youtube.com/embed/NgaseuL6C1c" frameborder="0" allowfullscreen></iframe>
      </div>


</div>
</body>
</html>