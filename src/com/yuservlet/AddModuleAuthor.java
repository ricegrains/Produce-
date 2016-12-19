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
		
//		System.out.println("����  servlet");
	ModuleAuthorizationModel author=new ModuleAuthorizationModel();
	
	author.setUserid(req.getParameter("userid"));
	author.setModuleid(req.getParameter("moduleid"));
	author.setNote(req.getParameter("note"));
	
	String save=req.getParameter("save");
	System.out.println("�û�id="+req.getParameter("userid"));

	if(save!=null){
		if(save.equals("�޸�")){
			boolean boo=ModulesAuthorizationDAO.updatemoduleauthor(author);
			if(boo){
				System.out.println("�޸�ģ��ɹ���");
				resp.sendRedirect("./MainModuleAuthor");
			}
			else{
				System.out.println("�޸�ģ��ʧ�ܣ�");
				resp.sendRedirect("moduleAuthorization/UpdatemoduleAuthorization.jsp");
			}
		}
	}
	else{
		boolean bln=ModulesAuthorizationDAO.insertmoduleauthor(author);
		if(bln){
			System.out.println("���ģ��ɹ�^_^_^_^_^");
			resp.sendRedirect("./MainModuleAuthor");
		}
		else{
			System.out.println("���ģ��ʧ��~~~~~~~~~~~~");
			resp.sendRedirect("moduleAuthorization/AddmoduleAuthorization.jsp");
		}
	}
	}
}
