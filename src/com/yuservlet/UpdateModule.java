package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ModulesDAO;
import com.yuModel.ModuleModel;

public class UpdateModule extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		String moduleid=req.getParameter("moduleid");
		System.out.println("update servlet moduleid="+moduleid);
		ModuleModel module=ModulesDAO.findinfoByid(moduleid);
		req.setAttribute("module", module);
		System.out.println(module);
		resp.sendRedirect("modules/Updatemodule.jsp");
		
	}
}
