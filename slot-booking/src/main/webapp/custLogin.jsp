<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <meta name="viewport" content="width=1020, initial-scale=1.0">
        <link rel="stylesheet" href="login.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/css/mdb.min.css" rel="stylesheet">
        <title>Login</title>
    </head>
    <body>
    <% 
response.setHeader("Cache-Control","no-cache,no-store,must-validate");%>
    
        
        <div class="container">
            <video id="myVideo" autoplay="autoplay" muted="muted" preload="auto" loop="">
                <source src="https://storage.googleapis.com/coverr-main/masters/For_Shore.mp4">
            </video>
            
            <div class="card" style="position:absolute;">
                <div class="card-body">
                    <center><h1 class="he"><font color="white">Sign in (Customer).</font></h1></center><hr><br>
                    <form method="POST" action="slot-booking/custLogin">
                        <input type="text" name="user" placeholder="User Name" autocomplete="off" autofocus required>
                        <br><br>
                        <input type="password" name="password" placeholder="Password" maxlength="15"required>
                        <br><br>
                        <input type="submit" class="btn btn-danger btn-block btn-sm">
                        
                        <a href="index.jsp"><font color="white">Sign in as Admin.</font></a>
                      <span style="padding-left:100px";>
                        <a href="register.jsp"><font color="white">Register.</font></a></span>
                    </form>
                </div>            
             </div>
        </div>

    </body>
</html>