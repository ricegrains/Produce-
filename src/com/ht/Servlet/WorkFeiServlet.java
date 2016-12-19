package com.ht.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.CultivateOperationsDAO;

public class WorkFeiServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		ArrayList cultivateotheroperations = CultivateOperationsDAO.findCultivateOtherOperations();
		
		req.setAttribute("list", cultivateotheroperations);
		
		req.getRequestDispatcher("Breed/WorkFei.jsp").forward(req, resp);
		
	}

}
