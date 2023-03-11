<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="style.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>View All Recipes</h1>
    <c:choose>
        <c:when test="${empty recipes}">
            <p>No recipes found.</p>
        </c:when>
        <c:otherwise>
            <div class="card-container">
                <c:forEach var="recipe" items="${recipes}">
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
        </c:otherwise>
    </c:choose>
</body>

</html>