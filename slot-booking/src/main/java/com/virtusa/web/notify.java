package com.virtusa.web;
 
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class notify extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");  
            Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");   
            Statement stm=conn1.createStatement();
            String sql="insert into details values('"+CustLogin.getUser()+"','"+Set_slot.getTime()+"','"+SelectLevel.getlevel()+"','"+Slot.getSlot()+"')";
			stm.executeUpdate(sql);
			  String notify="parkMYcar";
			  String notify1="Customer "+CustLogin.getUser()+", your slot booked on "+Set_slot.getDate()+"|"+Set_slot.getTime()+" (24-hourclock)";
			  String notify2=SelectLevel.getlevel()+"-"+Slot.getSlot();
			  res.sendRedirect("/slot-booking/disp.jsp");
			  
			 		      
			}catch(Exception e) {
			res.sendRedirect("/slot-booking/otp.jsp");
		}
		
	}
}
