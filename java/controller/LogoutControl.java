package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Users;


@WebServlet("/api/logout")
public class LogoutControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LogoutControl() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("session");
			  if (user != null) {
			    session.removeAttribute("session");
			    HttpServletResponse httpResp = null;
			    response.sendRedirect("home");
			  }

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	}

}
