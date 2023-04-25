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


@WebServlet("/api/update")
public class UpdateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateControl() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		ProductList list = new ProductList();
		Product product = list.getProductByID(id);
		request.setAttribute("product3", product);

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateproduct.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pname = request.getParameter("name");
		String pprice = request.getParameter("price");
		String pimage = request.getParameter("image");
		String ppid = request.getParameter("id");
		
		Product product = new Product();
		product.setId(Integer.valueOf(ppid));
		product.setName(pname);
		product.setPrice(Double.valueOf(pprice));
		product.setImage(pimage);
		
		ProductList.updateProduct(product);
		response.sendRedirect("manager");
		
	}

}
