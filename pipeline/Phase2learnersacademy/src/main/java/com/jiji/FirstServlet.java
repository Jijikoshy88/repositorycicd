package com.jiji;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FirstServlet() {
        super();
       
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.println("<h1>Welcome to learners academy</h1>");
	}

}
