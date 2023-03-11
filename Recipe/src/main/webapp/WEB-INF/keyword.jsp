
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="style.jsp" %>
    <meta charset="UTF-8">
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>
    <div class="card-container">
        <c:forEach var="recipe" items="${recipe}">
            <div class="card">
                <a href="show.do?id=${recipe.id}">
                    <img src="${recipe.imageURL}" alt="${recipe.name}">
                    <h2>${recipe.name}</h2>
                    <p>Prep Time: ${recipe.prepTime} minutes</p>
                    <p>Cook Time: ${recipe.cookTime} minutes</p>
                    <p>Servings: ${recipe.servings}</p> 
                </a>
            </div>
        </c:forEach>
    </div>
</body>
</html>

