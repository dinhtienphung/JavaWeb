package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import entity.Users;


@WebServlet("/api/session")
public class ProductSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ProductSession() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		HttpSession Session = request.getSession();
		Users users = (Users) Session.getAttribute ("sesstion");
	
		if (users !=null) {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	}

}
