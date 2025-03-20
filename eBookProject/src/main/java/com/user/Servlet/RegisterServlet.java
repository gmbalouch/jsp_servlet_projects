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

@WebServlet(("/register"))
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name=req.getParameter("fullname");
			String email=req.getParameter("email");
			String phoneNo=req.getParameter("phoneNo");
			String password=req.getParameter("password");		
			String check=req.getParameter("check");
		
			User user=new User();
			user.setName(name);
			user.setPhoneNo(phoneNo);
			user.setEmail(email);
			user.setPassword(password);
			//user.set(check);
		
			HttpSession session=req.getSession();
			
			if(check!=null) {
				UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
				boolean f=dao.userRegister(user);
				if(f) {
					
					session.setAttribute("successmsg", "Registered Successfully!");	
					resp.sendRedirect("Register.jsp");
				}else {
					session.setAttribute("failledmsg", "Something wrong with server!");	
					resp.sendRedirect("Register.jsp");
					
				}
			}
			else {
				session.setAttribute("failledmsg", "Please confirm you check terms and conditions..");	
				resp.sendRedirect("Register.jsp");
			}
			
			
			
		
		//System.out.println(name+ " "+ email+ " "+ phoneNo+ " "+ password+" "+check);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}	
}	
	

	

