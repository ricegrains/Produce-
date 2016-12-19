package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ModulesAuthorizationDAO;

public class DelectModuleAuthor extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			
		String userid=req.getParameter("userid");
		boolean bln=ModulesAuthorizationDAO.deletemoduleauthor(userid);
		if(bln){
			resp.sendRedirect("./MainModuleAuthor");
		}
		
	}
}
