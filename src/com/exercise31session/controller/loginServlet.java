package com.exercise31session.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html charset='utf-8'");
		PrintWriter output =response.getWriter();
		
		String username = request.getParameter("txtuserName");
		String password = request.getParameter("txtPassword");
		
		output.println("Username"+username);
		output.println("Password"+password);
		
		if(username.equals("admin") && password.equals("admin"))
			
		{
			
			HttpSession miSession = request.getSession();
			miSession.setAttribute("user", username);
			miSession.setAttribute("pass", password);
			output.println("usuario logeado");
			response.sendRedirect("welcom.jsp");
			
			
		}
		else
		{
			output.println("usuario y contraseña no validos");
		}
		
		
	}

}
