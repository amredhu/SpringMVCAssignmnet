<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Weapons Call</title>
	<link href=<c:url value ="/resources/myCssFile.css" /> rel="stylesheet">
	<link href=<c:url value ="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" /> rel="stylesheet">
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>

<h1 style="text-align: center;">Welcome ${Namah}!!!</h1>
<body>
<div class="row" style="text-align: center;">
	<div class="column">
		<h3> Actions </h3>
	<form method="post">
		<input type="Submit" value="Add Weapon" formaction="addWeapon">
		<br/>
		<br/>
		<input type="Submit" value="List of Weapons" formaction="listWeapon">
		<br/>
		<br/>
		<input type="Submit" value="Get Weapon" formaction="getWeapon">
		<br/>
		<br/>
		<input type="Submit" value="Remove Weapon" formaction="getWeapon">
		<br/>
		<br/>
		<input type="Submit" value="Update Weapon" formaction="weapon">
		<br/>
		</form><br>
		</div>
		<br/>
		<div class="column">
		<h3>User Functions</h3>
		<form method="post">
		<input type="Submit" value="Add User" formaction="userAdd">
		<br/>
		<br/>
		<input type="Submit" value="List of Users" formaction="userList">
		<br/>
		<br/>
		<input type="Submit" value="Remove User" formaction="getUserID">
		<br/>
		<br/>
		<input type="Submit" value="Update User" formaction="user">
	</form>
	</div>
	
	</div>
	
	
</body>
</html>