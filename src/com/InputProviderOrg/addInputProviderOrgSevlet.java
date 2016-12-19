package com.InputProviderOrg;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addInputProviderOrgSevlet extends HttpServlet
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
	inputProviderOrgModel inputProviderOrg_Model=new inputProviderOrgModel();
	inputProviderOrg_Model.setOrgID(Integer.parseInt(req.getParameter("OrgName18")));
//	System.out.println("orgID"+inputProviderOrg_Model.getOrgID());
	inputProviderOrg_Model.setRecordCode(req.getParameter("RecordCode"));
//	System.out.println("recordCode"+inputProviderOrg_Model.getRecordCode());
	inputProviderOrg_Model.setProduceLicenseID(req.getParameter("ProduceLicenseID"));
	inputProviderOrg_Model.setProduceLicenseExpire(req.getParameter("ProduceLicenseExpire"));
	inputProviderOrg_Model.setProduceLicense(req.getParameter("ProduceLicense"));
	inputProviderOrg_Model.setSellLicenseID(req.getParameter("SellLicenseID"));
	inputProviderOrg_Model.setSellLicenseExpire(req.getParameter("SellLicenseExpire"));
	inputProviderOrg_Model.setSellLicense(req.getParameter("SellLicense"));
	inputProviderOrg_Model.setPesticideLicenseID(req.getParameter("PesticideLicenseID"));
	inputProviderOrg_Model.setPesticideLicenseExpire(req.getParameter("PesticideLicenseExpire"));
	inputProviderOrg_Model.setPesticideLicense(req.getParameter("PesticideLicense"));
	inputProviderOrg_Model.setFileExpire(req.getParameter("FileExpire"));
	inputProviderOrg_Model.setDangerousLicenseID(req.getParameter("DangerousLicenseID"));
	inputProviderOrg_Model.setDangerousLicenseExpire(req.getParameter("DangerousLicenseExpire"));
	inputProviderOrg_Model.setDangerousLicense(req.getParameter("DangerousLicense"));
	inputProviderOrg_Model.setBusinessLicenseID(req.getParameter("BusinessLicenseID"));
	inputProviderOrg_Model.setBusinessLicenseExpire(req.getParameter("BusinessLicenseExpire"));
	inputProviderOrg_Model.setBusinessLicense(req.getParameter("BusinessLicense"));
	inputProviderOrg_Model.setRecordDate(req.getParameter("RecordDate"));
	inputProviderOrg_Model.setSubTypeId(Integer.parseInt(req.getParameter("SubTypeName")));
//	System.out.println("subtypeId"+inputProviderOrg_Model.getSubTypeId());
	inputProviderOrg_Model.setNote(req.getParameter("Note"));
//	System.out.println("note"+inputProviderOrg_Model.getNote());
	boolean bln =inputProviderOrgDAO.saveInputProviderOrg(inputProviderOrg_Model);
	if(bln==true)
	{
		resp.sendRedirect("InputProviderOrg/InputProviderOrg.jsp");
	}
	else
	{
		resp.sendRedirect("");
		
	}
 }
}
