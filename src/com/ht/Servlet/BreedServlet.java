package com.ht.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.DAO.BreedDAO;

public class BreedServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

System.out.println("½øÀ´ÁË£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡");
		
		ArrayList breed = BreedDAO.findBreed();
System.out.println(breed);		
		req.setAttribute("list", breed);
		req.getRequestDispatcher("Breed/BreedInfo.jsp").forward(req, resp);
	}
}
