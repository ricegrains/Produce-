package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.EmpDAO;
import com.yuModel.EmployeeModel;

public class AddEmployee extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		EmployeeModel emp=new EmployeeModel();
		
		
		emp.setEmpid(req.getParameter("empid"));
		emp.setEmpname(req.getParameter("empname"));
		emp.setEmppassword(req.getParameter("emppassword"));
		emp.setGender(Integer.parseInt(req.getParameter("gender")));
		emp.setDuty(req.getParameter("duty"));
		emp.setTel(req.getParameter("tel"));
		emp.setIdentityid(req.getParameter("identityid"));
		emp.setOrgid(Integer.parseInt(req.getParameter("orgid")));
		emp.setEmpstatus(req.getParameter("empstatus"));
		emp.setNote(req.getParameter("note"));
		
//		System.out.println("add用户");
		String save=req.getParameter("save");
		if(save!=null){
			if(save.equals("提交")){
				boolean blnn=EmpDAO.updateemp(emp);
				if(blnn){
//					System.out.println("修改成功！");
					resp.sendRedirect("./MainEmployee");
				}
				else{
//					System.out.println("悲剧啦！");
					resp.sendRedirect("employee/UpdateEmployee.jsp");
				}
			}
		}
		else{
			boolean bln=EmpDAO.insertemp(emp);
			if(bln){
//				System.out.println("yes~~~~");
				resp.sendRedirect("./MainEmployee");
			}
			else{
//				System.out.println("NO---------");
				resp.sendRedirect("employee/AddEmployee.jsp");
			}
		}
		
		
	}
}
