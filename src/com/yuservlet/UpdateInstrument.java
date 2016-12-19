package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.InstrumentDAO;
import com.yuModel.InstrumentModel;

public class UpdateInstrument extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		int instrumentid =Integer.parseInt(req.getParameter("instrumentid"));
		
		System.out.println(" updateisntrument servlet instrumentid="+instrumentid);
		
		InstrumentModel instrument= InstrumentDAO.findinsById(instrumentid);
		req.setAttribute("instrument", instrument);
		
		System.out.println("instrumentlsit="+instrument);
	
		resp.sendRedirect("instrument/UpdateInstrument.jsp");
	 
	}
}
