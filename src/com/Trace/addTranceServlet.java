package com.Trace;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addTranceServlet extends HttpServlet
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
		tranceModel trance_Model=new tranceModel();
		trance_Model.setTraceNumberID(Integer.parseInt(req.getParameter("TraceNumberID")));
		trance_Model.setProduceOrgID(Integer.parseInt(req.getParameter("ProduceOrgID")));
		trance_Model.setObjectID(Integer.parseInt(req.getParameter("ObjectName")));
		trance_Model.setCustomer(req.getParameter("Customer"));
		trance_Model.setContractorID(req.getParameter("ContractorID"));
		trance_Model.setNote(req.getParameter("note"));
		boolean bln=tranceDAO.saveTrance(trance_Model);
		if(bln==true)
		{
			resp.sendRedirect("Trance/trance.jsp");
		}
		else
		{
			resp.sendRedirect("");
		}
	}
}
