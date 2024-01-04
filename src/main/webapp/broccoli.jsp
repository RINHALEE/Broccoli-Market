<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;700&display=swap" rel="stylesheet">	
	<style>	
		@FONT-FACE{
			font-family: 'Hahmlet', serif;
		}
	</style>
	<title>BROCCOLI MARKET</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%! String greeting = "안녕하세요.";
	String greeting1 = "중고 물품 판매 사이트 ";
	String greeting2 = "브로콜리마켓 입니다.";
	String tagline = "※회원가입 및 로그인을 하셔야 이용하실 수 있습니다."; %>
	<div class = "jumbotron" style="background-color : #88D743">
		<div class = "container text-center" >
			<h1 class = "display-6" style="font-family: 'Hahmlet'">
				<strong><%= greeting %> <br>
				<%= greeting1 %> <br>
				<%= greeting2 %> </strong>
			</h1>
		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<p style="font-family: 'Hahmlet'">
				<%= tagline %>
			</p>
		</div>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>