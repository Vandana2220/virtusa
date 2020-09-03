package com.virtusa.web;

import java.math.BigInteger;
import java.net.HttpCookie;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.servlet.http.*;
import java.sql.*;


public class AdminLogin extends HttpServlet {
	
    protected void doPost(HttpServletRequest req, HttpServletResponse res){
        try{
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte in[]=md.digest(req.getParameter("password").getBytes(StandardCharsets.UTF_8)); 
            BigInteger number = new BigInteger(1,in);  
            StringBuilder hexString = new StringBuilder(number.toString(16)); 
            while(hexString.length()<32){
                hexString.insert(0,'0'); 
            }
            String pass=hexString.toString();
            String user=req.getParameter("user");  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");   
            Statement stm=conn1.createStatement();
            String q="select * from admin where userName='"+user+"' && Password='"+pass+"'";
            ResultSet rs=stm.executeQuery(q);
            
            int c=0;
            while(rs.next()){
                c++;
            }
            if(c==1){
            	
                Cookie ck=new Cookie("user",user);//creating cookie object  
                res.addCookie(ck);            
                res.sendRedirect("/slot-booking/home.jsp");
            }
            else{
                res.sendRedirect("/slot-booking/index.jsp");
            }
        }catch(Exception e) {}
        
    }
}
