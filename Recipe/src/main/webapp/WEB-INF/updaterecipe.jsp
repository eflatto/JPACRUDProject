<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
	<h1>Update Recipe</h1>
<form method="POST" action="updatedrecipe.do">
    <input type="hidden" name="id" value="${recipe.id}" /><br>
    
    <label for="name">Name:</label><br>
    <input type="text" name="name" value="${recipe.name}" /><br>
    
    <label for="imageURL">Image URL:</label><br>
    <input type="text" name="imageURL" value="${recipe.imageURL}" /><br>
    
    <label for="description">Description:</label><br>
    <textarea name="description">${recipe.description}</textarea><br>
    
    <label for="ingredients">Ingredients:</label><br>
    <textarea name="ingredients">${recipe.ingredients}</textarea><br>
    
    <label for="instructions">Instructions:</label><br>
    <textarea name="instructions">${recipe.instructions}</textarea><br>
    
    <label for="servings">Servings:</label><br>
    <input type="number" name="servings" value="${recipe.servings}" /><br>
    
    <label for="cookTime">Cook Time (in minutes):</label><br>
    <input type="number" name="cookTime" value="${recipe.cookTime}" /><br>
    
    <label for="prepTime">Prep Time (in minutes):</label><br>
    <input type="number" name="prepTime" value="${recipe.prepTime}" /><br>
    
    <input type="submit" value="Update Recipe" />
</form>

</body>
</body>
</html>