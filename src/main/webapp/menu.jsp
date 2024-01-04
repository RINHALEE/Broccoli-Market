<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand navbar-light ">
<div class="container" style="font-family: 'Hahmlet'">
	<div class="navbar-header">
		<a class="navbar-brand" href="./broccoli.jsp" style="font-family: 'Hahmlet'"><img src="./resources/images/title.jpg" width="70"/>브로콜리마켓</a>
	</div>
	<div>
		<ul class="navbar-nav mr-auto">
			<c:choose>
				<c:when test="${empty sessionId}">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/loginMember.jsp"/>"><b>로그인</b></a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/addMember.jsp"/>"><b>회원가입</b></a></li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/allproduct.jsp"/>" style="color:green"><b>물품 전체보기</b></a></li>
					<li class="nav-item"><a href="./mail.jsp"><img src="./resources/images/mail.png" width="40"></a></li>
					<li style="padding-top: 7px;"><a href="./updateMember.jsp" style="color: black"><b>[<%=sessionId %>]</b></a>님 환영합니다.</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/logoutMember.jsp"/>" style="color:#A52A2A"><b>로그아웃</b></a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</div>
</nav> 
