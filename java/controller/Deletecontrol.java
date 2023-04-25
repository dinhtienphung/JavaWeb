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

/**
 * Servlet implementation class Deletecontrol
 */
@WebServlet("/api/delete")
public class Deletecontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Deletecontrol() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("sid");
			
			ProductList product = new ProductList();
			product.deleteProductByID(id);
			response.sendRedirect("manager");	
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
