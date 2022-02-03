<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Omikuji</title>
</head>
<body>
	<h1>Here's Your Omikuji!</h1>
	
	<div>
	<p>In <c:out value="${sessionScope.number}"/> years, you will live in <c:out value="${sessionScope.city}"/> with <c:out value="${sessionScope.name}"/> as your roommate, selling <c:out value="${sessionScope.hobby}"/> for a living. The next time you see a <c:out value="${sessionScope.lThing}"/> you will have good luck. <c:out value="${sessionScope.nice}"/></p>
	</div>
	<a href="/omikuji">Go Back</a>
</body>
</html>


