<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- core를 사용할 때 prefix를 c로 해놓으면 저걸 쓸 때 c로 선언하여 사용한다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl01</title>
</head>
<body>
	<!-- if문에서 else if와 else 쓰는 법 -->
	<c:set var="test" value="길동"/>
	<c:choose>
		<c:when test="${test=='홍길동' }">
			<b>홍길동이 같다</b>
			<!-- else if -->
		</c:when>
		<c:when test="${test=='김길동' }">
			<b>김길동이 같다</b>
			<!-- else if -->
		</c:when>
		<c:otherwise>
			<!-- else -->
			<b>같은값이 없다</b>
		</c:otherwise>
	</c:choose>
<hr>
	<!-- import 하기 -->
	<%-- <c:import url="el01.jsp"/> --%>
	
	<!-- 페이지 이동 -->
	<%-- <c:redirect url="el01.jsp"/> --%>
	
	<!-- 세션 생성 -->
	<c:set var="mySession" value="kakaka" scope="session"/>
	<a href="el01.jsp">세션 생성 후 el01 이동</a>
	
	<!-- 세션 삭제 -->
	<c:remove var="mySession"/>
<hr>
	<%
		String[] name = {"111", "222", "333", "444"};
		ArrayList arr = new ArrayList();
		arr.add("test");
		arr.add("bbbb");
		arr.add("kkkk");
	%>
	<c:set var="values" value="<%=arr %>"/>
	<c:forEach var="st" items="${values }">
		${st}<br>
	</c:forEach>
<hr>
	<%
		String ss = "test";
		if(ss.equals("test")){%>
		<b>두 값은 같습니다.</b><br>
		<%} 
	%>
	<!-- 위 아래 같은 식 -->
	<c:set var="num02" value="test"/>
	<c:if test = '${num02 == "test" }'>
		<b>두 값은 같습니다.</b>
	</c:if>
<hr>
	<% String s = "test"; %>
	<c:set var="s01" value="<%=s %>"/>
	s01 : ${s01}<br>
	s : ${s }	<!-- 위에서 만든 s값을 받아올 수 없다. -->
<hr>
	<!-- 이런 방식으로도 쓸 수 있음 -->
	<c:set var="num01">
		안녕하세요 만나서 반갑습니다
	</c:set>
	${num01 }
<hr>
	<!-- var는 변수이름 value는 값 -->
	<c:set var="num" value="test jstl2222"/>
	${num }<br>
<hr>
	<!-- prefix가 c로 설정했기 때문에 c: 로 사용 -->
	<c:out value="test jstl"/>
</body>
</html>