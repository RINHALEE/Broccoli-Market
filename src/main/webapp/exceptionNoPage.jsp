<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;700&display=swap" rel="stylesheet">
<title>404 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" style="background-color : #88D743; font-family: 'Hahmlet'">
		<div class="container">
			<h2><strong>요청하신 페이지를 찾을 수 없습니다.</strong></h2>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>