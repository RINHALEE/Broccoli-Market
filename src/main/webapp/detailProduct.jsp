<%@ page contentType="text/html; charset=utf-8" %>
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
		
		#category {
			height: 30px;
			width: 900px;
		}
		
		#category ul li {
			list-style: none;
			color: #88D743;
			background-color: white;
			float: left;
			line-height: 30px;
			vertical-align: middle;
			text-align: center; 
		}
		
		#category .menuL {
			text-decoration: none;
			color: #65D35D;
			display: block;
			width: 100px;
			font-size:13px;
			font-weight: bold;
			font-family: 'Hahmlet', serif;
		}
		
		#category .menuL:hover {
			color: green;
			background-color: #EAEAEA;
		}
	</style>
	<script type="text/javascript">
	function deleteConfirm(id) {
		if(confirm("해당 물품을 삭제하시겠습니까?") == true)
			location.href = "./deleteProduct.jsp?id=" + id;
		else
			return;
	}
</script>
	<title>물품 보기</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<hr style="border: solid 3px green">
	<nav id="category">
		<ul>
			<li><a class="menuL" href="./allproduct.jsp">카테고리</a></li>
			<li><a class="menuL" href="./category_fashion.jsp">패션</a></li>
			<li><a class="menuL" href="./category_furniture.jsp">가구</a></li>
			<li><a class="menuL" href="./category_IT.jsp">IT/가전</a></li>
			<li><a class="menuL" href="./category_pet.jsp">애완용품</a></li>
			<li><a class="menuL" href="./category_eat.jsp">식품</a></li>
			<li><a class="menuL" href="./category_therest.jsp">기타</a></li>
			<li><a class="menuL" href="./myproduct.jsp?id=<%=sessionId %>" style="color: black">내 물품 보기</a></li>
			
		</ul>
	</nav>
	<hr style="border: solid 3px #86E57F">
	
	<%@ include file="dbconn.jsp"%>
	
	<%
		String productId = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "SELECT * FROM product WHERE p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container" style="font-family: 'Hahmlet', serif;">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><b><%=rs.getString("p_name")%></b></h3>
				<p style="color: black"><%=rs.getString("p_description")%>
				<p>등록 회원 : <%=rs.getString("m_id") %>
				<p><%=rs.getString("p_category") %>
				<h4><%=rs.getString("p_price")%>원</h4>
		<%
			if (!rs.getString("m_id").equals(sessionId)) {
		%>
					<a href="./send2.jsp?id=<%=rs.getString("m_id")%>" target="_blank"><button type="button" class="btn btn-outline-success"><strong>연락하기</strong></button></a>
					<a href="./allproduct.jsp"><button type="button" class="btn btn-outline-secondary"><strong>전체보기</strong></button></a>
				
		<% } else { %>
				
					<button onclick="deleteConfirm('<%=rs.getString("p_id")%>')" type="button" class="btn btn-outline-danger"><strong>삭제하기</strong></button>
					<a href="./allproduct.jsp" ><button type="button" class="btn btn-outline-secondary"><strong>전체보기</strong></button></a>
				
		<% } %>
			</div>
		</div>
		
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
	<%@ include file = "footer.jsp" %>
</body>
</html>