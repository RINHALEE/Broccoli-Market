<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<% String delete = request.getParameter("id"); %>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/finalPJTDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
   DELETE FROM mail WHERE send_time = ?
   <sql:param value="<%=delete%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="mail.jsp" />
</c:if>

