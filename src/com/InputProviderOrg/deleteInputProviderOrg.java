package com.InputProviderOrg;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteInputProviderOrg  extends HttpServlet
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
	 int InputProviderOrgID=Integer.parseInt(req.getParameter("InputProviderOrgID"));
	 boolean bln=inputProviderOrgDAO.deleteInput(InputProviderOrgID);
	 if(bln==true)
	 {
		 resp.sendRedirect("selectInputProviderOrgServelt");
	 }
	 else
	 {
		 System.out.println("Error");
	 }
	}
}
