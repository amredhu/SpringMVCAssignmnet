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
	<h4>List Of Weapons</h4>
	<table style=" border: 1px solid;width:75%;padding-left: 10px">
	<tr>
		<th style="text-align: center">Weapon ID</th>
		<th style="text-align: center">Weapon Name</th>
		<th style="text-align: center">Branch</th>
		<th style="text-align: center">Type</th>
	</tr>
	
		 <c:forEach items="${ListD}" var="out">
		 <tr>
		 <td>${out.weaponId}</td> <td> ${out.weaponName}</td> <td>${out.branch }</td> <td>${out.type }</td><br/>
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