package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ObjectsDAO;
import com.yuDAO.SubDAO;
import com.yuModel.ObjectsModel;

public class UpdateObjects extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		int objectid=Integer.parseInt(req.getParameter("objectid"));
		System.out.println("update servlet objectid="+objectid);
		
		ObjectsModel objectlist=ObjectsDAO.findById(objectid);
		req.setAttribute("objectlist", objectlist);
		System.out.println(objectlist);
		
		List sublist=SubDAO.findobjectinfo();
		req.setAttribute("sublist", sublist);
		
		
//		resp.sendRedirect("objects/UpdateObjects.jsp") ;
		
		req.getRequestDispatcher("objects/UpdateObjects.jsp").forward(req, resp);
		
	}
}
