package com.ht.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.CultivateOperationsDAO;

public class WorkServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ArrayList CultivateOperations = CultivateOperationsDAO.findCultivateOperations();
		
		req.setAttribute("list", CultivateOperations);
		
		req.getRequestDispatcher("Breed/Work.jsp").forward(req, resp);
	}
}
