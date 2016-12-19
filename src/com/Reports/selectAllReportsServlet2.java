package com.Reports;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class selectAllReportsServlet2 extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      
      int pageSize=6;//每页的记录数
    	int currentlyPageNum=0;//当前页数为0
    	int reportsCount=ReportsDAO.selectReportsCount();//总记录数
    	int totalPage=(reportsCount)/pageSize+1;
    	String pageNo=req.getParameter("currentlyPageNum");
    	if(pageNo==null||("").equals(pageNo))
    	{
    		pageNo="1";
    	}
    	currentlyPageNum=Integer.parseInt(pageNo);
    	if(currentlyPageNum<1)
    	{
    		currentlyPageNum=1;
    	}
    	else if(currentlyPageNum>totalPage)
    	{
    		currentlyPageNum=1;
    	}
      
      List reports_List=ReportsDAO.findAllReports2(currentlyPageNum);
      req.setAttribute("reports_List",reports_List);
      
      req.setAttribute("currentlyPageNum",currentlyPageNum);
    	req.setAttribute("totalPage",totalPage);
    	req.setAttribute("reportsCount",reportsCount);
    	req.setAttribute("pageSize",pageSize);   
      
      req.getRequestDispatcher("Sell/selectAllReports2.jsp").forward(req, resp);
    }
}
