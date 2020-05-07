<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resultScope</title>
</head>
<body>
	name : ${name }<br>
	<!-- name만 쓰면 존재하는 값 중에 가장 범위가 작은 값을 가져온다. result에서는 session이 가장 작은 범위임. -->
	page name : ${pageScope.name }<br>
	request name : ${requestScope.name }<br>
	session name : ${sessionScope.name }<br>
	application name : ${applicationScope.name }<br>
	<input type="button" value="이전" onclick="history.back()">
	
	<!-- 
		설명끝나고 사이트 들어감
		http://tomcat.apache.org/taglibs/standard/
		standard 1.1(두번쨰) 다운로드 클릭
		binaries/ 클릭
		933K 다운로드
		압축 풀기
		폴더 들어가서 lib 들어가서 파일 두개 복사 후, 프로젝트 WEB-INF/lib 에다가 붙여넣기
	 -->
</body>
</html>