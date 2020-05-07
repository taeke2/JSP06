<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el01</title>
</head>
<body>

	<h1>세션 : ${mySession }</h1>
<hr>
	<h1>연산자들</h1>
	\${(5>2) || (5<2)} : ${(5>2) || (5>2)} => \${false or true} : ${false or true}<br>
	\${(5>2) && (5>2)} : ${(5>2) && (5>2)} => \${false and true} : ${false and true}<br>
	\${ !(5>2) }  : ${ !(5>2) }  => \${ not false} : ${ not false }<br>
	
<hr>
	\${5 == 2} : ${5 == 2} => \${5 eq 5} : ${5 eq 5}<br>
	\${5 != 2} : ${5 != 2} => \${5 ne 5} : ${5 ne 5}<br>
	\${5 < 2}  : ${5 < 2}  => \${5 lt 2} : ${5 lt 2}<br>
	\${5 > 2}  : ${5 > 2}  => \${5 gt 2} : ${5 gt 2}<br>
	\${5 <= 2} : ${5 <= 2} => \${5 le 2} : ${5 le 2}<br>
	\${5 >= 2} : ${5 >= 2} => \${5 ge 2} : ${5 ge 2}<br>

<hr>
	\${5 + 2} : ${5 + 2}<br>
	\${5 - 2} : ${5 - 2}<br>
	\${5 * 2} : ${5 * 2}<br>
	\${5 / 2} : ${5 / 2}<br>
	\${5 div 2} : ${5 div 2}<br>
	\${5 % 2} : ${5 % 2}<br>
	\${5 mod 2} : ${5 mod 2}<br>

<hr>
	${"el 표현식"}<br>
	<%="출력" %><br>
	<%out.print("출력"); %>
</body>
</html>
