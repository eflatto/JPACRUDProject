<!DOCTYPE html>
<html>
<head>
<%@include file="style.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updaterecipeform.do" method="GET">
		<label for="update-recipe-id">Update a recipe:</label> <input
			type="text" id="update-recipe-id" name="id"
			placeholder="Enter a Recipe ID"> <input
			type="submit" value="Update">
	</form>
</body>
</html>