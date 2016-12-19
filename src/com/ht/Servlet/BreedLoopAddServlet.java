package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.BreedDAO;
import com.ht.Model.CultivateRotationsModel;

public class BreedLoopAddServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		CultivateRotationsModel loop=new CultivateRotationsModel();
		
		loop.setContractsignplotsid(Integer.parseInt(req.getParameter("contractsignplotsid")));
		loop.setFishingdate(req.getParameter("fishingdate"));
		loop.setPutfrydate(req.getParameter("putfrydate"));
		loop.setNote(req.getParameter("note"));
		
		
		 boolean bln=BreedDAO.insertBreedLoop(loop);
		   if(bln){
			   resp.sendRedirect("../BreedLoopServlet");
			   
		   }
		   else{
			   resp.sendRedirect("../Breed/AddBreedLoop.jsp");
		   }
	}
}
