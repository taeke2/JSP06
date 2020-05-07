<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginParam</title>
</head>
<body>
	<form action="resultParam.jsp" method="get">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pwd" placeholder="비밀번호"><br>
		<!-- password field는 한글이 안들어감***기억하기*** -->
		<input type="submit" value="로그인">
	</form>
	
</body>
</html>