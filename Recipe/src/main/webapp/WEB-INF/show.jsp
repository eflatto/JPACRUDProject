<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="style.jsp" %>
    <title>Recipe - ${recipe.name}</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>${recipe.name}</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<img src="${recipe.imageURL}" alt="${recipe.name}" class="img-fluid">
			</div>
			<div class="col-md-8">
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
			</div>
		</div>
	</div>
</body>
</html>
