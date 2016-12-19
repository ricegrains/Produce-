package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.LookLogDAO;
import com.ht.Model.CultivateLogsModel;

public class LookLogUpdateServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int cultivatelogid = Integer.parseInt(req.getParameter("cultivatelogid"));
		
		CultivateLogsModel log = LookLogDAO.findCultivateLogID(cultivatelogid);
		
		req.setAttribute("List", log);
		
		req.getRequestDispatcher("Breed/LookLogUpdate.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		CultivateLogsModel log = new CultivateLogsModel();
		
		
		log.setPutfryid(Integer.parseInt(req.getParameter("putfryid")));
		log.setLogdate(req.getParameter("logdate"));
		log.setTemperature(req.getParameter("temperature"));
		log.setPh(req.getParameter("ph"));
		log.setNhn(req.getParameter("nhn"));
		log.setNit(req.getParameter("nit"));
		log.setDissolvedoxygen(req.getParameter("dissolvedoxygen"));
		log.setNote(req.getParameter("note"));
		log.setCultivatelogid(Integer.parseInt(req.getParameter("cultivatelogid")));
		
		boolean bln = LookLogDAO.updatLookLog(log);
		if(bln==true){
			resp.sendRedirect("/Produec/LookLogServlet");
		}else{
			resp.sendRedirect("Breed/LookLogUpdate.jsp");
		}
	}
}
