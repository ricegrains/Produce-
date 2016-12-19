package com.Balance;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteBalanceServle  extends HttpServlet
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
		int BalanceID=Integer.parseInt(req.getParameter("BalanceID"));
		boolean bln=balanceDAO.deleteBalance(BalanceID);
		if(bln==true)
		{
			resp.sendRedirect("selectBalanceServlet");
		}
		else
		{
			System.out.println("Error");
		}
	}
}
