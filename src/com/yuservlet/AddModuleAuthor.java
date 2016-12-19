package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ModulesAuthorizationDAO;
import com.yuModel.ModuleAuthorizationModel;

public class AddModuleAuthor extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
//		System.out.println("进入  servlet");
	ModuleAuthorizationModel author=new ModuleAuthorizationModel();
	
	author.setUserid(req.getParameter("userid"));
	author.setModuleid(req.getParameter("moduleid"));
	author.setNote(req.getParameter("note"));
	
	String save=req.getParameter("save");
	System.out.println("用户id="+req.getParameter("userid"));

	if(save!=null){
		if(save.equals("修改")){
			boolean boo=ModulesAuthorizationDAO.updatemoduleauthor(author);
			if(boo){
				System.out.println("修改模块成功！");
				resp.sendRedirect("./MainModuleAuthor");
			}
			else{
				System.out.println("修改模块失败！");
				resp.sendRedirect("moduleAuthorization/UpdatemoduleAuthorization.jsp");
			}
		}
	}
	else{
		boolean bln=ModulesAuthorizationDAO.insertmoduleauthor(author);
		if(bln){
			System.out.println("添加模块成功^_^_^_^_^");
			resp.sendRedirect("./MainModuleAuthor");
		}
		else{
			System.out.println("添加模块失败~~~~~~~~~~~~");
			resp.sendRedirect("moduleAuthorization/AddmoduleAuthorization.jsp");
		}
	}
	}
}
