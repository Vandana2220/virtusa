package com.virtusa.web;

import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 try{
	            
	            
	             String user=req.getParameter("user");  
	             String pass=req.getParameter("pass");
	             String confirm=req.getParameter("confirm_pass");
	             
	            Class.forName("com.mysql.jdbc.Driver");  
	            Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");   
	            Statement stm=conn1.createStatement();
	            if(pass.equals(confirm)) {
	            	//System.out.println("gvv");
	            	String q1="select * from customer where userName='"+user+"' && Password='"+pass+"'";
	                ResultSet rs=stm.executeQuery(q1);
	                int c=0;
	                while(rs.next()){
	                    c++;
	                }
	                if(c!=0)
	                	res.sendRedirect("/slot-booking/register.jsp");
	            	String q="insert into customer values('"+user+"','"+pass+" ')" ;
	            	stm.executeUpdate(q);
	            	 res.sendRedirect("/slot-booking/custLogin.jsp");
	            }
	            else {
	            	res.sendRedirect("/slot-booking/register.jsp");
	            }
	            
	            
		 }catch(Exception e) {
				System.out.println(e);
			}
	}

}
