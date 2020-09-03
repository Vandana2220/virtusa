<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
    if(session.getAttribute("name")==null)response.sendRedirect("/slot-booking/custLogin.jsp");
    %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>book-slot</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css" rel="stylesheet" >
   <style>
    body {
       background-color: lightblue;
    }
    .center {
      margin: auto;
      width: 50%;
      
      padding: 10px;
    }
    
    
     
    
      label {
        float: left;
        clear: none;
        display: block;
        padding: 0px 1em 0px 8px;
      }
    
      input[type=radio],
      input.radio {
        float: left;
        clear: none;
        margin: 2px 0 0 2px;
    }
    .button {
  background-color: #4c95af; /* Green */
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
    
</style>
</head>
<body>

<h4><p class="font-italic" ><div class="center">CHOOSE VEHICLE TYPE</div></p></h4>
<form action="slot-booking/book" method="get">
  <div class="center"><input type="radio" id="2 wheeler" name="type_veh" value="2 wheeler" required>
  <label for="2 wheeler">2 Wheeler</label>
  <input type="radio" id="4 wheeler" name="type_veh" value="4 wheeler" required>
 <label for="4 wheeler">4 Wheeler</label></div><br>
  
 
<h4><p class="font-italic" ><div class="center">CHECK IN TIME</div></p></h4>

<div class="container mt-5 mb-5" style="width: 400px">
     <input type="text" name="date" id="picker" class="form-control" required>
          <script>
          $(document).ready(function(){
              $('#picker').datetimepicker({
                    timepicker:true,
                    datepicker:true,
                   // maxDate: new Date('2020-8-26')
                    useCurrent: true,
                    format: 'y-m-d H:00',
                    value:'2020-7-14 09:00',
                    step:60,  
    //minTime: '09:00:00',
                    //maxTime: '16:00:00',
                   // startDate: currentDateTime,
                    yearStart:2020,
                    yearEnd:2021,
              })
            })
            

       
     </script>
    
  </div>
  <center><input type="submit" class="button button2" value="Book"></center>
  </form>
  <div style="padding-bottom: 200px">
   <div style="padding-left: 100px;">
     
<a href="home.jsp"><button class="button button2"  >Previous</button></a>
   </div></div>
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.js"></script>
</body>
</html>