<%@page import="com.rentlist.web.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hemstar - Rent Form</title>
    <link rel="stylesheet" href="/views/css/rent.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>
<body>
    <h1 style="text-align: center; color: rgb(26, 26, 26); font-size: 45px; text-shadow: 2px 2px 8px white;"><a href="/views/prop_listing.jsp" class="fa fa-arrow-left back-arrow"></a>Rent Your Property</h1>
    <form action="/addProperty" class='form' enctype="multipart/form-data" method="post" >
    	<input type="text" name="prop_type" id="rent" hidden value="rent"> 
    	<input type="text" name="owner" id="owner" hidden value="<%= user.getUsername() %>"> 
        <p class='field required'>
          <label class='label required' for='name'>Full name</label>
          <input class='text-input' id='name' name='name' required type='text' placeholder="Name">
        </p>
        <p class='field required half'>
          <label class='label' for='email'>E-mail</label>
          <input class='text-input' id='email' name='email' required type='email'>
        </p>
        <p class='field half'>
          <label class='label' for='phone'>Phone</label>
          <input class='text-input' id='phone' name='phone' type='phone'>
        </p>
        <p class='field half required'>
          <label class='label' for='title'>Title</label>
          <input class='text-input' id='title' name='title' required type='text' placeholder='Building Name'>
        </p>
        <p class='field half' >
            <label class='label' for='desc'>Description</label>
            <textarea class='text-input' name="description" id="description" cols="20" rows="5" placeholder="Here.."></textarea>
        </p>
        <div class='field'>
          <label class='label'>Property type</label>
          <ul class='checkboxes'>
            <li class='checkbox'>
              <input class='checkbox-input' id='choice-0' name='choice' type='radio' value='1 Rk'>
              <label class='checkbox-label' for='choice-0'>1 Rk</label>
            </li>
            <li class='checkbox'>
              <input class='checkbox-input' id='choice-1' name='choice' type='radio' value='1 BHK'>
              <label class='checkbox-label' for='choice-1'>1 BHK</label>
            </li>
            <li class='checkbox'>
              <input class='checkbox-input' id='choice-2' name='choice' type='radio' value='2 BHK'>
              <label class='checkbox-label' for='choice-2'>2 BHK</label>
            </li>
          </ul>
        </div>
        <p class='field'>
          <label class='label' for='address'>Address</label>
          <textarea class='textarea' cols='50' id='address' name='address' rows='4'></textarea>
        </p>	
        <p class='field half'>
          <label class='label' for='image'>Property Image</label>
          <input class='text-input' type="file" name="image" accept="image/jpeg, image/png, image/jpg" multiple>
        </p>
        <div class='field'>
          <label class='label'>Property Status</label>
          <ul class='checkboxes'>
            <li class='checkbox'>
              <input class='checkbox-input' id='choice1' name='status' type='radio' value='Available'>
              <label class='checkbox-label' for='choice1'>Available</label>
            </li>
            <li class='checkbox'>
              <input class='checkbox-input' id='choice2' name='status' type='radio' value='Not Available'>
              <label class='checkbox-label' for='choice2'>Not Available</label>
            </li>
          </ul>
        </div>
        <p class='field half'>
          <label class='label' for='select'>Price</label>
          <select class='select' id='select' name="price">
            <option selected >Select Price Range</option>
            <option value='Rs 4000 - Rs 7000' name="price">Rs 4000 - Rs 7000</option>
            <option value='Rs 8000 - Rs 12000' name="price">Rs 8000 - Rs 12000</option>
            <option value='Rs 14000 - Rs 25000' name="price">Rs 14000 - Rs 25000</option>
          </select>
        </p>
        <p class='field half'>
          <input class='button' type='submit' value='Submit'>
        </p>
      </form>
      
      <script>
        
      </script>
</body>
</html>