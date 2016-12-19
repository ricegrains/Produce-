package com.Alarm;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteAlarm  extends HttpServlet
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
    	int AlarmID=Integer.parseInt(req.getParameter("AlarmID"));
    	boolean bln=alarmDAO.deleteAlarm(AlarmID);
    	if(bln==true)
    	{
    		resp.sendRedirect("selectAllAlarmServelt");
    	}
    	else
    	{
    		System.out.println("Error");
    	}
    }
}
