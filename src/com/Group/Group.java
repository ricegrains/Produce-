package com.Group;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAO;
import com.Model.Contract;
import com.Model.Contractors;
import com.Model.Firmland;
import com.Model.Plantlogs;
import com.Model.Plantoperations;
import com.Model.Plotrotations;

public class Group extends HttpServlet{
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	doPost(req, resp);
    }
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	String method=req.getParameter("method");
    	List consign=DAO.getAllsign();
    	List growfirm=DAO.getAllgrow();
    	List sub=DAO.getsubtype();
    	
    	req.getSession().setAttribute("sub", sub);
		req.getSession().setAttribute("growfirm", growfirm);
    	req.getSession().setAttribute("consign", consign);
    	/**
    	 * 
    	 * 种植信息
    	 */
    	if(method.equals("zonzixinxi")){
    		List plotro=DAO.getAllsign();
    		req.getSession().setAttribute("plotro", plotro);
    		
    		List ob=DAO.getObject();
    		req.getSession().setAttribute("ob", ob);
    		
    		List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		req.getSession().setAttribute("suoyou", "3");
    		req.setAttribute("logzijilu", null);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	else if(method.equals("saveaddgrow")){
    		
    		int contractid=Integer.parseInt(req.getParameter("contractsignplotsid"));
    		String quantity=req.getParameter("greenhousequantity");
    		String greenhousearea=req.getParameter("greenhousearea");
    		String soil=req.getParameter("soilcharacterize");
    		String note=req.getParameter("note");
    		
    		String sql="insert into FirmLand values(seq_FirmLand.nextval,'"+contractid+"','"+quantity+"','"+greenhousearea+"','"+soil+"','"+note+"')";
    	    new DAO().Update(sql);
    		List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		req.setAttribute("logzijilu", null);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	    
    	}
    	else if(method.equals("delgrow")){
    		int firmlandid=Integer.parseInt(req.getParameter("firmlandid"));
    		List plog=DAO.getLogs(firmlandid);
    		if(plog.size()==0){
    			String sql="delete from FirmLand where firmlandid='"+firmlandid+"'";
        		new DAO().Update(sql);
        		req.setAttribute("logzijilu", null);
    		}
    		else {
    			req.setAttribute("logzijilu", "log");
    		}
    		List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	else if(method.equals("xiugrow")){
    		String firmlandid=req.getParameter("firmlandid");
    	
    		Firmland growxinxi=DAO.getAllgrowbyid(firmlandid);
    		
    		req.setAttribute("growxinxi", growxinxi);
    		req.getRequestDispatcher("firmLandInfo/xiugrow.jsp").forward(req, resp);
    		
    	}
    	else if(method.equals("savexiu")){
    		String firmlandid=req.getParameter("firmlandid");
    		int contractid=Integer.parseInt(req.getParameter("contractsignplotsid"));
    		String quantity=req.getParameter("greenhousequantity");
    		String greenhousearea=req.getParameter("greenhousearea");
    		String soil=req.getParameter("soilcharacterize");
    		String note=req.getParameter("note");
    		
    		String sql="update FirmLand set contractsignplotsid='"+contractid+"',greenhousequantity='"+quantity+"',greenhousearea='"+greenhousearea+"',soilcharacterize='"+soil+"',note='"+note+"' where firmlandid='"+firmlandid+"'";
    	    new DAO().Update(sql);
    	   
    	    List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		req.setAttribute("logzijilu", null);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	else if(method.equals("chalunzuo")){
    		int contractsignplotsid=Integer.parseInt(req.getParameter("contractsignplotsid"));
    		req.getSession().setAttribute("contractsignplotsid", contractsignplotsid);
    		List lun=DAO.getPlotrotations(contractsignplotsid);
    		req.getSession().setAttribute("lun", lun);
    		
    		
    		List lunzuoxinxi=DAO.getPlotrotations(contractsignplotsid);
    		req.getSession().setAttribute("lunzuoxinxi", lunzuoxinxi);
    		req.setAttribute("logzijilu", null);
    		
    		Firmland grows=DAO.getAllgrow(contractsignplotsid);
    		List grow=DAO.getAllgrow();
    		List object=DAO.getObject();
    		
    		req.getSession().setAttribute("object", object);
    		req.getSession().setAttribute("grow", grow);
    		req.getSession().setAttribute("grows", grows);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	
    	
    	/**
    	 * 添加地块轮作信息
    	 * 
    	 */
    	 else if(method.equals("chakansuoyou")){
		      	List grow=DAO.getAllgrow();
		 		req.getSession().setAttribute("grow", grow);
		 		List lun=DAO.getPlotrotations();
		 	    req.getSession().setAttribute("suoyou", null);
		 		req.getSession().setAttribute("lun", lun);
		 		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
         }
    	else if(method.equals("addlun")){
    		//int contractsignplotsid=Integer.parseInt(req.getParameter("id"));
    		
    		int conid=Integer.parseInt(req.getParameter("contractsignplotsid"));
    		String pluckdate=req.getParameter("pluckdate");
    		String sowingdate=req.getParameter("sowingdate");
    		int objectid=Integer.parseInt(req.getParameter("objectid"));
    		int prcedingid=Integer.parseInt(req.getParameter("prcedingobjectid"));
    		String note=req.getParameter("note");
    		
    		String sql="insert into PlotRotations values(seq_PlotRotations.nextval,"+"'"+conid+"',"+"to_date('"+pluckdate+"','"+"yy-mm-dd"+"'),"+"to_date('"+sowingdate+"','"+"yy-mm-dd"+"'),'"+objectid+"','"+prcedingid+"','"+note+"')";
    		new DAO().Update(sql);
    	
    		List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		
    		String suoyou=(String)req.getSession().getAttribute("suoyou");
     	     if(suoyou==null){
     	    	List lun=DAO.getPlotrotations();
     	    	req.getSession().setAttribute("lun", lun);
     	     }
     	     else{
     	    	int contractsignplotsid=Integer.parseInt(req.getParameter("id"));
     	    	List lun=DAO.getPlotrotations(contractsignplotsid);
       		    req.getSession().setAttribute("lun", lun);
     	     }
    		
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	else if(method.equals("fanhui")){
    		int contractsignplotsid=Integer.parseInt(req.getParameter("id"));
    		List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		List lun=DAO.getPlotrotations(contractsignplotsid);
    		req.getSession().setAttribute("lun", lun);
    		req.setAttribute("logzijilu", null);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	else if(method.equals("xiucaozuo")){
    		String plotrotationsid=req.getParameter("plotrotationsid");
    		
    		Plotrotations lunzuo=DAO.getlunzuo(plotrotationsid);
    		req.getSession().setAttribute("lunzuo", lunzuo);
    		req.getRequestDispatcher("firmLandInfo/firmlandlunzuo.jsp").forward(req, resp);
    	}
    	else if(method.equals("savelunzuo")){
    		//int contractsignplotsid=Integer.parseInt(req.getParameter("id"));
    		
    		String plotrotationsid=req.getParameter("plotrotationsid");
    		int conid=Integer.parseInt(req.getParameter("contractsignplotsid"));
    		String pluckdate=req.getParameter("pluckdate");
    		String sowingdate=req.getParameter("sowingdate");
    		int objectid=Integer.parseInt(req.getParameter("objectid"));
    		int prcedingid=Integer.parseInt(req.getParameter("prcedingobjectid"));
    		String note=req.getParameter("note");
    		
    		String sql="update PlotRotations set contractsignplotsid='"+conid+"',pluckdate="+"to_date('"+pluckdate+"','"+"yy-mm-dd"+"'),sowingdate="+"to_date('"+sowingdate+"','"+"yy-mm-dd"+"'),objectid='"+objectid+"',prcedingobjectid='"+prcedingid+"',note='"+note+"' where plotrotationsid='"+plotrotationsid+"'";
            new DAO().Update(sql);
           
          
    		List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		 String suoyou=(String)req.getSession().getAttribute("suoyou");
      	     if(suoyou==null){
      	    	 System.out.println("来吗");
      	    	List lun=DAO.getPlotrotations();
      	    	req.getSession().setAttribute("lun", lun);
      	     }
      	     else{
      	    	int contractsignplotsid=Integer.parseInt(req.getParameter("id"));
      	    	List lun=DAO.getPlotrotations(contractsignplotsid);
        		req.getSession().setAttribute("lun", lun);
      	     }
    		req.setAttribute("logzijilu", null);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	else if(method.equals("dellunzuo")){
    		String plotrotationsid=req.getParameter("plotrotationsid");
    		String sql="delete from PlotRotations where plotrotationsid='"+plotrotationsid+"'";
    		new DAO().Update(sql);
    		
    		 String suoyou=(String)req.getSession().getAttribute("suoyou");
      	     if(suoyou==null){
      	    	List lun=DAO.getPlotrotations();
      	    	req.getSession().setAttribute("lun", lun);
      	     }
      	     else{
      	    	int contractsignplotsid=Integer.parseInt(req.getParameter("id"));
      	    	List lun=DAO.getPlotrotations(contractsignplotsid);
        		req.getSession().setAttribute("lun", lun);
      	     }
    		
    		List grow=DAO.getAllgrow();
    		req.getSession().setAttribute("grow", grow);
    		req.setAttribute("logzijilu", null);
    		req.getRequestDispatcher("firmLandInfo/growInfo.jsp").forward(req, resp);
    	}
    	
    	
    	
    	
    	/**
    	 * 
    	 * 种植日志
    	 */
    	else if(method.equals("plantlog")){
    	
    		List log=DAO.getLogs();
    		req.getSession().setAttribute("log", log);
    		
    		req.getRequestDispatcher("firmLandInfo/log.jsp").forward(req, resp);
    	}
    	else if(method.equals("addlog")){
    		int firmlandid=Integer.parseInt(req.getParameter("firmlandid"));
    		String logdate=req.getParameter("logdate");
    		String weather=req.getParameter("weather");
    		String humidity=req.getParameter("humidity");
    		String wind=req.getParameter("wind");
    		String temperature=req.getParameter("temperature");
    		String soidtemperature=req.getParameter("soidtemperature");
    		String soidhumidity=req.getParameter("soidhumidity");
    		String nextweather=req.getParameter("nextweather");
    		String note=req.getParameter("note");
    		
    		String sql="insert into PlantLogs values(seq_PlantLogs.nextval,'"+firmlandid+"',"+"to_date('"+logdate+"','"+"yy-mm-dd"+"'"+")"+",'"+weather+"','"+humidity+"','"+wind+"','"+temperature+"','"+soidtemperature+"','"+soidhumidity+"','"+nextweather+"','"+note+"')";
    	    new DAO().Update(sql);
    	    
    	    List log=DAO.getLogs();
    		req.getSession().setAttribute("log", log);
    		req.getRequestDispatcher("firmLandInfo/log.jsp").forward(req, resp);
    	}
    	else if(method.equals("dellog")){
    		String plantlogsid=req.getParameter("plantlogsid");
    		String sql="delete from PlantLogs where plantlogsid='"+plantlogsid+"'";
    		new DAO().Update(sql);
    		List log=DAO.getLogs();
    		req.getSession().setAttribute("log", log);
    		req.getRequestDispatcher("firmLandInfo/log.jsp").forward(req, resp);
    	}
    	else if(method.equals("xiulog")){
    		String plantlogsid=req.getParameter("plantlogsid");
    		Plantlogs logs=DAO.getLogs(plantlogsid);
    		req.getSession().setAttribute("logs", logs);
    		req.getRequestDispatcher("firmLandInfo/xiulog.jsp").forward(req, resp);
    	}
    	else if(method.equals("savexiulog")){
    		String plantlogsid=req.getParameter("plantlogsid");
    		int firmlandid=Integer.parseInt(req.getParameter("firmlandid"));
    		String logdate=req.getParameter("logdate");
    		String weather=req.getParameter("weather");
    		String humidity=req.getParameter("humidity");
    		String wind=req.getParameter("wind");
    		String temperature=req.getParameter("temperature");
    		String soidtemperature=req.getParameter("soidtemperature");
    		String soidhumidity=req.getParameter("soidhumidity");
    		String nextweather=req.getParameter("nextweather");
    		String note=req.getParameter("note");
    		String sql="update PlantLogs set firmlandid='"+firmlandid+"',logdate="+"to_date('"+logdate+"','"+"yy-mm-dd"+"'), weather='"+weather+"',humidity='"+humidity+"',wind='"+wind+"',temperature='"+temperature+"',soidtemperature='"+soidtemperature+"',soidhumidity='"+soidhumidity+"',nextweather='"+nextweather+"',note='"+note+"' where plantlogsid='"+plantlogsid+"'";
    	    new DAO().Update(sql);
    	
    	    List log=DAO.getLogs();
    		req.getSession().setAttribute("log", log);
    		req.getRequestDispatcher("firmLandInfo/log.jsp").forward(req, resp);
    	}
    	/***
    	 * 种植操作
    	 * 
    	 */
    	else if(method.equals("growcaozuo")){
    		List plant=DAO.getPlant();
    		req.setAttribute("plant", plant);
    		req.getRequestDispatcher("firmLandInfo/growcaozuo.jsp").forward(req, resp);
    	}
    	else if(method.equals("addcaozuo")){
    		int firmlandid=Integer.parseInt(req.getParameter("firmlandid"));
    		String logdate=req.getParameter("logdate");
    		String operatime=req.getParameter("operatetime");
    		String operap=req.getParameter("operateperson");
    		int subtypeid=Integer.parseInt(req.getParameter("subtypeid"));
    		String subtypeid1=req.getParameter("subtypeid1");
    		String objectid=req.getParameter("objectid");
    		String purpose=req.getParameter("purpose");
    		String operationmethod=req.getParameter("operationmethod");
    		String quan=req.getParameter("quantityperarea");
    		String house=req.getParameter("quantityperhouse");
    		String quantity=req.getParameter("quantity");
    		String safep=req.getParameter("safeperiod");
    		String safedate=req.getParameter("safedate");
    		String note=req.getParameter("note");
    		
    		String sql="insert into PlantOperations values(seq_PlantOperations.nextval,"+"'"+firmlandid+"',"+"to_date('"+logdate+"','"+"yy-mm-dd"+"'),"+"to_date('"+operatime+"','"+"yy-mm-dd"+"'),'"+operap+"','"+subtypeid+"','"+subtypeid1+"','"+objectid+"','"+purpose+"','"+operationmethod+"','"+quan+"','"+house+"','"+quantity+"','"+safep+"',"+"to_date('"+safedate+"','"+"yy-mm-dd"+"'),'"+note+"')";
    	    new DAO().Update(sql);
    	  
    	    List plant=DAO.getPlant();
    		req.setAttribute("plant", plant);
    		req.getRequestDispatcher("firmLandInfo/growcaozuo.jsp").forward(req, resp);
    	}
    	else if(method.equals("delcaozuo")){
    		String plantoperationsid=req.getParameter("plantoperationsid");
    		String sql="delete from PlantOperations where plantoperationsid='"+plantoperationsid+"'";
    		new DAO().Update(sql);
    		List plant=DAO.getPlant();
    		req.setAttribute("plant", plant);
    		req.getRequestDispatcher("firmLandInfo/growcaozuo.jsp").forward(req, resp);
    	}
    	else if(method.equals("xiucaozuolog")){
    		String plantoperationsid=req.getParameter("plantoperationsid");
    		
    		Plantoperations plants=DAO.getPlant(plantoperationsid);
    		req.setAttribute("plants", plants);
    		req.getRequestDispatcher("firmLandInfo/xiugrowcaozuo.jsp").forward(req, resp);
    	}
    	else if(method.equals("savexiucaozuo")){
    		String plantoperationsid=req.getParameter("plantoperationsid");
    		int firmlandid=Integer.parseInt(req.getParameter("firmlandid"));
    		String logdate=req.getParameter("logdate");
    		String operatime=req.getParameter("operatetime");
    		String operap=req.getParameter("operateperson");
    		int subtypeid=Integer.parseInt(req.getParameter("subtypeid"));
    		String subtypeid1=req.getParameter("subtypeid1");
    		String objectid=req.getParameter("objectid");
    		String purpose=req.getParameter("purpose");
    		String operationmethod=req.getParameter("operationmethod");
    		String quan=req.getParameter("quantityperarea");
    		String house=req.getParameter("quantityperhouse");
    		String quantity=req.getParameter("quantity");
    		String safep=req.getParameter("safeperiod");
    		String safedate=req.getParameter("safedate");
    		String note=req.getParameter("note");
    		
    		String sql="update PlantOperations set firmlandid='"+firmlandid+"',logdate="+"to_date('"+logdate+"','"+"yy-mm-dd"+"'),operatetime="+"to_date('"+operatime+"','"+"yy-mm-dd"+"'),operateperson='"+operap+"',subtypeid='"+subtypeid+"',subtypeid1='"+subtypeid1+"',objectid='"+objectid+"',purpose='"+purpose+"',operationmethod='"+operationmethod+"',quantityperarea='"+quan+"',quantityperhouse='"+house+"',quantity='"+quantity+"',safeperiod='"+safep+"',safedate=to_date('"+safedate+"','"+"yy-mm-dd"+"'),note='"+note+"' where plantoperationsid='"+plantoperationsid+"'";
    	    new DAO().Update(sql);
    	   
    	    List plant=DAO.getPlant();
    		req.setAttribute("plant", plant);
    		req.getRequestDispatcher("firmLandInfo/growcaozuo.jsp").forward(req, resp);
    	}
    }
}
