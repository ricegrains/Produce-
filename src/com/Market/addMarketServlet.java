package com.Market;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addMarketServlet extends HttpServlet
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
    	marketModel market_Model=new marketModel();
    	market_Model.setMarketName(req.getParameter("MarketName"));
    	market_Model.setLocation(req.getParameter("Location"));
    	market_Model.setOrgID(Integer.parseInt(req.getParameter("OrgID")));
    	market_Model.setNote(req.getParameter("Note"));
    	boolean bln=marketDAO.saveMarket(market_Model);
    	if(bln==true)
    	{
    		resp.sendRedirect("Sell/MarKet.jsp");
    	}
    	else
    	{
    		resp.sendRedirect("");
    	}
    }
}
