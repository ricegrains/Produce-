package com.ht.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.LookLogDAO;

public class LookLogServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		ArrayList log = LookLogDAO.findLookLog();
System.out.println(log);		
		req.setAttribute("list", log);
		req.getRequestDispatcher("Breed/LookLog.jsp").forward(req, resp);
		
	}
}
