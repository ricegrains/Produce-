package com.ht.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.PutFryDAO;


public class PutFryServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		ArrayList putfry = PutFryDAO.findPutFry();
System.out.println(putfry);		
		req.setAttribute("list", putfry);
		req.getRequestDispatcher("Breed/PutFry.jsp").forward(req, resp);
		
	}
}
