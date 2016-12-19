package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ObjectsDAO;
import com.yuModel.ObjectsModel;

public class AddObjects extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	ObjectsModel object=new ObjectsModel();
	
	
	String objectname=req.getParameter("objectname");
	int subtypeid=Integer.parseInt(req.getParameter("subtypeid"));
	
	
	String save=req.getParameter("save");

	if(save!=null){
		int objectid=Integer.parseInt(req.getParameter("objectid"));
//		object.setObjectid(Integer.parseInt(req.getParameter("objectid")));
//		object.setObjectname(req.getParameter("objectname"));
//		object.setSubtypeid(Integer.parseInt(req.getParameter("subtypeid")));
		String sql="update objects set objectname='"+objectname+"',subtypeid="+subtypeid+" where objectid="+objectid+"";
		System.out.println("update object sql="+sql);
		
		if(save.equals("修改")){
			boolean boo=ObjectsDAO.updateobj(sql);
			if(boo){
				System.out.println("修改农产品成功！");
				resp.sendRedirect("./MainObjects");
			}
			else{
				System.out.println("修改农产品失败！");
				resp.sendRedirect("objects/UpdateObjects.jsp");
			}
		}
	}
	else{
		
		String sql="insert into objects values(seq_Objects.nextval,'"+objectname+"',"+subtypeid+")";
		System.out.println("insert objects sql="+sql);
		boolean bln=ObjectsDAO.insertobj(sql);
		if(bln){
			System.out.println("添加农产品成功^_^_^_^_^");
			resp.sendRedirect("./MainObjects");
		}
		else{
			System.out.println("添加农产品失败~~~~~~~~~~~~");
			resp.sendRedirect("objects/AddObjects.jsp");
		}
	}
	
		
	}
}
