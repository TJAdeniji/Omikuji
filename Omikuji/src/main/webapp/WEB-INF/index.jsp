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
	<h1>Send an Omikuji!</h1>
	
	<form action="/generate" method="POST">
		<label for="number">Pick any number from 5 to 25</label>
		<input type="number" name="number" min="5" max="25">
		<label for="city">Enter the name of any city:</label>
		<input type="text" name="city">
		<label for="name">Enter the person of any real person:</label>
		<input type="text" name="name">
		<label for="hobby">Enter a professional endeavor or hobby:</label>
		<input type="text" name="hobby">
		<label for="lThing">Enter any type of living thing:</label>
		<input type="text" name="lThing">
		<label for="nice">Say something nice to someone:</label>
		<textarea name="nice"  cols="30" rows="10"></textarea>
		<p>Send and show a friend</p>
		<input type='submit' value='Send'>
	</form>
</body>
</html>