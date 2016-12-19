package com.Market;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteMarket extends HttpServlet
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
    	int MarketID=Integer.parseInt(req.getParameter("MarketID"));
    	boolean bln=marketDAO.deleteMarket(MarketID);
    	if(bln==true)
    	{
    		resp.sendRedirect("selectAllMarket");
    	}
    	else
    	{
    		System.out.println("Error");
    	}
    }
}
