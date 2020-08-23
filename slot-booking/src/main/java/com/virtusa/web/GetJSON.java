package com.virtusa.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

public class GetJSON extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("Hello WORLD");
		try {
			Class.forName("com.mysql.jdbc.Driver");  
	        Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");   
	        Statement stm=conn1.createStatement();
	        
	        String q1="select * from statusupdate";
	        ResultSet rs=stm.executeQuery(q1);
	        JSONArray arr = new JSONArray();
	        Map obj=new HashMap();  
	        while(rs.next()) {
	        	obj.put(rs.getString("slot"),rs.getString("status"));	
	        	
	        }
	        String jsonText = JSONValue.toJSONString(obj);
			  res.setContentType("text/html");
			  PrintWriter out=res.getWriter();
			  out.println(jsonText);
			  out.flush();
		}catch(Exception e) { System.out.println(e);}
	}

}
