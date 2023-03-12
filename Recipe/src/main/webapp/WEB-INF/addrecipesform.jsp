<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="style.jsp" %>
	<meta charset="UTF-8">
	<title>Add Recipe</title>
	<!-- Link to Bootstrap stylesheet -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	      integrity="sha384-OgVRvuATP1z7JjHLkuOU6Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JK"
	      crossorigin="anonymous">
</head>
<body>
	<div class="container my-5">
		<form action="createdrecipe.do" method="POST">
			<div class="form-group">
				<label for="name">Name:</label>
				<input type="text" id="name" name="name" class="form-control" required="required">
			</div>

			<div class="form-group">
				<label for="imageURL">Image URL:</label>
				<input type="text" id="imageURL" name="imageURL" class="form-control">
			</div>

			<div class="form-group">
				<label for="description">Description:</label>
				<textarea id="description" name="description" class="form-control"></textarea>
			</div>

			<div class="form-group">
				<label for="ingredients">Ingredients:</label>
				<textarea id="ingredients" name="ingredients" class="form-control"></textarea>
			</div>

			<div class="form-group">
				<label for="instructions">Instructions:</label>
				<textarea id="instructions" name="instructions" class="form-control"></textarea>
			</div>

			<div class="form-group">
				<label for="servings">Servings:</label>
				<input type="number" id="servings" name="servings" class="form-control">
			</div>

			<div class="form-group">
				<label for="cookTime">Cook Time:</label>
				<input type="number" id="cookTime" name="cookTime" class="form-control">
			</div>

			<div class="form-group">
				<label for="prepTime">Prep Time:</label>
				<input type="number" id="prepTime" name="prepTime" class="form-control">
			</div>

			<button type="submit" class="btn btn-primary">Create Recipe</button>
		</form>
	</div>
</body>
</html>
	