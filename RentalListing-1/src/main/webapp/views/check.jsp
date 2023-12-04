<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/check" method="post" enctype="multipart/form-data">
		<label for="name">Name:</label><br>
		<input type="text" id="name" name="name" required> <br>
		<label for="email">Email:</label> <br>
		<input type="email" id="email" name="email" required> <br>
		<label for="image">Image:</label> <br>
		<input type="file" id="image" name="image" accept="image/*" required multiple><br>

		<button type="submit">Submit</button>
	</form>
</body>
</html>