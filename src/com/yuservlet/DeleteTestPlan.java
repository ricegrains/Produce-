package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.TestPlanDAO;

public class DeleteTestPlan extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int testplanid=Integer.parseInt(req.getParameter("testplanid"));
		
		boolean bln=TestPlanDAO.deleteplan(testplanid);
		if(bln){
			resp.sendRedirect("./MainTestPlan");
		}
		
		
	}
}
