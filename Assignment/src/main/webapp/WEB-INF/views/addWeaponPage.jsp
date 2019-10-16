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
<h3>Weapons Addition</h3>
<h4>Whiskey Alpha</h4>
<form action="addWeapons" method="post">
	<label>WeaponId: </label><input type="text" name="weaponId">
	<br/>
	<br/>
	<label>Weapon Name: </label><input type="text" name="weaponName">
	<br/>
	<br/>
	<label>Branch: </label><input type="text" name="branch">
	<br/>
	<br/>
	<label>Type: </label><input type="text" name="type">
	<br/>
	<br/>
	<input type="Submit" value="Fire">
	<br/>
	<br/>
	<input type="Submit" value="Main" formaction="delete">
</form>
</div>
</body>
</html>