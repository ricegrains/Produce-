package com.yuservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.InstrumentDAO;
import com.yuModel.InstrumentModel;

public class AddInstrument extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
		
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
//		int instrumentid =Integer.parseInt(req.getParameter("instrumentid"));
		String instrumentname=req.getParameter("instrumentname");
		String type=req.getParameter("type");
		String price=req.getParameter("price");
		String vendorname=req.getParameter("vendorname");
		String purchaseddate=req.getParameter("purchaseddate");
		String custodian=req.getParameter("custodian");
		String note =req.getParameter("note");
		
		String save=req.getParameter("save");
		if(save!=null){
			if(save.equals("确定")){
				int instrumentid =Integer.parseInt(req.getParameter("instrumentid"));
				InstrumentModel instrument =new InstrumentModel();

				String sql2="update instrument set instrumentname='"+instrumentname+"',type='"+type+"',price='"+price+"',vendorname='"+vendorname+"',purchaseddate=to_date"+"('"+purchaseddate+"'"+",'"+"yy-dd-mm"+"'"+")"+",custodian='"+custodian+"',note='"+note+"' where instrumentid="+instrumentid;
				System.out.println("update instrument sql2="+sql2);
				boolean bln=InstrumentDAO.updateins(sql2);
				if(bln){
					System.out.println("修改Instrument成功！");
					resp.sendRedirect("./MainInstrument");
				}
				else{
					System.out.println("修改Instrument失败！");
					resp.sendRedirect("instrument/UpdateInstrument.jsp");
				}
			}
		}
		else{
			String sql="insert into instrument values(seq_instrument.nextval,'"+instrumentname+"','"+type+"','"+price+"','"+vendorname+"'," +"to_date"+"('"+purchaseddate+"'"+",'"+"yy-dd-mm"+"'"+")"+",'"+custodian+"','"+note+"')";
			System.out.println("insert into instrument sql="+sql);
			boolean bln=InstrumentDAO.insertinstrument(sql);
			if(bln){
				resp.sendRedirect("./MainInstrument");
			}
			else {
				resp.sendRedirect("testplan/AddTestPlant.jsp");
			}
			
		}
		
		
	}
}
