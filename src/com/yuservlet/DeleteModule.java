package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ModulesDAO;

public class DeleteModule extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String moduleid=req.getParameter("moduleid");
		System.out.println("moduleid="+moduleid);
		
		boolean bln=ModulesDAO.deletemodule(moduleid);
		if(bln){
			resp.sendRedirect("./MainModule");
		}
		
	}
}
