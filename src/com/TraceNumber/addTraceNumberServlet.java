package com.TraceNumber;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addTraceNumberServlet extends HttpServlet
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
		tranceNumberModel tranceNumber_Model=new tranceNumberModel();
		tranceNumber_Model.setTraceNumber(req.getParameter("traceNumber"));
		tranceNumber_Model.setNote(req.getParameter("note"));
		boolean bln=tranceNumberDAO.savaTranceNumber(tranceNumber_Model);
		if(bln==true)
		{
			resp.sendRedirect("TraceNumber/traceNumber.jsp");
		}
		else
		{
			resp.sendRedirect("");
		}
	}
}
