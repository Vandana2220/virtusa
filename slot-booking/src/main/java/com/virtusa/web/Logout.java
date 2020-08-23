package com.virtusa.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();  
			session.removeAttribute("user");
	         session.invalidate();
	         
			 response.sendRedirect("/slot-booking/custLogin.jsp");

		}
		catch(Exception e) {
			System.out.print(e);
		}
	}

}
