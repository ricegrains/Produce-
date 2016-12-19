package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.CultivateOperationsDAO;
import com.ht.Model.CultivateOperationsModel;

public class WorkAddServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		CultivateOperationsModel work = new CultivateOperationsModel();
		
		work.setPutfryid(Integer.parseInt(req.getParameter("putfryid")));
		work.setOperatetime(req.getParameter("operatetime"));
		work.setOperateperson(req.getParameter("operateperson"));
		work.setOperateid(Integer.parseInt(req.getParameter("operateid")));
		work.setCategoryid(Integer.parseInt(req.getParameter("categoryid")));
		work.setObjectid(Integer.parseInt(req.getParameter("objectid")));
		work.setOperationmethod(req.getParameter("operationmethod"));
		work.setWeigh(req.getParameter("weigh"));
		work.setDiseasename(req.getParameter("diseasename"));
		work.setBrokeOuttime(req.getParameter("brokeOuttime"));
		work.setNote(req.getParameter("note"));
		
		boolean bln = CultivateOperationsDAO.insertWork(work);
		if(bln == true){
			resp.sendRedirect("/Produce/WorkServlet");
		}else{
			resp.sendRedirect("/Produce/Breed/ServletAdd?name=putfry");
		}
		
	}
}
