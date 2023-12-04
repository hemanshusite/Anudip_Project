<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="com.rentlist.web.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page errorPage="error_page.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hemstar - Welcome</title>
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
<link rel="stylesheet" href="/views/css/index.css">
</head>
<body>
	<%
	User user = (User) session.getAttribute("currentUser");
	if (user == null) {
	%>
	<nav class="nav">
		<i class="uil uil-bars navOpenBtn"></i> <a href="#" class="logo">Hemstar</a>
		<ul class="nav-links">
			<i class="uil uil-times navCloseBtn"></i>
			<li><a href="/views/index.jsp">Home</a></li>
			<li><a href="/propertyview">View Property</a></li>
			<li><a href="/views/prop_listing.jsp">Property Listing</a></li>
			<li><a href="/views/contact.jsp">Contact Us</a></li>
			<li><a href="/views/signup.jsp"><b>SignUp</b></a></li>
			<li><a href="/views/login.jsp"><b>Login</b></a></li>
		</ul>
	</nav>
	<%
	} else {
	%>
	<nav class="nav">
		<i class="uil uil-bars navOpenBtn"></i> <a href="#" class="logo">Hemstar</a>
		<ul class="nav-links">
			<i class="uil uil-times navCloseBtn"></i>
			<li><a href="/views/index.jsp">Home</a></li>
			<li><a href="/propertyview">View Property</a></li>
			<li><a href="/views/prop_listing.jsp">Property Listing</a></li>
			<li><a href="/views/contact.jsp">Contact Us</a></li>
			<li><a href="/logout"><b>Logout</b></a></li>
			<li> <b class="short"> <% 
				String inputString = user.getName();
			 String[] words = inputString.split(" ");

			 // Iterate through each word and display the first character after space
		        for (String word : words) {
		            if (word.length() > 1) {
		                char firstCharacterAfterSpace = word.charAt(0);
		                out.print(firstCharacterAfterSpace);
		            } else {
		                out.println(word);
		            }
		        }
			%></b></li>
		</ul>
	</nav>
	<%
	}
	%>
	<div class="slider">
		<Section class="img-slider">
			<div class="slider-container">

				<div class="slide">
					<img src="/views/img/city-5974876_640.jpg">
				</div>

				<div class="slide">
					<img
						src="/views/img/real-estate-miniature-house-model-zcovmnik4h0l5s7k.jpg">
				</div>

				<div class="slide">
					<img src="/views/img/pexels-david-mcbee-1546168.jpg">
				</div>

			</div>
		</Section>
	</div>
	<div class="cont">
		<div class="c1">
			<div class="content">
				<h2>View Your property</h2>
				<p>
					"Stunning home with panoramic views, modern amenities, and a
					spacious backyard. Perfect for families or professionals seeking a
					blend of luxury and comfort. Don't miss out on this dream property
					schedule a viewing today!"<br> "Seaside paradise alert!
					Coastal charm meets modern elegance in this gem. Spectacular ocean
					views, gourmet kitchen, and a private deck. Your dream home awaits
					– book your viewing today!"<br> "Quaint cottage with a
					storybook feel, nestled in a peaceful neighborhood. Boasting a lush
					garden, charming interiors, and a cozy fireplace. Experience the
					magic – schedule your property tour now!"
				</p>
				<a href="/propertyview">Go here</a>
			</div>
			<div class="pto">
				<img src="/views/img/img1.jpg" alt="">
			</div>
		</div>
		<div class="c1">
			<div class="pto">
				<img src="/views/img/img2.jpg" alt="">
			</div>
			<div class="content">
				<h2>List Your property</h2>
				<p>
					"Stunning home with panoramic views, modern amenities, and a
					spacious backyard. Perfect for families or professionals seeking a
					blend of luxury and comfort. Don't miss out on this dream property
					schedule a viewing today!"<br> "Seaside paradise alert!
					Coastal charm meets modern elegance in this gem. Spectacular ocean
					views, gourmet kitchen, and a private deck. Your dream home awaits
					– book your viewing today!"<br> "Quaint cottage with a
					storybook feel, nestled in a peaceful neighborhood. Boasting a lush
					garden, charming interiors, and a cozy fireplace. Experience the
					magic – schedule your property tour now!"
				</p>
				<a href="/views/prop_listing.jsp">Go here</a>
			</div>

		</div>
	</div>
	<script src="/views/js/index.js"></script>
</body>
</html>