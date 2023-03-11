<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="style.jsp" %>
	<meta charset="UTF-8">
	<title>Add Recipe</title>
</head>
<body>
	<form action="createdrecipe.do" method="POST">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name"><br><br>

		<label for="imageURL">Image URL:</label>
		<input type="text" id="imageURL" name="imageURL"><br><br>

		<label for="description">Description:</label>
		<textarea id="description" name="description"></textarea><br><br>

		<label for="ingredients">Ingredients:</label>
		<textarea id="ingredients" name="ingredients"></textarea><br><br>

		<label for="instructions">Instructions:</label>
		<textarea id="instructions" name="instructions"></textarea><br><br>

		<label for="servings">Servings:</label>
		<input type="number" id="servings" name="servings"><br><br>

		<label for="cookTime">Cook Time:</label>
		<input type="number" id="cookTime" name="cookTime"><br><br>

		<label for="prepTime">Prep Time:</label>
		<input type="number" id="prepTime" name="prepTime"><br><br>

		<input type="submit" value="Create Recipe">
	</form>
</body>
</html>
