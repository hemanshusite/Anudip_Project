<%@page import="com.rentlist.web.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
 	User user = (User) session.getAttribute("currentUser");
	if(user == null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hemstar - Property Listing</title>
    <link rel="stylesheet" href="/views/css/prop_listing.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&family=Roboto:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <h1><a href="/views/index.jsp" class="fa fa-arrow-left back-arrow"></a></h1>
    <div class="container">
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="/views/img/rent.avif">
                    <h3>Rent Property</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>Rent your property here, so user will come and interest in your property and they will rent your property</p>
                    <a href="/views/rent_form.jsp">Rent Now..</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="/views/img/buy.jpg">
                    <h3>Buy Property</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>Buy your property here, so user will come and interest in your property and they will Buy your property</p>
                    <a href="/views/buy_form.jsp">Buy Now..</a>
                </div>
            </div>
        </div>

    </div>
</body>
</html>