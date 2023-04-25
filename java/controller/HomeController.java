package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
import entity.Items;
import entity.Product;
import entity.Users;
import dao.ProductList;

@WebServlet("/api/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		ArrayList<String> productName = new ArrayList<String>();
//		productName.add("Bảo bối 2050 - Chong chóng tre của Nobita");
//		productName.add("Bảo bối 2030 - Máy dò tìm kim cương cực chất");

//		request.setAttribute("name", productName);
//		
//		Product product = new Product(1, "Bảo bối 2050 - Chong chóng tre của Nobita", 17000, "resource/img/sp1.jfif");
//		Product product1 = new Product(2, "Bảo bối Doraemon - Máy phát hiện nói dối", 18000, "resource/img/sp2.jfif");
//		Product product2 = new Product(3, "Bảo bối Doraemon - Vòng tròn xuyên thấu", 65000, "resource/img/p3.jfif");

//		
//		ArrayList<Product> productList = new ArrayList<Product>();
//		productList.add(product);
//		productList.add(product1);
//		productList.add(product2);

//		request.setAttribute("name1", productList);

//		String homePage = request.getParameter("homes");
//		
//		int homes = Integer.parseInt(homePage);
//		
		//================================================


			ProductList product = new ProductList();
			List<Product> list = product.getProduct();
			int counts = product.getAllcount();
			int endPage = counts / 5;

			if (counts % 5 != 0) {
				endPage++;
			}
			request.setAttribute("product", list);
			request.setAttribute("end", endPage);
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
			dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}