package com.bitwise.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ProfileServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("createprofile.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		request.setAttribute("username", username);
		doGet(request, response);	
	
			
	}

}
