package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductList;
import entity.Product;
import entity.Users;

@WebServlet("/api/login")
public class Logincontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Logincontrol() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");

		Users users = ProductList.FindUsernameAndPassword(username, password);
		System.out.println(users.getUsername());


		if (users.getUsername() != null) {
			response.sendRedirect("/JavaWeb/api/home");
			HttpSession session = request.getSession();
			session.setAttribute("session", users);
			
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	

}
