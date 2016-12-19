package com.InputProviderBuyAndSell;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addInputProviderBuyAndSell extends HttpServlet
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
    	inputProviderBuyAndSellModel  inputProviderBuyAndSell_Model=new inputProviderBuyAndSellModel();
    	inputProviderBuyAndSell_Model.setOrgID(Integer.parseInt(req.getParameter("OrgName")));
    	inputProviderBuyAndSell_Model.setYear(Integer.parseInt(req.getParameter("Year")));
    	inputProviderBuyAndSell_Model.setSubTypeID(Integer.parseInt(req.getParameter("SubTypeName")));
    	inputProviderBuyAndSell_Model.setBuy(req.getParameter("Buy"));
    	inputProviderBuyAndSell_Model.setSell(req.getParameter("Sell"));
    	inputProviderBuyAndSell_Model.setNote(req.getParameter("Note"));
    	boolean bln=inputProviderBuyAndSellDAO.saveInputProviderBuyAndSell(inputProviderBuyAndSell_Model);
    	if(bln==true)
    	{
    		resp.sendRedirect("InputProviderBuyAndSell/addInputProviderBuyAndSell.jsp");
    	}
    	else
    	{
    		resp.sendRedirect("");
    	}
    }
}
