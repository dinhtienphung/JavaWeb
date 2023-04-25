package controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.Connect;
import dao.ProductList;
import entity.Product;
import entity.Users;


@WebServlet("/api/manager")
public class ManagerControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ManagerControl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession httpSession = request.getSession();
		
		Users users = (Users) httpSession.getAttribute("session");
		
		if(users == null) {
			response.sendRedirect("/Javaweb/api/login");
			
		} else {
			ProductList list = new ProductList();
			List<Product> product = list.getAllProduct();
		
			request.setAttribute("product2", product);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/productmanager.jsp");
			dispatcher.forward(request, response);
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
		}		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	}
	

}
