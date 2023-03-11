<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <table>
  <tr>
    <th>Name</th>
    <td>${recipe.name}</td>
  </tr>
  <tr>
    <th>Image URL</th>
    <td>${recipe.imageURL}</td>
  </tr>
  <tr>
    <th>Description</th>
    <td>${recipe.description}</td>
  </tr>
  <tr>
    <th>Ingredients</th>
    <td>${recipe.ingredients}</td>
  </tr>
  <tr>
    <th>Instructions</th>
    <td>${recipe.instructions}</td>
  </tr>
  <tr>
    <th>Servings</th>
    <td>${recipe.servings}</td>
  </tr>
  <tr>
    <th>Cook Time</th>
    <td>${recipe.cookTime}</td>
  </tr>
  <tr>
    <th>Prep Time</th>
    <td>${recipe.prepTime}</td>
  </tr>
</table>

</body>
</html>