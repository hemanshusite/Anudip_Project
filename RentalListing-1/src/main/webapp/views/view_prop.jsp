<%@page import="com.rentlist.web.model.add_Property"%>
<%@page import="java.util.List"%>
<%@page import="com.rentlist.web.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("/views/login.jsp");
} else {
%>

<html lang="en">

<head>
<title>Hemstar - View Properties</title>
<link
	href="https://fonts.googleapis.com/css?family=Bentham|Playfair+Display|Raleway:400,500|Suranna|Trocchi"
	rel="stylesheet">
<link rel="stylesheet" href="/views/css/view_prop.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
	<h2>
		<a href="/views/index.jsp" class="fa fa-arrow-left previous"></a>&nbsp;&nbsp;&nbsp;
		WELCOME <i class="my-name"><%=user.getName()%></i>
	</h2>
	<%
	List<add_Property> proplist = (List<add_Property>) request.getAttribute("viewproperty");
	%>
	<!-- <form action="/searchproperty" 
			id="search" method="get">
			<select name="prop_type" id="type">
				<option value="1 BHK">1 BHK</option>
				<option value="1 RK">1 RK</option>
				<option value="2 BHK">2 BHK</option>
			</select>
			<button class="btn btn-success" type="submit">Search</button>
		</form> -->

	

	<%-- <%
    	List<addProperty> proplist =(List<addProperty>)request.getAttribute("viewproperty");
    	if(proplist != null){
    		for (addProperty prop : proplist) {
    %>
  <div class="wrapper">
    <div class="product-img">
      <img src="data:img/*;base64," height="420" width="327">
    </div>
    <div class="product-info">
      <div class="product-text">
        <h1><%= prop.getAddress() %></h1>
        <h2></h2>
        <p> </p>
      </div>
      <div class="product-price-btn">
        <p><span>&nbsp;</span></p>
        <a href="/views/showDetails.jsp"><button type="button">Get now</button></a> 
      </div>
    </div>
  </div>
<%
    	}
    	}
%> --%>

	<%
	
	if (proplist != null) {
			for (add_Property prop : proplist) {
				if(user.getUsername().equals(prop.getOwner())){
					
					
					
	%>
	<div class="wrapper">
		<div class="product-img">
			<!-- Set the src attribute to the image path -->
			<img src="data:img/*;base64,<%= prop.getImgBase64() %>" height="420" width="327">
		</div>
		<div class="product-info">
			<div class="product-text">
				<h1><%= prop.getTitle() %></h1>
        		<h2>Owner: <%= prop.getName() %></h2>
        		<p> <%= prop.getDescription() %></p>
			</div>
			<div class="product-price-btn">
				<p>
					<span><%= prop.getProp_type() %>&nbsp;</span>
				</p>
				<a href="/showDetails?id=<%= prop.getId() %>"><button type="button">Get
						now</button></a>
			</div>
		</div>
		
		<a href="/deleteProperty/<%= prop.getId() %>" id="rmv" ><button class="rmv">Remove Property</button></a> 
		<a href="/editProperty?id=<%= prop.getId() %>" id="rmv" style="background-color: royalblue" ><button class="rmv1">Edit Property</button></a> 
	</div>
	
<%
				
			}
			
				else{
					
				}
			}
			for (add_Property prop : proplist) {
					if(!user.getUsername().equals(prop.getOwner())){	
				
%>
<div class="wrapper">
		<div class="product-img">
			<!-- Set the src attribute to the image path -->
			<img src="data:img/*;base64,<%= prop.getImgBase64() %>" height="420" width="327">
		</div>
		<div class="product-info">
			<div class="product-text">
				<h1><%= prop.getTitle() %></h1>
        		<h2>Owner: <%= prop.getName() %></h2>
        		<p> <%= prop.getDescription() %></p>
			</div>
			<div class="product-price-btn">
				<p>
					<span><%= prop.getProp_type() %>&nbsp;</span>
				</p>
				<a href="/showDetails?id=<%= prop.getId() %>"><button type="button">Get
						now</button></a>
			</div>
		</div>
	</div>
<%
				}
			}		
		}
%>
</body>

</html>
<%
}
%>