package com.InputProviderBuyAndSell;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteInputProviderBuy extends HttpServlet
{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	doPost(req, resp);
   }
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int BuyAndSellID=Integer.parseInt(req.getParameter("BuyAndSellID"));
		boolean bln=inputProviderBuyAndSellDAO.deleteInput(BuyAndSellID);
		if(bln==true)
		{
			resp.sendRedirect("selectInputProviderBuyServelt");
		}
		else
		{
			System.out.println("Error");
		}
	}
}
