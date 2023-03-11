<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Recipe Book</title>
</head>
<body>
	<h1>Welcome to the Recipe Book</h1>

	<ul>
		<li><a href="recipes.do">View all the recipes</a></li>
		<li><a href="addrecipesform.html">Add a recipe</a></li>
		<li><form action="updaterecipeform.do" method="GET">
				<input type="text" name="id" placeholder="Enter a Recipe ID"
					value="${recipe.id}"> <input type="submit" value="Update">
			</form></li>
		<li><form action="deleterecipe.do" method="POST">
				<input type="text" name="id" placeholder="Enter a Recipe ID"
					value="${recipe.id}"> <input type="submit" value="Delete">
			</form></li>

	</ul>

</body>
</html>