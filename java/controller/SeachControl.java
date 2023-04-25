package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductList;
import entity.Product;


@WebServlet("/api/seach")
public class SeachControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SeachControl() {
 
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
//		String name = request.getParameter("name");
//		List<Product> list = ProductList.seach();
//		request.setAttribute("product", list);
//		request.getRequestDispatcher("/home.jsp").forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");

			String Seach = request.getParameter("Seach");
			System.out.println(Seach);
			List<Product> list = ProductList.seach(Seach);
			request.setAttribute("product", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
			dispatcher.forward(request, response);
	}

}
