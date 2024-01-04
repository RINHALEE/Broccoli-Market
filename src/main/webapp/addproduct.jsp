<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;700&display=swap" rel="stylesheet">

<script type="text/javascript">
	function checkProduct() {
		var regExpId = /^[0-9]*$/;
		var regExpPrice = /^[0-9]*$/;
		
		var p_id = document.newProduct.id.value;
		var p_name = document.newProduct.name.value;
		var p_category = document.newProduct.category.value;
		var p_price = document.newProduct.price.value;
		var p_description = document.newProduct.description.value;
		var memberid = document.newProduct.memid.value;

		
		if (!p_id) {
			alert("물품번호를 입력하세요.");
			return false;
		} else if (!regExpId.test(p_id)) {
			alert("물품번호는 숫자만 입력 가능합니다.");
			return false;
		} else if (p_id.length > 10) {
			alert("물품번호를 10자 이내로 입력하세요.");
			return false;
		}
	
		if (!p_name) {
			alert("이름을 입력하세요.");
			return false;
		}
		
		if (!p_price) {
			alert("가격을 입력하세요.");
			return false;
		} else if (!regExpPrice.test(p_price)) {
			alert("가격은 숫자만 입력 가능합니다.");
			return false;
		}
		
	}
</script>
<title>회원 가입</title>
</head>
<body >
	<jsp:include page="/menu.jsp" />
	<div class="jumbotron" style="background-color: #88D743; ">
		<div class="container">
			<h1 class="display-5" style="font-family: 'Hahmlet'"><strong>물품 등록</strong></h1>
		</div>
	</div>

	<div class="container" style="font-family: 'Hahmlet'">
		<form name="newProduct" class="form-horizontal"  action="processAddProduct.jsp" method="post" onsubmit="return checkProduct()">
			<div class="form-group  row">
				<label class="col-sm-3 ">물품 번호</label>
				<div class="col-sm-5">
					<input name="id" id="p_id" type="text" class="form-control" placeholder="숫자만 입력해 주세요." >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-3">물품 이름</label>
				<div class="col-sm-5">
					<input name="name" id="name" type="text" class="form-control" placeholder="이름을 입력해 주세요." >
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-3">카테고리</label>
				<div class="col-sm-7"> 
					<select name="category" id="category">
						<option>기타</option>
						<option>패션</option>
						<option>가구</option>
						<option>IT/가전</option>
						<option>애완용품</option>
						<option>식품</option>
					</select>
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-3 ">가격</label>
				<div class="col-sm-5">
					<input name="price" id="price" type="text" class="form-control" placeholder="가격을 입력해 주세요.">

				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3">물품 소개</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control" placeholder="물품 소개"></textarea>
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-3 ">사진</label>
				<div class="col-sm-5">
					<input name="file" id="file" type="file" class="form-control">
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-3 ">등록자</label>
				<div class="col-sm-5">
					<input name="memid" id="memid" type="text" class="form-control" value="<%=sessionId%>" readonly/>
				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " style="background-color: green;  border:0" value="등록" > 
					<input type="reset" class="btn btn-primary " style="background-color:  #A52A2A;  border:0" value="취소 " onclick="reset()" >
				</div>
			</div>
			
		</form>
	</div>
</body>
</html>