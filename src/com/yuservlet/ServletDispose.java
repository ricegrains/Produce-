package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAO;
import com.TestIndex.testIndexDAO;
import com.yuDAO.EmpDAO;
import com.yuDAO.InstrumentDAO;
import com.yuDAO.ModulesDAO;
import com.yuDAO.ObjectsDAO;
import com.yuDAO.SubDAO;

public class ServletDispose extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String pass=req.getParameter("pass");

		if(pass.equals("author")){
			List emplist=EmpDAO.findAllinfo();
			req.setAttribute("emplist", emplist);
			
			List modlist= ModulesDAO.findallinfo();
			req.setAttribute("modlist", modlist);
			
			req.getRequestDispatcher("moduleAuthorization/AddmoduleAuthorization.jsp").forward(req, resp);
		}
	    if(pass.equals("objects")){
			List sublist=SubDAO.findobjectinfo();
			req.setAttribute("sublist", sublist);
			req.getRequestDispatcher("objects/AddObjects.jsp").forward(req, resp);
		}
	    if(pass.equals("plan")){
	    	List orgtypelist=DAO.getAllOrgType();
	    	req.setAttribute("orgtypelist", orgtypelist);
	    	
	    	List subtypelist=SubDAO.findpalninfo();
	    	req.setAttribute("subtypelist", subtypelist);
	    	
	    	req.getRequestDispatcher("testplan/AddTestPlant.jsp").forward(req, resp);
	    }
	    
	    if(pass.equals("result")){
	    	List objectlist=ObjectsDAO.findallobjects();
	    	req.setAttribute("objectlist", objectlist);
	    	
	    	List subtypesetlist=SubDAO.findpalninfo();
	    	req.setAttribute("subtypesetlist", subtypesetlist);
	    	
	    	List indexlist=testIndexDAO.findallindex();
	    	req.setAttribute("indexlist", indexlist);
	    	
	    	
	    	List instrumentlist=InstrumentDAO.findinstrument();
	    	req.setAttribute("instrumentlist", instrumentlist);
	    	
	    	req.getRequestDispatcher("testresult/AddTestResult.jsp").forward(req, resp);
	    }
	   
	}
}
