<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=">
  <title>Hemstar - Contact</title>
  <script src="https://kit.fontawesome.com/c32adfdcda.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="/views/css/contact.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  
  <section>
    
    <div class="section-header">
      <div class="container">
        <h2> <a href="/views/index.jsp" class="fa fa-arrow-left previous" style="color: #ffcc00;"></a> Contact Us</h2>
        <p>Contact Us to know your queries about this website and give feedback about this website, so will improve this in the future..</p>
      </div>
    </div>
    
    <div class="container">
      <div class="row">
        
        <div class="contact-info">
          <div class="contact-info-item">
            <div class="contact-info-icon">
              <i class="fas fa-home"></i>
            </div>
            
            <div class="contact-info-content">
              <h4>Address</h4>
              <p>Mumbai<br/>400001</p>
            </div>
          </div>
          
          <div class="contact-info-item">
            <div class="contact-info-icon">
              <i class="fas fa-phone"></i>
            </div>
            
            <div class="contact-info-content">
              <h4>Phone</h4>
              <p>+91 8452986242</p>
            </div>
          </div>
          
          <div class="contact-info-item">
            <div class="contact-info-icon">
              <i class="fas fa-envelope"></i>
            </div>
            
            <div class="contact-info-content">
              <h4>Email</h4>
             <p>hemanshu253833@gmail.com</p>
            </div>
          </div>
        </div>
        
        <div class="contact-form">
          <form action="/contact" id="contact-form" method="post">
            <h2>Send Message</h2>
            <div class="input-box">
              <input type="text" required="true" name="fullname">
              <span>Full Name</span>
            </div>
            
            <div class="input-box">
              <input type="email" required="true" name="email">
              <span>Email</span>
            </div>
            
            <div class="input-box">
              <textarea required="true" name="message"></textarea>
              <span>Type your Message or feedback...</span>
            </div>
            
            <div class="input-box">
              <input type="submit" value="Send" >
            </div>
          </form>
        </div>
        
      </div>
    </div>
  </section>
  
</body>
</html>