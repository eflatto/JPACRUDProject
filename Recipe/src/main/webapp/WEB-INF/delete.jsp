
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="style.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="deleterecipe.do" method="POST">
		<label for="delete-recipe-id">Delete a recipe:</label> <input
			type="text" id="delete-recipe-id" name="id"
			placeholder="Enter a Recipe ID"> <input type="submit"
			value="Delete">
	</form>
</body>
</html>
