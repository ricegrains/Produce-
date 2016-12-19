package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ModulesDAO;
import com.yuModel.ModuleModel;

public class AddModule extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
//		System.out.println("����  servlet");
	ModuleModel module=new ModuleModel();
	
	module.setModuleid(req.getParameter("moduleid"));
	module.setModulename(req.getParameter("modulename"));
	module.setNote(req.getParameter("note"));
	
	String save=req.getParameter("save");
	
	if(save!=null){
		if(save.equals("�޸�")){
			boolean boo=ModulesDAO.updatmodule(module);
			if(boo){
				System.out.println("�޸�ģ��ɹ���");
				resp.sendRedirect("./MainMoudle");
			}
			else{
				System.out.println("�޸�ģ��ʧ�ܣ�");
				resp.sendRedirect("modules/Updatemodule.jsp");
			}
		}
	}
	else{
		boolean bln=ModulesDAO.insertmodule(module);
		if(bln){
			System.out.println("���ģ��ɹ�^_^_^_^_^");
			resp.sendRedirect("./MainModule");
		}
		else{
			System.out.println("���ģ��ʧ��~~~~~~~~~~~~");
			resp.sendRedirect("modules/Addmodule.jsp");
		}
	}
	
		
	}
}
