package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.BreedDAO;

public class BreedDeleteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int pondid=Integer.parseInt(req.getParameter("pondid"));
System.out.println("++++++++++"+pondid);		
    	BreedDAO.deletePondID(pondid);
    	 
    	resp.sendRedirect("BreedServlet");
		
	}
}
