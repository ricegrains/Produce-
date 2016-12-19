package com.Trace;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteTraceServelt  extends HttpServlet
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
		int TraceID=Integer.parseInt(req.getParameter("TraceID"));
		boolean bln=tranceDAO.deleteTrace(TraceID);
		if(bln==true)
		{
			resp.sendRedirect("selectAllTraceServelt");
		}
		else
		{
			System.out.println("Error");
		}
	}
}
