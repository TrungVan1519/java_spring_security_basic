<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Access Denied</title>

<style>
	.warning {
		color: red;
	}
</style>

</head>
<body>
	<h2 class="warning">Access Denied - You are not authorized to access this resource</h2>
	
	<a href="${pageContext.request.contextPath }/">Back to home page</a>
</body>
</html>