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
<h3>Update Weapon Status</h3>
<form method="post">
	Weapon ID: <input type="text" name="weaponId" value="${ListD.weaponId}" }>
	<br/>
	<br/>
	Weapon Name: <input type="text" name="weaponName" value="${ListD.weaponName}">
	<br/>
	<br/>
	Branch: <input type="text" name="branch" value="${ListD.branch}">
	<br/>
	<br/>
	Type: <input type="text" name="type" value="${ListD.type}">
	<br/>
	<br/>
	<input type="Submit" value="Submit" formaction="updateWeapon">
	<br/>
	<br/>
	<input type="Submit" value="Update" formaction="updateWeap" onclick="update()">
</form>
<p>
	${ListD.weaponId }
	${ListD.weaponName }
	${ListD.branch }
	${ListD.type }
</p>
</div>
</body>
</html>