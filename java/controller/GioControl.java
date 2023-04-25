package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductList;
import dao.UserActionList;
import entity.Items;
import entity.Product;
import entity.Users;


@WebServlet("/api/gio")
public class GioControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GioControl() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		UserActionList itemList = new UserActionList();
		HttpSession session = request.getSession();
		
		
		
		
		Users user = (Users) session.getAttribute("session");
		String username = user.getUsername();
		List<Items> item = UserActionList.getCart(username);
		System.out.println(item.size());
		request.setAttribute("items", item);
		
		response.setContentType("text/html;charset=UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/giohang.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	}

}
