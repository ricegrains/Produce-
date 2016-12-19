package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.TestPlanDAO;

public class AddTestPlan extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			

		int issueorgid=Integer.parseInt(req.getParameter("issueorgid"));
		int executionorgid=Integer.parseInt(req.getParameter("executionorgid"));
		String issuedate=req.getParameter("issuedate");
		String schedulefinishdate=req.getParameter("schedulefinishdate");
		int assignlevel=Integer.parseInt(req.getParameter("assignlevel"));
		int planquantity=Integer.parseInt(req.getParameter("planquantity"));
		int finishedquantity=Integer.parseInt(req.getParameter("finishedquantity"));
		int passamount=Integer.parseInt(req.getParameter("passamount"));
		String passppercentage=req.getParameter("passppercentage");
		String note=req.getParameter("note");
		
		
		String save=req.getParameter("save");
		if(save!=null){
			if(save.equals("确定")){
				int testplanid=Integer.parseInt(req.getParameter("testplanid"));
				
				String sql="update testplan set issueorgid="+issueorgid+",executionorgid="+executionorgid+" " +
					  ",issuedate="+"to_date"+"('"+issuedate+"'"+",'"+"yy-mm-dd"+"'"+")"+"," 
					  +"schedulefinishdate="+"to_date"+"('"+schedulefinishdate+"'"+"," +"'"+"yy-mm-dd"+"'"+")"+","+
					  		"assignlevel="+assignlevel+",planquantity="+planquantity+",finishedquantity="+finishedquantity+",passamount="+passamount+",passppercentage='"+passppercentage+"',note='"+note+"' where testplanid="+testplanid;
			System.out.println("updateplan sql="+sql);
			
			boolean bln= TestPlanDAO.updateplan(sql);
				if(bln){
					System.out.println("检测计划修改成功！");
					resp.sendRedirect("./MainTestPlan");
				}else{
					System.out.println("检测计划修改失败！");
					resp.sendRedirect("testplan/UpdateTestPlan.jsp");
				}
			}
		}
		else{
			
			
			String sql="insert into testplan values(seq_TestPlan.nextval,"+issueorgid+","+executionorgid+"," +
		    ""+"to_date"+"('"+issuedate+"'"+",'"+"yy-mm-dd"+"'"+")"+"," +""+"to_date"+"('"+schedulefinishdate+"'"+"," +"'"+"yy-mm-dd"+"'"+")"+"," +
		    " "+assignlevel+","+planquantity+","+finishedquantity+","+passamount+",'"+passppercentage+"','"+note+"')";
		
			System.out.println("insert testplan sql="+sql);
			boolean bln= TestPlanDAO.insertplan(sql);
			if(bln){
				System.out.println("检测计划成功添加");
				resp.sendRedirect("./MainTestPlan");
			}
			else{
				System.out.println("检测计划添加失败了！");
				resp.sendRedirect("testplan/AddTestPlant.jsp");
			}
		}
	}
}
