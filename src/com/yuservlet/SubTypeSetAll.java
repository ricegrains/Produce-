package com.yuservlet;

import java.io.IOException;
import java.io.PrintStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAO;
import com.Subtypeset.subtypesetDAO;
import com.yuDAO.SubDAO;
import com.yuModel.SubtypesetModel;

public class SubTypeSetAll extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String type=req.getParameter("type");
		
		if(type!=null){
			if(type.equals("main")){
				List setlist=SubDAO.findall();
				req.setAttribute("setlist", setlist);
				
				req.getRequestDispatcher("SubTypeSet/Mainindustry.jsp").forward(req, resp);
			}
		}
		if(type.equals("add")){
			
			List setlist=DAO.getAlltype() ;
			req.setAttribute("setlist", setlist);
			
			req.getRequestDispatcher("SubTypeSet/Addindustry.jsp").forward(req, resp);
			
		}
		if(type.equals("addindudtry")){
			String typeid=req.getParameter("typeid");
			String subtypename=req.getParameter("subtypename");
			
			String sql="insert into subtypeset values(seq_SubTypeSet.nextval,'"+typeid+"','"+subtypename+"')";
			System.out.println("产业类型添加 sql="+sql);
			
			boolean bln=SubDAO.insertupdateset(sql);
			
			if(bln){
				resp.sendRedirect("./SubTypeSetAll?type=main");
			}else{
				resp.sendRedirect("SubTypeSet/Addindustry.jsp");
			}
		}
		if(type.equals("update")){
			
			int subtypeid=Integer.parseInt(req.getParameter("subtypeid"));
			
			SubtypesetModel subtypeset= SubDAO.findByid(subtypeid);
			req.setAttribute("subtypeset", subtypeset);
			req.getRequestDispatcher("SubTypeSet/Updateindustry.jsp").forward(req, resp);
			
		}
		if(type.equals("save")){
			int subtypeid=Integer.parseInt(req.getParameter("subtypeid"));
			String typeid=req.getParameter("typeid");
			String subtypename=req.getParameter("subtypename");
			
			String sql="update subtypeset set typeid='"+typeid+"',subtypename='"+subtypename+"' where subtypeid="+subtypeid;
			System.out.println("产业类型修改 sql="+sql);
			
			boolean bln=SubDAO.insertupdateset(sql);
			
			if(bln){
				resp.sendRedirect("./SubTypeSetAll?type=main");
			}else{
				resp.sendRedirect("SubTypeSet/Updateindustry.jsp");
			}
			
		}
		if(type.equals("del")){
			int subtypeid=Integer.parseInt(req.getParameter("subtypeid"));
			boolean bln=SubDAO.delete(subtypeid);
			if(bln){
				resp.sendRedirect("./SubTypeSetAll?type=main");
			}
			
		}
		
	}
}
