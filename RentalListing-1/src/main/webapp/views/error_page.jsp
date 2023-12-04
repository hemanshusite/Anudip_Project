<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <style>
        #a{
    width: 10%;
    position: relative;
    display: inline-block;
    text-decoration: none;
    padding: 10px 20px;
    color: #e76f51;
    overflow: hidden;
    transition: -5s;
    letter-spacing: 2px;
    transform: translate(0%,55%);
}
#a:hover{
    background: #e76f51;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #e76f51,
                0 0 25px #e76f51,
                0 0 50px #e76f51,
                0 0 100px #e76f51;
}
#a span{
    position: absolute;
    display: block;
}
#a span:nth-child(1){
    top: 0;
    left: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg,transparent,#e76f51);
    animation: btn_animl 1s linear infinite;
}
@keyframes btn_animl {
    0%{
        left: -100%;
    }
    50%,100%{
        left: 100%;
    }
}
#a span:nth-child(2){
    top: -100%;
    right: 0%;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg,transparent,#e76f51);
    animation: btn_animl2 1s linear infinite ;
    animation-delay: .25s;
}
@keyframes btn_animl2 {
    0%{
        top: -100%;
    }
    50%,100%{
        top: 100%;
    }
}
#a span:nth-child(3){
    bottom: 0%;
    right: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg,transparent,#e76f51);
    animation: btn_animl3 1s linear infinite ;
    animation-delay: .5s;
}
@keyframes btn_animl3 {
    0%{
        right: -100%;
    }
    50%,100%{
        right: 100%;
    }
}
#a span:nth-child(4){
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg,transparent,#e76f51);
    animation: btn_animl4 1s linear infinite ;
    animation-delay: .75s;
}
@keyframes btn_animl4 {
    0%{
        bottom: -100%;
    }
    50%,100%{
        bottom: 100%;
    }
}

    </style>
    <body>
        <div class="container-fluid text-center">
            <img src="/views/img/computer.png" width="25%" alt="alt"/>
            <h3 class="display-4">Sorry!! Something went Wrong</h3>
            <a href="index.jsp" id="a">
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              Home page            
            </a>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>
</html>
