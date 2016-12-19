package com.Balance;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addBalanceServlet extends HttpServlet
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
		balanceModel balance_Model=new balanceModel();
		balance_Model.setContractID(Integer.parseInt(req.getParameter("ContractID")));
		balance_Model.setSalesMoney(Integer.parseInt(req.getParameter("SalesMoney")));
		balance_Model.setGetInputMoney(Integer.parseInt(req.getParameter("GetInputMoney")));
		balance_Model.setNote(req.getParameter("Note"));
		boolean bln=balanceDAO.saveBalance(balance_Model);
		if(bln==true)
		{
			resp.sendRedirect("Balance/addBalance.jsp");
		}
		else
		{
			resp.sendRedirect("");
		}
	}
}
