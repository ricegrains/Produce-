package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.InstrumentDAO;

public class MainInstrument extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		List mainlist=InstrumentDAO.findinstrument();
		req.setAttribute("mainlist", mainlist);
		
//		req.getRequestDispatcher(arg0)
		req.getRequestDispatcher("instrument/MainInstrument.jsp").forward(req, resp);
		
	}
}
