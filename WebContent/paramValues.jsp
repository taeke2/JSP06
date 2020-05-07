<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramValues</title>
</head>
<body>
	<jsp:useBean id="dao" class="jsp06.Test"/>
	${dao.insert() }
	<c:set var="str" value="안녕하세요"/>
	<c:forEach var="dto" items="${dao.getArr(str) }">
		${dto.id }<br>
		${dto.pwd }<hr>
	</c:forEach>
	
	<form action="paramResearch.jsp">
		좋아하는 계절 : 
			<input type="checkbox" name="season" value="spring">봄
			<input type="checkbox" name="season" value="summer">여름
			<input type="checkbox" name="season" value="fall">가을
			<input type="checkbox" name="season" value="winter">겨울
			<input type="submit" value="전송">
	</form>
</body>
</html>