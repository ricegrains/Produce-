package com.InputProviderOrg;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Reports.ReportsDAO;

public class selectInputProviderOrgServelt extends HttpServlet
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
    	    int pageSize=6;//ÿҳ�ļ�¼��
    	  	int currentlyPageNum=0;//��ǰҳ��Ϊ0
    	  	int inputProviderOrgCount=inputProviderOrgDAO.selectInputProviderOrgCount();//�ܼ�¼��
    	  	int totalPage=(inputProviderOrgCount)/pageSize+1;
    	  	String pageNo=req.getParameter("currentlyPageNum");
    	  	if(pageNo==null||("").equals(pageNo))
    	  	{
    	  		pageNo="1";
    	  	}
    	  	currentlyPageNum=Integer.parseInt(pageNo);
    	  	if(currentlyPageNum<1)
    	  	{
    	  		currentlyPageNum=1;
    	  	}
    	  	else if(currentlyPageNum>totalPage)
    	  	{
    	  		currentlyPageNum=1;
    	  	}
    	
    	List inputProviderOrg_List=inputProviderOrgDAO.findProduceOrgID(currentlyPageNum);
    	req.setAttribute("inputProviderOrg_List",inputProviderOrg_List);
    	
    	  req.setAttribute("currentlyPageNum",currentlyPageNum);
    	  req.setAttribute("totalPage",totalPage);
    	  req.setAttribute("inputProviderOrgCount",inputProviderOrgCount);
    	  req.setAttribute("pageSize",pageSize);   
    	
    	req.getRequestDispatcher("InputProviderOrg/selectInputProviderOrg.jsp").forward(req, resp);
    }
}
