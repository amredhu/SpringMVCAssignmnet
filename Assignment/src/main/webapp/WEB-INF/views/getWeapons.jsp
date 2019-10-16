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
	<table >
	<tr>
		<th>Weapon ID</th>
		<th>Weapon Name</th>
		<th>Branch</th>
		<th>Type</th>
	</tr>
	<tr>
	<td>${ListD.weaponId }</td>
	<td>${ListD.weaponName }</td>
	<td>${ListD.branch }</td>
	<td>${ListD.type }</td>
	</tr>
	</table>
	<form>
		<input type="Submit" value="Main" formaction="delete">
	</form>
	
</body>
</html>