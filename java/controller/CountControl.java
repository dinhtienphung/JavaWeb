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


@WebServlet("/api/count")
public class CountControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CountControl() {

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String homePage = request.getParameter("homes");
		int homes = Integer.parseInt(homePage);
		
		int counts = ProductList.getAllcount();
		int endPage = counts/5;
		
		if(counts %5 !=0) {
			endPage++;
		}
		
		List<Product> product = ProductList.listCount(homes);
		request.setAttribute("product", product);
		request.setAttribute("end", endPage);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
		dispatcher.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
