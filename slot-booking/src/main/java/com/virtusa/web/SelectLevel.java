package com.virtusa.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SelectLevel extends HttpServlet {
	public static String select;
    public static String getlevel(){
		return select;
	}
	public static void setlevel(String select) {
		SelectLevel.select = select;
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException {
		try {
			String select=req.getParameter("level");
			setlevel(select);
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");
			Statement stmt=con.createStatement(); 	
			String sql="insert into level values('"+select+"')";
			stmt.executeUpdate(sql);
			if(select.equals("Book slot in G1 level")) {
				res.sendRedirect("/slot-booking/select1.jsp");
			}
			else if(select.equals("Book slot in G2 level")) {
				res.sendRedirect("/slot-booking/select2.jsp");
			}
			else if(select.equals("Book slot in G3 level")) {
				res.sendRedirect("/slot-booking/select3.jsp");
			}
			
			
			
			
	
		}catch(Exception e) {
		   System.out.println(e);
	    }
	}
	

}
