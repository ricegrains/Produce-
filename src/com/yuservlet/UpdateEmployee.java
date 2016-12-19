package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.EmpDAO;
import com.yuModel.EmployeeModel;

public class UpdateEmployee extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String empid=req.getParameter("empid");
		System.out.println("updateemp empid="+empid);
		EmployeeModel emp=EmpDAO.findAllinfoByid(empid);
		req.setAttribute("emp", emp);
		
		req.getRequestDispatcher("employee/UpdateEmployee.jsp").forward(req, resp);
		
	}
}
