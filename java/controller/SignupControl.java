package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductList;
import entity.Product;
import entity.Users;

/**
 * Servlet implementation class SignupControl
 */
@WebServlet("/api/signup")
public class SignupControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SignupControl() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/signup.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Users users = new Users();
		users.setUsername(username);
		users.setPassword(password);

		
		ProductList.insertUsers(users);
		response.sendRedirect("login");
	}

}
