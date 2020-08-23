<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
    if(session.getAttribute("name")==null)response.sendRedirect("/slot-booking/custLogin.jsp");
    %>  
<!DOCTYPE html>
<html lang="en">
<head>
  <title>OTP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
   <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
    <script lang="Javascript">
    function OnButton()
    {
        document.Form1.action = "slot-booking/otp"
        document.Form1.submit();             // Submit the page
        return true;
    }
function OnButton1()
{
    document.Form1.action = "slot-booking/verify"
    document.Form1.submit();             // Submit the page
    return true;
}

function OnButton2()
{
    document.Form1.action = "slot-booking/notify"
    document.Form1.submit();             // Submit the page
    return true;
}

</script>
  <style>
  @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

    body {
       background-color: lightblue;
    }
    .center {
      margin: auto;
      width: 50%;
      
      padding: 10px;
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

    .btn {
  background-color: #4c95af; 
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
}
.btn:hover {opacity: 1}
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

.rating{
  position:absolute;
  top:70%;
  left:50%;
  transform:translate(-50%,-50%) rotateY(180deg);
  display:flex;
}
.rating input{
  display:none;
}
.rating label{
  display:block;
  cursor:pointer;
  
}
.rating label:before{
  content:'\f005';
  font-family:fontAwesome;
  position:relative;
  display:block;
  font-size:50px;
  color: #101010;
}
.rating label:after{
  content:'\f005';
  font-family:fontAwesome;
  position:absolute;
  display:block;
  font-size:50px;
  color: #1f9cff;
  top:0;
  opacity:0;
  transition: .5s;
  text-shadow:0 2px 5px rgba(0,0,0,.5);
}
.rating label:hover:after,
.rating input:checked ~ label:after
{
  opacity: 1;
}

    
</style>
   
</head>
<body>
<% 
response.setHeader("Cache-Control","no-cache,no-store,must-validate");%>
<form name="Form1" method="post">
    <div class="card">
        <div class="text-center" class="container">
              <div style="padding-top:50px;"></div>
                <label for="otp" >ENTER OTP:</label><br>
                <input type="text" name="otp" id="otp" style="height:40px;width: 270px;"><br>
                
                
                 <div> <label><input class="checkbox"type="checkbox" class="text-center" required> I'm not a Robot</label></div>
                  <input type="submit" value="Regenerate" onclick="OnButton();">
                  <input type="submit" value="submit" onclick="OnButton1();">
                <div style="margin-top:100px;"></div>
                            
				  <div class="rating">
				      <input type="radio" id="star5" name="rating" value="5" required><label class = "full" for="star5" title="Awesome - 5 stars" ></label>
				      
				      <input type="radio" id="star4" name="rating" value="4" required><label class = "full" for="star4" title="Pretty good - 4 stars" ></label>
				      
				      <input type="radio" id="star3" name="rating" value="3" required><label class = "full" for="star3" title="Meh - 3 stars" ></label>
				      
				      <input type="radio" id="star2" name="rating" value="2" required><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
				      
				      <input type="radio" id="star1" name="rating" value="1" required><label class = "full" for="star1" title="Sucks big time - 1 star" ></label>
				      
				  
				  </div>
				  <div class="text-center">
                  <input class="btn" type="submit" value="Book" onclick="OnButton2();">
                
                </div>
          
     </div>
  </div>
  </form>
    

  <div style="padding-bottom: 200px">
   <div style="padding-left: 100px;">
     
<a href="details.jsp"><button class="button button2"  >Previous</button></a>
   </div></div>


</body>
</html>
