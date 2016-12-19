package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.BreedDAO;
import com.ht.Model.BreedModel;

public class BreedUpdateServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
System.out.println("进口韩国的罚款和管理看过");		
		int pondid=Integer.parseInt(req.getParameter("pondid"));

		
  	  BreedModel breed=BreedDAO.findPondId(pondid);
  	  
  	  req.setAttribute("List",breed);
  	  
  	  req.getRequestDispatcher("Breed/BreedUpdate.jsp").forward(req, resp);
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		BreedModel breed=new BreedModel();
  	
  	
		breed.setContractsignplotsid(Integer.parseInt(req.getParameter("contractsignplotsid")));
		breed.setWatercharacterize(req.getParameter("watercharacterize"));
		breed.setNote(req.getParameter("note"));
		breed.setPondid(Integer.parseInt(req.getParameter("pondid")));
  	
  	boolean bln=BreedDAO.updateBreed(breed);
  	if(bln){
  	    resp.sendRedirect("BreedServlet");	
  	}
  	else{
  		resp.sendRedirect("Breed/BreedUpdate.jsp");
  	}
  	
		
	}
}
