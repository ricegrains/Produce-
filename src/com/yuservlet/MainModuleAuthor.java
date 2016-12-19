package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ModulesAuthorizationDAO;

public class MainModuleAuthor extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

//			System.out.println("进入servlet");
			List author=ModulesAuthorizationDAO.fintallinfo();
			req.setAttribute("author", author);
//			System.out.println("进入 jsp");
//			resp.sendRedirect("moduleAuthorization/MainmoduleAuthorization.jsp");
			req.getRequestDispatcher("moduleAuthorization/MainmoduleAuthorization.jsp").forward(req, resp);
			
	}
}
