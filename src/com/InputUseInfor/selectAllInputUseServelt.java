package com.InputUseInfor;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.InputProviderBuyAndSell.inputProviderBuyAndSellDAO;

public class selectAllInputUseServelt extends HttpServlet
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
    	
    	 int pageSize=6;//每页的记录数
		  	int currentlyPageNum=0;//当前页数为0
		  	int inputUseInforCount=inputUserInforDAO.selectInputUseInforCount();//总记录数
		  	int totalPage=(inputUseInforCount)/pageSize+1;
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
    	
    	List inputUserInfor_List=inputUserInforDAO.findAllInputUse(currentlyPageNum);
    	req.setAttribute("inputUserInfor_List",inputUserInfor_List);
    	
    	req.setAttribute("currentlyPageNum",currentlyPageNum);
	  	req.setAttribute("totalPage",totalPage);
	  	req.setAttribute("inputUseInforCount",inputUseInforCount);
	  	req.setAttribute("pageSize",pageSize);   
    	
    	req.getRequestDispatcher("InputUseInfor/selectAllInputUse.jsp").forward(req, resp);
    }
}
