<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>logout</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
  <style>
    body {
       background-color: lightblue;
    }
    .center {
      margin: auto;
      width: 50%;
      
      padding: 10px;
    }
    


body {
  font-family: Arial, Helvetica, sans-serif;
}




.container{
    background-color:white;
    width: 500px;
}
.logoutbtn {
  background-color: #4c95af;
  color: white;
  padding: 10px 15px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 25%;
  opacity: 0.9;
}


    
</style>
   
</head>
<body>
<% 
response.setHeader("Cache-Control","no-cache,no-store,must-validate");%>
<br>
<br>
   <form action="slot-booking/Logout" method="post">
  <div class="container">
       <img class="card-img-top" src="car_parked.jpg" alt="Congratulations">
  </div>
  <div  style="padding-left: 770px">
  <input  class="logoutbtn" type="submit" value="Log Out"></div>
  
  </form>
  

  
   

     
  


</body>
</html>

