package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAO;
import com.yuModel.EmployeeModel;
public class LoginCheck extends HttpServlet{
	 protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	    doPost(req,resp);
}
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
//	  req.setCharacterEncoding("UTF-8");
//      resp.setContentType("text/html;charset=UTF-8");
	  boolean bln=false;

	  String empid=req.getParameter("empid");
	  String pwd=req.getParameter("password");
	 
	  
	  req.getSession().setAttribute("empid",empid);
	  req.getSession().setAttribute("pwd",pwd);
	
	  List<EmployeeModel> user =DAO.getUserInfo();
	  EmployeeModel users=(EmployeeModel) DAO.getUsersInfo(empid);
	 
	  
	 
	  req.getSession().setAttribute("empInfo", users);
	  for (int i=0; i<user.size(); i++) {
		
		  EmployeeModel uname=user.get(i);
			if(uname.getEmpid().equals(empid) && uname.getEmppassword().equals(pwd)){
				bln=true;
				break;
			}
	  }
	  System.out.println(bln);
		if(bln){
		   req.setAttribute("guanli", "guanli");
	       resp.sendRedirect("frame/main.jsp");
			
		}
		else{
			resp.getWriter().println("<B>"+"µÇÂ¼Ê§°Ü£¬ÕýÔÚÌø×ª¡£¡£¡£¡£¡£"+"<B>");
			resp.setHeader("refresh", "3;url=Login.jsp");
		}
     }
}
