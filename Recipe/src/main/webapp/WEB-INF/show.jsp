<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="style.jsp" %>
    <title>Recipe - ${recipe.name}</title>
</head>
<body>
    <h1>${recipe.name}</h1>
    <img src="${recipe.imageURL}" alt="${recipe.name}">
    <p>${recipe.description}</p>
    <h2>Ingredients:</h2>
    <p>${recipe.ingredients}</p>
    <h2>Instructions:</h2>
    <p>${recipe.instructions}</p>
    <ul>
        <li>Prep time: ${recipe.prepTime} minutes</li>
        <li>Cook time: ${recipe.cookTime} minutes</li>
        <li>Servings: ${recipe.servings}</li>
    </ul>
    <a href="edit.do?id=${recipe.id}">Edit Recipe</a>
    <a href="delete.do?id=${recipe.id}" onclick="return confirm('Are you sure you want to delete this recipe?')">Delete Recipe</a>
</body>
</html>
