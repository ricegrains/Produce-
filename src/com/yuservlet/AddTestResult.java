package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.TestPlanDAO;
import com.yuDAO.TestResultDAO;

public class AddTestResult extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			
//		int testresultid=Integer.parseInt(req.getParameter("testresultid"));
		String operationperson=req.getParameter("operationperson");
		String operationtime=req.getParameter("operationtime");
		String result=req.getParameter("result");
		String category=req.getParameter("category");
		String objectname=req.getParameter("objectname");
		int  testsetid=Integer.parseInt(req.getParameter("testsetid"));
		int testIndexID=Integer.parseInt(req.getParameter("testIndexID"));
		int instrumentid=Integer.parseInt(req.getParameter("instrumentid"));
		String note=req.getParameter("note");
		
		
		String sql="insert into testresult values(seq_TestResult.nextval,'"+operationperson+"',"+"to_date"+"('"+operationtime+"'"+",'"+"yy-mm-dd"+"'"+")"+",'"+result+"','"+category+"','"+objectname+"',"+testsetid+","+testIndexID+","+instrumentid+",'"+note+"')";
		
		System.out.println("insert testresult sql="+sql);
		boolean bln= TestResultDAO.insertresult(sql);
		if(bln){
//			String sql2="update testplan set finishedquantity=? where ?=? ";
//			TestPlanDAO.updateplan(sql2);
			System.out.println("检测结果添加成功^_^_^_^_^_^^_^_^");
			resp.sendRedirect("./MainTestResult");
		}else{
			System.out.println("监测结果失败~~~~~~~~~~~~~");
			resp.sendRedirect("testresult/AddTestResult.jsp");
		}
	}
}
