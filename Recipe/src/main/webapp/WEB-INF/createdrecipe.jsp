<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe Details</title>
</head>
<body>
	<h1>${recipe.name}</h1>
	<img src="${recipe.imageURL}" alt="${recipe.name}"
		style="max-width: 100%;">
	<h2>Description</h2>
	<p>${recipe.description}</p>
	<h2>Ingredients</h2>
	<p>${recipe.ingredients}</p>
	<h2>Instructions</h2>
	<p>${recipe.instructions}</p>
	<h2>Servings</h2>
	<p>${recipe.servings}</p>
	<h2>Cook Time</h2>
	<p>${recipe.cookTime}</p>
	<h2>Prep Time</h2>
	<p>${recipe.prepTime}</p>
</body>
</html>
