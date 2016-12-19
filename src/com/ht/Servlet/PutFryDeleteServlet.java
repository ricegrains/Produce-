package com.ht.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.PutFryDAO;


public class PutFryDeleteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int putfryid=Integer.parseInt(req.getParameter("putfryid"));
System.out.println("++++++++++"+putfryid);		
    	PutFryDAO.deletePutFryID(putfryid);
    	 
    	resp.sendRedirect("PutFryServlet");
		
	}
}
