package com.TestIndex;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addTestIndexServelt extends HttpServlet
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
    	testIndexModel testIndex_Model=new testIndexModel();
    	testIndex_Model.setSubTypeID(Integer.parseInt(req.getParameter("SubTypeName")));
    	testIndex_Model.setTestIndexName(req.getParameter("TestIndexName"));
    	testIndex_Model.setCriterion(req.getParameter("Criterion"));
    	testIndex_Model.setNote(req.getParameter("Note"));
    	boolean bln=testIndexDAO.saveTextIndex(testIndex_Model);
    	if(bln==true)
    	{
    		resp.sendRedirect("TestIndex/addTestIndex.jsp");
    	}
    	else
    	{
    		resp.sendRedirect("");
    	}
    }
}
