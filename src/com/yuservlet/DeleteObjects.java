package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ObjectsDAO;

public class DeleteObjects extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int objectid=Integer.parseInt(req.getParameter("objectid"));
		
		
		boolean bln=ObjectsDAO.deleteobj(objectid);
		if(bln){
			resp.sendRedirect("./MainObjects");
		}
	}
}
