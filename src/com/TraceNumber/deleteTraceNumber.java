package com.TraceNumber;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteTraceNumber extends HttpServlet
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
		int TraceNumberID=Integer.parseInt(req.getParameter("traceNumberID"));
		boolean bln=tranceNumberDAO.deleteTraceNumber(TraceNumberID);
		if(bln==true)
		{
			resp.sendRedirect("selectAllTraceNumberServlet");
		}
		else
		{
			System.out.println("Error");
		}
	}
}
