<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;700&display=swap" rel="stylesheet">
<title>Login</title>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	<div class="jumbotron" style="background-color: #88D743; ">
		<div class="container" style="center">
			<h1 class="display-5" style="font-family: 'Hahmlet'"><strong>로그인</strong></h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">

				<div class="form-group">
					<label for="inputUserName" class="sr-only">ID</label> 
					<input type="text" class="form-control" placeholder="ID" name='id' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">PASSWORD</label> 
					<input type="password" class="form-control" placeholder="Password" name='password' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>

			</form>
		</div>
	</div>
</body>
</html>