<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	String description = request.getParameter("description");
	String filename = request.getParameter("file");
	String memberId = request.getParameter("memid");

	Date currentDatetime = new Date(System.currentTimeMillis());
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/finalPJTDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO product VALUES (?, ?, ?, ?, ?, ?, ?);
   <sql:param value="<%=id%>" />
	<sql:param value="<%=name%>" />
	<sql:param value="<%=category%>" />
	<sql:param value="<%=price%>" />
	<sql:param value="<%=description%>" />
	<sql:param value="<%=filename%>" />
	<sql:param value="<%=memberId%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="allproduct.jsp" />
</c:if>

