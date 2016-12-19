package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.TestPlanDAO;

public class MainTestPlan extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		List planlist=TestPlanDAO.findAllplan();
		req.setAttribute("planlist", planlist);
		
		req.getRequestDispatcher("testplan/MainTestPlan.jsp").forward(req, resp);
	}
}
