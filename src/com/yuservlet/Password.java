package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.EmpDAO;
import com.yuModel.EmployeeModel;

public class Password extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		EmployeeModel emp=new EmployeeModel();
		
		emp.setEmpid(req.getParameter("EmpID"));
		emp.setEmppassword(req.getParameter("EmpPassWord"));
		
		System.out.println("用户帐号="+req.getParameter("EmpID"));
		System.out.println("用户密码="+req.getParameter("EmpPassWord"));
		boolean bln=EmpDAO.updatepwd(emp);
		if(bln){
			System.out.println("成功^_^_^_^_^");
    	    resp.sendRedirect("./MainEmployee");	
    	}
    	else{
    		System.out.println("失败~~~~~~");
    		resp.sendRedirect("employee/Password.jsp");
    	}
	}
}
