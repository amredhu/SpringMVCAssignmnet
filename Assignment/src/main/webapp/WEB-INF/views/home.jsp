<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
		<link href=<c:url value ="/resources/myCssFile.css" /> rel="stylesheet">
	<link href=<c:url value ="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" /> rel="stylesheet">
</head>
<body>
<h1 style="text-align: center;">
	Welcome to Weapons Cache!! 
</h1>

<P style="text-align: center;	">  Please Login To Continue! </P>
<div style="text-align: center;">

<form action="saveRestaurant" method="POST">
	
	Username: <input type="text" name="uname">
	<br/>
	<br/>
	Password: <input type="password" name="pass">
	<br/>
	<br/>
	<input type="Submit" value="Fire">
	<br/>
	<script>
	
	</script>
	${var1}
	<!-- ="Invalid UserName or Password" -->
</form>
</div>
</body>
</html>
