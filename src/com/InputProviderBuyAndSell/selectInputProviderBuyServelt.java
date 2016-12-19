package com.InputProviderBuyAndSell;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class selectInputProviderBuyServelt extends HttpServlet
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
		  	int inputProviderBuyAndSellCount=inputProviderBuyAndSellDAO.selectInputProviderBuyAndSellCount();//总记录数
		  	int totalPage=(inputProviderBuyAndSellCount)/pageSize+1;
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
		
		List inputProviderBuyAndSell_List=inputProviderBuyAndSellDAO.findAllinput(currentlyPageNum);
		req.setAttribute("inputProviderBuyAndSell_List",inputProviderBuyAndSell_List);
		
		req.setAttribute("currentlyPageNum",currentlyPageNum);
	  	req.setAttribute("totalPage",totalPage);
	  	req.setAttribute("inputProviderBuyAndSellCount",inputProviderBuyAndSellCount);
	  	req.setAttribute("pageSize",pageSize);   
		
		req.getRequestDispatcher("InputProviderBuyAndSell/selectInputProviderBuy.jsp").forward(req, resp);
	}
}
