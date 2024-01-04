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
			<h1 class="display-5" ><strong>쪽지함</strong></h1>
			<div style="float: left">
				<a href="./mail.jsp" class="btn btn-light" style="border:0; background-color: #BCE55C; color: #22741C"><strong>받은 쪽지</strong></a>
				<a href="./sendmail.jsp" class="btn btn-light" style="border:0; background-color: #BCE55C; color: #22741C"><strong>보낸 쪽지</strong></a>
			</div>
			<div style="float: right">
				<a href="./send.jsp" target="_blank" class="btn btn-light" style="border:0; background-color: #22741C; color: #BCE55C"><strong>쪽지 보내기</strong></a>
			</div>
		</div>
	</div>
	<div class="container" style="font-family: 'Hahmlet'">
		<div class="row">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from mail where send_id like '" +sessionId+"'";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
			%>
			<table style="border-collapse: collapse; text-align: left; line-height: 1.5; border-top: 1px solid #ccc; border-bottom: 1px solid #ccc; margin: 20px 10px;"	>
			<tr style="background-color: #6B9900; color:#EAEAEA;"> 
				<th style="width: 100px"> 받은 사람 </th>
				<th style="width: 700px"> 내용 </th>
				<th style="width: 100px"> 보낸 시각 </th>
				<th style="width: 100px"> * </th>
			</tr>
			<%
				while (rs.next()) {
			%>
			<tr>
				<th><%= rs.getString("get_id") %></th>
				<th><%= rs.getString("mail_description") %> </th> 
				<td><%= rs.getString("send_time") %> </td>
				<td><a href="deleteMail.jsp?id=<%=rs.getString("send_time")%>" class="btn btn-light"><strong style="color: #A6A6A6">삭제</strong></a>
			</tr>
			<% 
				} 
			
			if (rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
			%>
			</table>
		</div>
	</div>

	<%@ include file = "footer.jsp" %>
</body>
</html>