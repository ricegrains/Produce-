package com.Alarm;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addAlarmServlet  extends HttpServlet
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
		alarmModel alarm_Model=new alarmModel();
	    DateFormat date=new SimpleDateFormat("yyyy-MM-dd");
		alarm_Model.setInputProviderOrgID(Integer.parseInt(req.getParameter("OrgName3")));
		alarm_Model.setReasonContent(req.getParameter("reasonContent"));
		alarm_Model.setAlarmTime(date.format(new Date()));
		alarm_Model.setProduceOrg(req.getParameter("produceOrg"));
		alarm_Model.setNote(req.getParameter("note"));
		boolean bln=alarmDAO.saveAlarm(alarm_Model);
		if(bln==true)
		{
			resp.sendRedirect("Alarm/Alarm.jsp");
		}
		else
		{
			resp.sendRedirect("Alarm/Alarm.jsp");
		}
	}
}
