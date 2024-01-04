function CheckAddMember() {
	var memberId = document.getElementById("memberId");
	var password = document.getElementById("password");
	var name = document.getElementById("name");
	var phone = document.getElementById("phone");
	
	//회원 아이디 체크
	if(!check(/^[a-zA-Z]*$/, memberId, "아이디는 영문만 입력해 주세요."))
		return false;
	
}