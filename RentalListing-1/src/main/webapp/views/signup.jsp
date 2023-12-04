<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hemstar - SignUp</title>
    <link rel="stylesheet" href="/views/css/signup.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <div class="container">
        <div class="card">
          <div class="card_title">
            <h1><a href="/views/index.jsp" class="fa fa-arrow-left previous" style="color: #ffcc00;"></a>Create Account</h1>
            <span>Already have an account? <a href="/views/login.jsp">Sign In</a></span>
          </div>
          <div class="form">
          <form action="/signup" method="post" id="form">
            <input type="text" name="name" id="name" placeholder="Enter Name" required/>
            <input type="text" name="username" id="username" placeholder="UserName" required/>
            <input type="password" name="password" placeholder="Password" id="password" required/>
            <input type="password" name="cpassword" placeholder="Confirm Password" id="cpassword" required/>
            <input type="number" name="phone" id="phone" placeholder="Enter PhoneNo. " minlength="10" required pattern="[789][0-9]{9}"/>

            <button id="btn" disabled="disabled"> Sign Up &nbsp;<i class="fa fa-lock"  id="i"></i></button>
            </form>
          </div>
        </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"
        integrity="sha512-rstIgDs0xPgmG6RX1Aba4KV5cWJbAMcvRCVmglpam9SoHZiUCyQVDdH2LPlxoHtrv17XWblE/V/PP+Tr04hbtA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
        $(document).ready(function () {
            jQuery.validator.addMethod("noSpace", function (value, element) {
                return value.indexOf(" ") < 0 && value != "";
            }, "No space please and don't leave it empty");
            jQuery("#form").validate({
            	rules: {
            		name: {
                        minlength: 2,
                        maxlength: 40,
                    },
                    username: {
                        minlength: 2,
                        maxlength: 15,
                        noSpace: true,
                    },
                    password:{
                    	minlength: 8,
                        maxlength: 16,
                    },
                    cpassword:{
                    	minlength: 8,
                        equalTo: "#password",
                    },
                    phone:{
                    	minlength: 10,
                        maxlength: 10,
                        noSpace: true,
                    }
            	}
            	
            });
            $('#form').on('keyup', function () { // fires on every keyup & blur
                if ($('#form').valid()) {                   // checks form for validity
                    $('#btn').prop('disabled', false);
                    $('#btn').css({
                        "border": "none",
                        "color": "white",
                        "background": "linear-gradient(45deg,rgba(253, 101, 133, 1),rgba(255, 211, 165, 1))",
                    })
                    $('#i').css({
                        "display": "none",
                    })
                    // enables button
                } else {
                    $('#btn').prop('disabled', 'disabled');
                    $('#btn').css({
                        "border": "2px solid #ffcc00",
                        "color": "#ffcc00",
                        "background": "white",
                        "font-weight": "bold"
                    })
                    $('#i').css({
                        "display": "inline",
                        "color": "#ffcc00",
                        "margin-left": "10px"
                    })
                    // disables button
                }
            }); 
        });
        
        </script>
</body>
</html>