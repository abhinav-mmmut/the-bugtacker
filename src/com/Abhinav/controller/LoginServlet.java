package com.Abhinav.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Abhinav.dao.UserDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserDao userdao=new UserDao();
		String[] match=userdao.getuser(username);
		if(username.equals(match[0]) && password.equals(match[1])) {
			HttpSession session=request.getSession();
			session.setAttribute("username", username);
			
			response.sendRedirect("welcome.jsp");
		}
		else {
			response.sendRedirect("Login.jsp");
		}
	}

}
