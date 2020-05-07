<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramResearch</title>
</head>
<body>
	<fmt:requestEncoding value="utf-8"/>
	<%
		String[] s = request.getParameterValues("season");
		out.print("당신이 좋아하는 계절<br>");
		for(String ss : s){
			out.print(ss + "<br>");
		}
	%>
<hr>
	<c:forEach var="season" items="${paramValues.season }">
		${season }<br>
	</c:forEach>
</body>
</html>