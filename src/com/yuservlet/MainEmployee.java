package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.EmpDAO;

public class MainEmployee extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
//		String empid=(String) req.getAttribute("empid");
		
//		if(empid.equals("π‹¿Ì‘±")){
			List employee=EmpDAO.findAllinfo();
			req.setAttribute("employee", employee);
			req.getRequestDispatcher("employee/Employeemain.jsp").forward(req, resp);
//		}
//		else{
//			req.setAttribute("n", "n");
//			resp.sendRedirect("frame/main.jsp");	
//		}
		
	}
}
