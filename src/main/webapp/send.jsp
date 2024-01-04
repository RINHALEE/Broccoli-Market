<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;700&display=swap" rel="stylesheet">

<title>쪽지함</title>

<style>

table.type10 thead th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
  background: #e7708d;
  margin: 20px 10px;
}
th {
  padding: 10px;
}
td {
  padding: 10px;

}
</style>
</head>
<body >
	<%@ include file="menu.jsp" %>
	<div class="jumbotron" style="background-color: #88D743; font-family: 'Hahmlet'">
		<div class="container">
			<h1 class="display-5" ><strong>쪽지 보내기</strong></h1>
		</div>
	</div>
	<div class="container" style="font-family: 'Hahmlet'">
		<div class="row">
			<form name="newMail" class="form-horizontal"  action="processAddMail.jsp" method="post" >
				<div class="form-group  row">
					<label class="col-sm-5 ">보내는 사람</label>
					<div class="col-sm-5">
						<input id="send_id" name="send_id" type="text" value="<%=sessionId%>" readonly>
					</div>
				</div>
				<div class="form-group  row">
					<label class="col-sm-5 ">받는 사람</label>
					<div class="col-sm-5">
						<input id="get_id" name="get_id" type="text" placeholder="받는 사람을 입력해 주세요." required>
					</div>
				</div>
				<div class="form-group  row">
					<label class="col-sm-5 ">내용</label>
					<div class="col-sm-7">
					<textarea id="description" name="description" cols="50" rows="2" class="form-control" placeholder="쪽지 내용" required></textarea>
					</div>
				</div>
				<div class="container" style="float: right">
					<input type="submit" class="btn btn-outline-success" value="전송" > 
					<input type="reset" class="btn btn-outline-danger"  value="취소" onclick="reset()" >
				</div>
			</form>
		</div>
	</div>

	<%@ include file = "footer.jsp" %>
</body>
</html>
