package com.user.Servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
		HttpSession session=req.getSession();
		
		
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			System.out.println(email+" " +password);
			
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User user=new User();
				session.setAttribute("userobj", user);
				
				resp.sendRedirect(req.getContextPath() +"/admin/Home.jsp");
			}else {
				User user=dao.Login(email, password);
				
				if(user!=null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("Home.jsp");
				}else {
					session.setAttribute("failedmsg", "Invalid Email & Password.. ");
					resp.sendRedirect("Login.jsp");
				}
				
				resp.sendRedirect("Home.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}
