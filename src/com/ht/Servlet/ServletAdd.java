package com.ht.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.PutFryDAO;

public class ServletAdd extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String name = req.getParameter("name");
		
		if(name.equals("addloop")){
			ArrayList list1 = PutFryDAO.findPutFry();
			req.setAttribute("list1", list1);
			
			req.getRequestDispatcher("Breed/AddBreedLoop.jsp").forward(req, resp);
		}else if(name.equals("putfry")){
			ArrayList putfry = PutFryDAO.findPutFry();
			req.setAttribute("putfry", putfry);
			
			req.getRequestDispatcher("Breed/AddWork.jsp").forward(req, resp);
			
		}
		
	}
}
