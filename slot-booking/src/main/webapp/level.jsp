<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
    if(session.getAttribute("name")==null)response.sendRedirect("/slot-booking/custLogin.jsp");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Level</title>
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
    .button {
  background-color: #4c95af; /* Blue */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
    }





.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button3:hover {
  background-color: #008CBA;
  color: white;
}
    
</style>
   
</head>
<body>

    <div style="padding-bottom: 50px"></div>
        
       <form action="slot-booking/SelectLevel" method="POST">
            <div class="text-center">
                  <input id="level1" type="submit" class="button button3"  name="level" value="Book slot in G1 level">
                   
          
            <hr>
           <input type="submit" class="button button3" name="level" value="Book slot in G2 level">
            <hr>
            <input type="submit" class="button button3" name="level" value="Book slot in G3 level">
              </div>
        </form>
    
    <div style="padding-bottom: 50px"></div>

    <div style="padding-left: 100px;">
     
        <a href="book.jsp"><button class="button button2"  >Previous</button></a>
            </div>
      


</body>
</html>
