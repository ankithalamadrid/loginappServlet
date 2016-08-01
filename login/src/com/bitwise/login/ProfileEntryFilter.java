package com.bitwise.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebFilter("/ProfileEntryFilter")
public class ProfileEntryFilter implements Filter {


    public ProfileEntryFilter() {
    }

	public void destroy() {
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		res.setContentType("text/html");
		
		PrintWriter pw = res.getWriter();
		
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		

			if(firstname == null || firstname.length()<5 && !firstname.matches("[a-zA-Z]+")){
				pw.write("<h1>Invalid first name input</h1><br>");
				req.getRequestDispatcher("createprofile.jsp").include(request, response);
				
			}
			else if(lastname == null || !lastname.matches("[a-zA-Z0-9]+")){
					pw.write("<h1>Invalid last name input</h1><br>");
					req.getRequestDispatcher("createprofile.jsp").include(request, response);
				}
			
			else if(email == null || !email.matches("^[A-Za-z\\+]+@[A-Za-z]+(\\.[A-Za-z]+)*(\\.[A-Za-z]{2,})$")){
					pw.write("<h1>Invalid email address input</h1><br>");
					req.getRequestDispatcher("createprofile.jsp").include(request, response);
				}
			else if(contact == null || !contact.matches("[0-9]{0,10}")){
					pw.write("<h1>Invalid contact input</h1><br>");
					req.getRequestDispatcher("createprofile.jsp").include(request, response);
				}
			else {
			chain.doFilter(request, response);
			}

			
	}


	public void init(FilterConfig fConfig) throws ServletException {
	}

}
