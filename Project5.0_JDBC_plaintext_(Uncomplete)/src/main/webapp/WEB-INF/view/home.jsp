<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<h2>Welcome to the home page!</h2>
	
	<hr>
	<!-- Display user name and role -->
	<h3>User's info</h3>
	<p>
		User: <security:authentication property="principal.username"/>
		<br>
		Role(s): <security:authentication property="principal.authorities"/>
	</p>
	<hr>
	
	<h3>Shown for testing "access-denied" page</h3>
	<a href="${pageContext.request.contextPath }/leaders">LeaderShip Meeting (Only for Managers)</a><br>
	<a href="${pageContext.request.contextPath }/systems">Systems Meeting (Only for Admins)</a><br>
	<hr>
	
	<h3>Shown base on user roles</h3>
	<security:authorize access="hasAnyRole('MANAGER', 'dauxanh')">
		<!-- Add a link to point to /leaders/** for the managers  -->
		<a href="${pageContext.request.contextPath }/leaders">LeaderShip Meeting (Only for Managers)</a><br>
		<hr>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
		<!-- Add a link to point to /systems/** for the admins  -->
		<a href="${pageContext.request.contextPath }/systems">Systems Meeting (Only for Admins)</a><br>
		<hr>
	</security:authorize>
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath }/logout"
				 method="POST">
		<input type="submit" value="Logout session" />
	</form:form>
</body>
</html>