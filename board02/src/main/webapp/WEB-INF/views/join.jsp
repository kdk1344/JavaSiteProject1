<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board02/join" method="post" name="joinForm">
		<p>
			<label>아이디 : <input type="text" name="id"></label>
		</p>
		<p id="result"></p>
		<p><label>이름 : <input type="text" name="name"></label></p>
		<p><label>비밀번호 : <input type="password" name="pw"></label></p>
		<p><label>비밀번호 확인 : <input type="password" name="confirmpassword"></label></p>
		<p>
			성별: 
			남자 <input type="radio" name="gender" value="남자" checked>
			여자 <input type="radio" name="gender" value="여자" checked>
		</p>
		<p><label>이메일 : <input type="text" name="email"></label></p>
		
		<li><input type="submit" class="button" value="가입완료" /></li>
	</form>
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
<script src="member.js"></script>
</html>