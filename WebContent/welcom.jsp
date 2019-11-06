<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%--  Forma 1 
	 <%
	 String username = (String) session.getAttribute("user");
	 out.println(username);
	 %>
	 <%=session.getAttribute("user")%>
	  <%=session.getAttribute("pass")%>
	  --%>
	 
	<c:set var="username"  value ="${sessionScope.user}"></c:set>
<%--
segunda forma 
	<c:if test="${username==null }">
	<c:redirect url="index.jsp"></c:redirect>
	</c:if>
	
	<c:if test="${username!=null}">
	Bienvenido <c:out value="${username }"></c:out>
	</c:if>
 --%>	
	
<%--  tercera forma de hacerlo
	--%>
	<c:choose>
	<c:when test="${username!=null }">
	<br>
	
	WELCOME
	</br>
	Bienvenido <c:out value="${username }"></c:out>
	</c:when>
	
	<c:otherwise>
		<c:redirect url="index.jsp"></c:redirect>
	</c:otherwise>
	</c:choose>

</body>
</html>