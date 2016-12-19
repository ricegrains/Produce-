package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.BreedDAO;
import com.ht.Model.CultivateRotationsModel;

public class BreedLoopUpdateServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
System.out.println("���ں����ķ���͹�����");		
		int cultivaterotationid =Integer.parseInt(req.getParameter("cultivaterotationid"));

		
		CultivateRotationsModel loop=BreedDAO.findCultivateRotationID(cultivaterotationid);
  	  
  	  req.setAttribute("List",loop);
  	  
  	  req.getRequestDispatcher("Breed/BreedLoopUpdate.jsp").forward(req, resp);
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		CultivateRotationsModel loop=new CultivateRotationsModel();
  	
  	
		loop.setContractsignplotsid(Integer.parseInt(req.getParameter("contractsignplotsid")));
		loop.setFishingdate(req.getParameter("fishingdate"));
		loop.setPutfrydate(req.getParameter("putfrydate"));
		loop.setNote(req.getParameter("note"));
		loop.setCultivaterotationid(Integer.parseInt(req.getParameter("cultivaterotationid")));
  	
  	boolean bln=BreedDAO.updateBreedLoop(loop);
  	if(bln){
  	    resp.sendRedirect("BreedLoopServlet");	
  	}
  	else{
  		resp.sendRedirect("Breed/BreedLoopUpdate.jsp");
  	}
  	
		
	}
}
