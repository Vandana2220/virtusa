package com.virtusa.web;

import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpCookie;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.servlet.http.*;
import java.sql.*;


public class CustLogin extends HttpServlet {
	public static String user;
    public static String getUser() {
		return user;
	}
	public static void setUser(String user) {
		CustLogin.user = user;
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException{
        try{
        	HttpSession session=req.getSession();  
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte in[]=md.digest(req.getParameter("password").getBytes(StandardCharsets.UTF_8)); 
            BigInteger number = new BigInteger(1,in);  
            StringBuilder hexString = new StringBuilder(number.toString(16)); 
           /* while(hexString.length()<32){
                hexString.insert(0,'0'); 
            }*/
            String pass=hexString.toString();
             String user=req.getParameter("user");  
             setUser(user);
            Class.forName("com.mysql.jdbc.Driver");  
            Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");   
            Statement stm=conn1.createStatement();
            String q="select * from customer where userName='"+user+"' && Password='"+pass+"'";
            ResultSet rs=stm.executeQuery(q);
            int c=0;
            while(rs.next()){
                c++;
            }
            if(c==1){
                session.setAttribute("name",user);
                res.sendRedirect("/slot-booking/home.jsp");
            }
            
        }catch(Exception e){
        	System.out.print(e);
        	//res.sendRedirect("/slot-booking/custLogin.jsp");
        }
        
    }
}
