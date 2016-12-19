package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.BreedDAO;
import com.ht.Model.BreedModel;

public class BreedAddServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		BreedModel breed = new BreedModel();

System.out.println("--------"+req.getAttribute("contractsignplotsid"));
//		breed.setPondID(Integer.parseInt(req.getParameter("pondID")));
		breed.setContractsignplotsid(Integer.parseInt(req.getParameter("contractsignplotsid")));
System.out.println("contractsignplotsid£º"+req.getParameter("contractsignplotsid"));
		breed.setWatercharacterize(req.getParameter("watercharacterize"));
		breed.setNote(req.getParameter("note"));
		
		 boolean bln=BreedDAO.insertBreed(breed);
		   if(bln){
			   resp.sendRedirect("../BreedServlet");
			   
		   }
		   else{
			   resp.sendRedirect("../Breed/AddBreedInfo.jsp");
		   }
	}
}
