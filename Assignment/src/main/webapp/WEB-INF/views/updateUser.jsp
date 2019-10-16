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
<script type="text/javascript">
	function update(){
		window.alert("Record Updated");
	}
</script>
<div style="text-align: center">
<h3>Update USER Details</h3>
<form method="post">
	User ID: <input type="text" name="userID" value="${ListD.userID}" }>
	<br/>
	<br/>
	Password: <input type="text" name="password" value="${ListD.password}">
	<br/>
	<br/>
	Role: <input type="text" name="role" value="${ListD.role}">
	<br/>
	<br/>
	<input type="Submit" value="Submit" formaction="updateUser">
	<br/>
	<br/>
	<input type="Submit" value="Update" formaction="updateUs" onclick="update()">
</form>
<p>
	${ListD.userID }
	${ListD.password }
	${ListD.role }
	
</p>
</div>
</body>
</html>