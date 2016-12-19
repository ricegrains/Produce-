package com.Balance;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.InputProviderBuyAndSell.inputProviderBuyAndSellDAO;

public class selectBalanceServlet extends HttpServlet
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
	  	int balanceCount=balanceDAO.selectBalanceCount();//总记录数
	  	int totalPage=(balanceCount)/pageSize+1;
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
	
		
		List balance_List=balanceDAO.findAllBalance(currentlyPageNum);
		req.setAttribute("balance_List",balance_List);
		
		req.setAttribute("totalPage",totalPage);
	  	req.setAttribute("balanceCount",balanceCount);
	  	req.setAttribute("pageSize",pageSize);   
		
		req.getRequestDispatcher("Balance/selectBalance.jsp").forward(req, resp);
	}
}
