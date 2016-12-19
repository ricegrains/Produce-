package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAO;
import com.yuDAO.SubDAO;
import com.yuDAO.TestPlanDAO;
import com.yuModel.TestPlanModel;

public class UpdateTestPlan extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int testplanid=Integer.parseInt(req.getParameter("testplanid"));
		
		TestPlanModel plan = TestPlanDAO.findpalnByid(testplanid);
		req.setAttribute("plan", plan);
		
		List orgtypelist=DAO.getAllOrgType();
    	req.setAttribute("orgtypelist", orgtypelist);
    	
    	List subtypelist=SubDAO.findpalninfo();
    	req.setAttribute("subtypelist", subtypelist);
		
		req.getRequestDispatcher("testplan/UpdateTestPlan.jsp").forward(req, resp);
	}

}
