
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<p>
	<h4>List Of Users</h4>
	<table style=" border: 1px solid;width:75%">
	<tr>
		<th style="text-align: center">User ID</th>
		<th style="text-align: center">Password</th>
		<th style="text-align: center">Role</th>
		
	</tr>
	
		 <c:forEach items="${ListD}" var="out">
		 <tr>
		 <td>${out.userID}</td> <td> ${out.password}</td> <td>${out.role } </td><br/>
		 </tr>
		 </c:forEach>
		 
	</table>
	</p>
	<form>
		<input type="Submit" value="Main" formaction="delete">	
	</form>
	</div>
</body>
</html>