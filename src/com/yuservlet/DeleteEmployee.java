package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.EmpDAO;

public class DeleteEmployee extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		

		String empid=req.getParameter("empid");
//		System.out.println("delete ="+empid);
		
		boolean bln=EmpDAO.deleteemp(empid);
		if(bln){
			resp.sendRedirect("./MainEmployee");
		}
	}
}
