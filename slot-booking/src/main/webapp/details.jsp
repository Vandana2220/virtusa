<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <% 
    if(session.getAttribute("name")==null)response.sendRedirect("/slot-booking/custLogin.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<title>Details</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
   <script>
		console.log(document.cookies)
   </script>
   <!--  <script>
  	
     jQuery.ajax({
         url:'getmessage',
         type:'post',
         data: 0,
         success:function(result){
                                
                }
             }
         }
     });
  </script>*/--> 


   
  <style>
    body {
       background-color: lightblue;
    }
    .button {
  background-color: #4c95af; 
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
}
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

/* Full-width input fields */
input[type=text] {
  width: 100%;
  padding: 10px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.submitbtn {
  background-color: #4c95af;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 25%;
  opacity: 0.9;
}

.submitbtn:hover {
  opacity: 1;
}
.container{
    background-color:white;
    width: 500px;
}



</style>
</head>
<body>

<div style="margin-bottom:20px"></div>

<form action='slot-booking/otp' method='post'>

  <div style="margin-left: 350px;">
  <div style="margin-right: 300px">
  <div class="container">
    <h1>Details</h1>
    <p>Please fill in this form to book a slot.</p>
    <hr>
    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" id="name" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="contact"><b>Contact</b></label>
    <input type="text" placeholder="contact" name="contact" id="contact" required>
    <hr>
    <button type="submit" class="submitbtn">submit</button>
  </div></div></div>
</form>
 <div style="padding-bottom: 180px">
   <div style="padding-left: 100px;">
      <button class="button button2"  >Previous</button></div></div>
</body>
</html>
    