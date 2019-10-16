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
		function remove(){
			window.alert("Record Deleted")
		}
	</script>
	<div style="text-align: center;">
<h3>Get Weapon By ID</h3>
	<form method="post">
		Weapon ID: <input type="text" name="weaponId">
		 <br /> <br /> 
		 <input	type="Submit" value="Fire" formaction="getWeapons">
		 <br /> <br /> 
		 <input	type="Submit" value="Remove" formaction="removeWeapon" onclick="remove()">					
		 <br/> <br/>
		 <input type="Submit" value="Main" formaction="delete">
	</form>
	<table style="align-content: center;width:75%">
	<tr>
		<th style="text-align: center;">Weapon ID</th>
		<th style="text-align: center;">Weapon Name</th>
		<th style="text-align: center;">Branch</th>
		<th style="text-align: center;">Type</th>
	</tr>
	<tr>
	<td>${ListD.weaponId }</td>
	<td>${ListD.weaponName }</td>
	<td>${ListD.branch }</td>
	<td>${ListD.type }</td>
	</tr>
	</table>
</div>
</body>
</html>