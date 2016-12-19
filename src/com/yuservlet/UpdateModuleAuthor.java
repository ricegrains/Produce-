package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.EmpDAO;
import com.yuDAO.ModulesAuthorizationDAO;
import com.yuDAO.ModulesDAO;
import com.yuModel.ModuleAuthorizationModel;

public class UpdateModuleAuthor extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		String userid=req.getParameter("userid");
		System.out.println("update servlet userid="+userid);
		ModuleAuthorizationModel author=ModulesAuthorizationDAO.findinfoByid(userid);
		req.setAttribute("author", author);
		
		List emplist=EmpDAO.findAllinfo();
		req.setAttribute("emplist", emplist);
		
		List modlist= ModulesDAO.findallinfo();
		req.setAttribute("modlist", modlist);
		
//		resp.sendRedirect("moduleAuthorization/UpdatemoduleAuthorization.jsp");
		req.getRequestDispatcher("moduleAuthorization/UpdatemoduleAuthorization.jsp").forward(req, resp);
		
	}
}
