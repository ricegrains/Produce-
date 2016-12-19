package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.TestResultDAO;

public class DeleteTestResult extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int testresultid=Integer.parseInt(req.getParameter("testresultid"));
		
		System.out.println("delete servelt testresultid="+testresultid);
		
		boolean bln= TestResultDAO.delete(testresultid);
		if(bln){
			resp.sendRedirect("./MainTestResult");
		}
	}
}
