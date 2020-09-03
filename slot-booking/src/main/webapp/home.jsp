<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <% 
    if(session.getAttribute("name")==null)response.sendRedirect("/slot-booking/custLogin.jsp");
    %>  
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>HOME</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <style>
    body {
       background-color: lightblue;
    }
    .center {
      margin: auto;
      width: 50%;
      
      padding: 10px;
    }
    
</style>
   
</head>
<body>


<div class="container">
  <div class="txt" style="padding-top:50px"></div>
  <h2><div class="txt" style="padding-left:380px" >WELCOME!!</div></h2>
  <div class="txt" style="padding-top:90px"></div>
  
  <a href="book.jsp" ><div class="center"><button type="button" class="btn btn-primary btn-lg btn-block">BOOK SLOT</button></div></a>
  <a href="cancel.jsp" > <div class="center"><button type="button" class="btn btn-primary btn-lg btn-block">CANCEL SLOT</button></div></a>
  <div class="center"><button type="button" class="btn btn-primary btn-lg btn-block">SLOTS HISTORY</button></div>
  
      
</div>

</body>
</html>
    