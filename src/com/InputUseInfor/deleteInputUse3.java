package com.InputUseInfor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteInputUse3  extends HttpServlet
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
	    int InputUseInforID=Integer.parseInt(req.getParameter("InputUseInforID"));
	    boolean bln=inputUserInforDAO.deleteInputUse(InputUseInforID);
	    if(bln==true)
	    {
	    	resp.sendRedirect("selectAllInputUseServelt3");
	    }
	    else
	    {
	    	System.out.println("Error");
	    }
	}
}
