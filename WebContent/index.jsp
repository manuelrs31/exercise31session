<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Loging credentials</h2>
	
	<form action="loginServlet" method="post">
	<p>
	<label for="txtuserName"> Username:</label>
	<input type="text" id="txtuserName"	name="txtuserName">
	</p>
	<p>
	<label for="txtPassword"> Password:</label>
	<input type="Password" id="txtPassword"	name="txtPassword">
	</p>
	<p>
	<input type="submit" value="login">
	
	
	
	</form>



</body>
</html>