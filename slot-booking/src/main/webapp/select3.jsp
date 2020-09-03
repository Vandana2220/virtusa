<% 
    if(session.getAttribute("name")==null)response.sendRedirect("/slot-booking/custLogin.jsp");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Select</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
   <!-- importing car icon  -->
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <style>
    body {
       background-color: lightblue;
       
    }
    .center {
      margin: auto;
      width: 48%;
   
         
      padding: 10px;
    }
    .button {
  background-color: #4c95af; /* blue */
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
  .card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
}
}

.button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
 .vertical { 
            border-left: 17px solid skyblue; 
            height: 100px; 
        } 
    
    
    
</style>
   
</head>

<body class="jumbotron text-center">
<button class="button button2"  >Waiting List</button>

<form action="slot-booking/Slot" method="POST">

    <div class="container" >
              
                 <hr>
                 <div >
              <div class="row" style="background-color:lavenderblush;">
                    <div class="col" style="background-color:lavender;">
	                   
	    
	    
	       				<a style="padding-left: 20px;" ><input type="submit" class="button button2"  id='A-1' name="slot" value="A-1" ><i class="fas fa-car" >BOOK</i></a>
                                    
                   </div>
                    <div class= "vertical"></div>
    
                    <div class="col"style="background-color:lavender;">
	                   
	                    <a style="padding-left: 20px;" ><input type="submit" class="button button2" id='B-1' name="slot" value="B-1" ><i class="fas fa-car" >BOOK</i></a>
     
                    </div>
             </div>
             </div>
			  <br>
			  <br>
  
             <div class="row" style="background-color:lavenderblush;">
                       <div class="col" style="background-color:lavender;">
                            <div style="padding-top:15px"></div>
                            <a style="padding-left: 20px;" ><input type="submit" class="button button2" id='C-1' name="slot" value="C-1"><i class="fas fa-car" >BOOK</i></a>
     
                       </div>
                       <div class= "vertical"></div>
    
                       <div class="col"style="background-color:lavender;">
                         <div style="padding-top:15px"></div>
                         <a style="padding-left: 20px;"><input type="submit" class="button button2" id='D-1' name="slot" value="D-1"><i class="fas fa-car" >BOOK</i></a>
                       </div>
             </div>
             <hr>
    
             <br>
             <hr>
    <div class="row" >
        <div class="col" style="background-color:lavender;">
        <div style="padding-top:15px"></div>
   <a style="padding-left: 20px;" ><input type="submit" class="button button2" id='E-1' name="slot" value="E-1"><i class="fas fa-car" >BOOK</i></a>
      
    </div>
    <div class= "vertical"></div>
    
    <div class="col"style="background-color:lavender;">
    <div style="padding-top:15px"></div>
   <a style="padding-left: 20px;" ><input type="submit" class="button button2"id='F-1' name="slot" value="F-1"><i class="fas fa-car" >BOOK</i></a>
    </div>
  </div>
  <br>
  <br>
  
  <div class="row">
    <div class="col" style="background-color:lavender;">
    <div style="padding-top:15px"></div>
         <a style="padding-left: 20px;" ><input type="submit" class="button button2" id='G-1' name="slot" value="G-1"><i class="fas fa-car" >BOOK</i></a>
    </div>
    <div class= "vertical"></div>
    <div class="col"style="background-color:lavender;">
    <div style="padding-top:15px"></div>
         <a style="padding-left: 20px;"><input type="submit" class="button button2" id='H-1' name="slot" value="H-1"> <i class="fas fa-car" >BOOK</i></a>
    </div>
  </div>
  <hr>
  <br>
    </div>

 </form>
 <div style="padding-bottom: 200px">
        
<a href=level.jsp><button class="button button2"  >Previous</button></a></div>

  <script>
  	
     jQuery.ajax({
         url:'getJSON',
         type:'post',
         data: 0,
         success:function(result){
             var obj=JSON.parse(result);
             //console.log(obj[0]);
             for(var i in obj){
                 if(obj[i]==1){
                     document.getElementById(i).disabled=true;                    
                }
             }
         }
     });
  </script>


</body>
</html>
