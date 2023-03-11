<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${empty recipes }">No Recipes</c:when>
<c:otherwise>
<c:forEach var="recipe" items="${recipes}">
<ul>
  <li> <img src="${recipe.imageURL}" alt="${recipe.name}"> </li>
  
  
</ul>

</c:forEach>
</c:otherwise>
</c:choose>
</body>
</html>