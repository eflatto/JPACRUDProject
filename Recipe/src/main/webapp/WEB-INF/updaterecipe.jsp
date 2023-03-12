<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Recipe</title>
    <%@include file="style.jsp" %>
  <%--   <%@include file="formstyling.jsp" %> --%>
</head>
<body>
    <h1>Edit Recipe</h1>
    <form method="post" action="updatedrecipe.do">
        <input type="hidden" name="id" value="${recipe.id}" />
        
        <div>
            <label for="name">Name:</label>
            <input type="text" name="name" value="${recipe.name}" required />
        </div>
        
        <div>
            <label for="imageURL">Image URL:</label>
            <input type="text" name="imageURL" value="${recipe.imageURL}" required />
        </div>
        
        <div>
            <label for="description">Description:</label>
            <textarea name="description" required>${recipe.description}</textarea>
        </div>
        
        <div>
            <label for="ingredients">Ingredients:</label>
            <textarea name="ingredients" required>${recipe.ingredients}</textarea>
        </div>
        
        <div>
            <label for="instructions">Instructions:</label>
            <textarea name="instructions" required>${recipe.instructions}</textarea>
        </div>
        
        <div>
            <label for="servings">Servings:</label>
            <input type="number" name="servings" value="${recipe.servings}" required />
        </div>
        
        <div>
            <label for="cookTime">Cook Time (in minutes):</label>
            <input type="number" name="cookTime" value="${recipe.cookTime}" required />
        </div>
        
        <div>
            <label for="prepTime">Prep Time (in minutes):</label>
            <input type="number" name="prepTime" value="${recipe.prepTime}" required />
        </div>
        
        <div>
            <input type="submit" value="Update Recipe" />
        </div>
    </form>
</body>
</html>

