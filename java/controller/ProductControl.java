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


@WebServlet("/api/product")
public class ProductControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ProductControl() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameter("cid");
		
		session.setAttribute("pid", id);
		
		ProductList list = new ProductList();
		Product product = list.getProductByID(id);
		
		
		
		
		request.setAttribute("product1", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/product.jsp");
		dispatcher.forward(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	}

}
