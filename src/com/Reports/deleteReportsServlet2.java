package com.Reports;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteReportsServlet2 extends HttpServlet
{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	doPost(req, resp);
 }
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String ReportIDS = req.getParameter("ReportID");
		int ReportID=Integer.parseInt(ReportIDS);
		boolean bln=ReportsDAO.deleteReports(ReportID);
		if(bln==true)
		{
			resp.sendRedirect("selectAllReportsServlet2");
		}
		else
		{
			System.out.println("Error");
		}
	}
}
