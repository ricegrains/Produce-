package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.PutFryDAO;
import com.ht.Model.PutFryModel;

public class PutFryUpdateServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
System.out.println("进口韩国的罚款和管理看过");		
		int putfryid=Integer.parseInt(req.getParameter("putfry"));

		
  	  PutFryModel putfry=PutFryDAO.findPutFry(putfryid);
  	  
  	  req.setAttribute("List",putfry);
  	  
  	  req.getRequestDispatcher("Breed/PutFryUpdate.jsp").forward(req, resp);
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PutFryModel putfry=new PutFryModel();
  	
  	
		putfry.setContractsignplotsid(Integer.parseInt(req.getParameter("contractsignplotsid")));
		putfry.setFishingdate(req.getParameter("fishingdate"));
		putfry.setObjectid(Integer.parseInt(req.getParameter("objectid")));
		putfry.setPutfrydate(req.getParameter("putfrydate"));
		putfry.setQuantity(req.getParameter("quantity"));
		putfry.setType(req.getParameter("type"));
		putfry.setWeight(req.getParameter("weight"));
		putfry.setComefrom(req.getParameter("comefrom"));
		putfry.setQuarantine(Integer.parseInt(req.getParameter("quarantine")));
		putfry.setNote(req.getParameter("note"));
		putfry.setPutfryid(Integer.parseInt(req.getParameter("putfryid")));
  	
  	boolean bln=PutFryDAO.updatePutFry(putfry);
  	if(bln){
  	    resp.sendRedirect("PutFryServlet");	
  	}
  	else{
  		resp.sendRedirect("Breed/PutFryUpdate.jsp");
  	}
  	
		
	}
}
