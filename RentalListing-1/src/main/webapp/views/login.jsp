<%@page import="com.rentlist.web.model.User"%>
<%@page import="com.rentlist.web.model.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hemstar - Login</title>
<link rel="stylesheet" href="/views/css/signup.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.previous {
	transform: translateX(-120px);
	border: 2px solid #ffcc00;
	padding: 5px 6px;
	border-radius: 50%;
}
</style>

</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card_title">
				<h1>
					<a href="/views/index.jsp" class="fa fa-arrow-left previous"
						style="color: #ffcc00;"></a>Login
				</h1>
				<span>Not have an account? <a href="/views/signup.jsp">Sign
						Up</a></span>
			</div>
			<div class="form">
				<form action="/login" method="post">
					<input type="text" name="username" id="username"
						placeholder="UserName" /> <input type="password" name="password"
						placeholder="Password" id="password" />
					<button>Login</button>
				</form>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<%
        String loginError = (String) request.getAttribute("loginError");
        if (loginError != null && !loginError.isEmpty()) {
        %>
           <script>
           alert("<%= loginError %>");	 // Show the login error message in an alert
        </script>
        <%
        }
        %>
</body>
</html>