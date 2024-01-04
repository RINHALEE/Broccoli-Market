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
			<li><a class="menuL" href="./myproduct.jsp" style="color: black">내 물품 보기</a></li>
			
		</ul>
	</nav>
	<hr style="border: solid 3px #86E57F">
	
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product where p_category = '기타'";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width: 100%">
				<strong>[<%=rs.getString("p_category")%>]<%= rs.getString("p_name") %></strong>
				<p><%= rs.getString("p_price") %>원
				<p><a href="./detailProduct.jsp?id=<%=rs.getString("p_id")%>"><button type="button" class="btn btn-outline-dark btn-sm">자세히</button></a>
			</div>
			<% 
				} 
			
			if (rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
			%>
		</div>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>