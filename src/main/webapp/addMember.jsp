<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;700&display=swap" rel="stylesheet">
<script type="text/javascript">
	function checkForm() {
		var regExpId = /^[a-zA-Z]*$/;
		var regExpPasswd = /^[a-zA-Z0-9]*$/;
		var regExpName = /^[가-힣]*$/;
		var regExpPhone = /^\d{2,3}-\d{3,4}-\d{4}$/;
		
		var m_id = document.newMember.id.value;
		var m_pw = document.newMember.password.value;
		var m_name = document.newMember.name.value;
		var m_phone = document.newMember.phone.value;
		var m_address = document.newMember.address.value;
		
		if (!m_id) {
			alert("아이디를 입력하세요.");
			return false;
		} else if (!regExpId.test(m_id)) {
			alert("아이디는 영문만 입력 가능합니다.");
			return false;
		} else if (m_id.length > 10) {
			alert("아이디는 10자 이내로 입력하세요.");
			return false;
		}
	
		if (!m_pw) {
			alert("비밀번호를 입력하세요.");
			return false;
		} else if (!regExpPasswd.test(m_pw) || m_pw.length<4 || m_pw.length>12) {
			alert("비밀번호는 4~12자로 영문과 숫자를 조합해서 입력하세요.")
			return false;
		}

		if (m_pw != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		
		if (!m_name) {
			alert("이름을 입력하세요.");
			return false;
		} else if (!regExpName.test(m_name)) {
			alert("이름은 한글로 입력하세요.");
			return false;
		}
		
		if(!m_phone) {
			alert("전화번호를 입력하세요.");
			return false;
		} else if(!regExpPhone.test(m_phone)) {
			alert("전화번호는 [ㅇㅇㅇ-ㅇㅇㅇㅇ-ㅇㅇㅇㅇ]형식으로 입력하세요.");
			return false;
		}
		
		if(!m_address) {
			alert("주소를 입력하세요.");
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
			<h1 class="display-5" style="font-family: 'Hahmlet'"><strong>회원 가입</strong></h1>
		</div>
	</div>

	<div class="container" style="font-family: 'Hahmlet'">
		<form name="newMember" class="form-horizontal"  action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-3 ">아이디</label>
				<div class="col-sm-5">
					<input name="id" id="memberId" type="text" class="form-control" placeholder="아이디는 영문만 입력해 주세요." >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-3">비밀번호</label>
				<div class="col-sm-5">
					<input name="password" id="password" type="text" class="form-control" placeholder="4~12자로 영문과 숫자만 입력해 주세요." >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-3">비밀번호확인</label>
				<div class="col-sm-5">
					<input name="password_confirm" type="text" class="form-control" placeholder="비밀번호 확인" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-3">성명</label>
				<div class="col-sm-5">
					<input name="name" id="name" type="text" class="form-control" placeholder="이름을 입력해 주세요." >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-3">성별</label>
				<div class="col-sm-5">
					<input name="gender" type="radio" value="남" /> 남 
					<input name="gender" type="radio" value="여" /> 여
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3">생일</label>
				<div class="col-sm-7  ">
					<input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6"> 
					<select name="birthmm">
						<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> 
					<input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-3">이메일</label>
				<div class="col-sm-7">
					<input type="text" name="mail1" maxlength="50">@ 
					<select name="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-3">전화번호</label>
				<div class="col-sm-5">
					<input name="phone" id="phone" type="text" class="form-control" placeholder="000-1234-5678" >

				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-3 ">주소</label>
				<div class="col-sm-5">
					<input name="address" type="text" class="form-control" placeholder="주소를 입력해 주세요.">

				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3">자기소개</label>
				<div class="col-sm-5">
					<textarea name="myself" cols="50" rows="2" class="form-control" placeholder="자기소개"></textarea>
				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " style="background-color: green;  border:0" value="회원가입" > 
					<input type="reset" class="btn btn-primary " style="background-color:  #A52A2A;  border:0" value="취소 " onclick="reset()" >
				</div>
			</div>
			
		</form>
	</div>
</body>
</html>