
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link href=<c:url value ="/resources/myCssFile.css" /> rel="stylesheet">
	<link href=<c:url value ="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" /> rel="stylesheet">
</head>
<body>
<div style="text-align: center;">
<h3>Enter User Details @Red_Devil97</h3>
<form method="post">
	Enter UserName: <input type="text" name="userID">
	<br/>
	<br/>
	Enter PassWord: <input type="password" name="password">
	<br/>
	<br/>
	Enter role: <input type="text" name="role">
	<br/>
	<br/>
	<input type="Submit" value="Fire" formaction="saveUser">
	<br/>
	<br/>
	<input type="Submit" value="Main" formaction="delete">
</form>
</div>

</body>
</html>