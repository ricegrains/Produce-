package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.TestResultDAO;

public class MainTestResult extends HttpServlet{

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doGet(req, resp);
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		List resultlist=TestResultDAO.findresult();
		req.setAttribute("resultlist", resultlist);
		
//		System.out.println("resultlist="+resultlist);
		req.getRequestDispatcher("testresult/MainTestResult.jsp").forward(req, resp);
	}
}
