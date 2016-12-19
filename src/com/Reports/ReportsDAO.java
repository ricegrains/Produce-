package com.Reports;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import DBC.DBConnection;
public class ReportsDAO 
{
	/**
	 * 查询报表信息表的全部信息
	 * @return
	 */
   public static List<ReportsModel> findAllReports(int currentlyPageNum)
   {
	   int pageNum=currentlyPageNum;
	   int pagesize=6;
	   int maxPage=(currentlyPageNum)*pagesize;
	   int minPage=pagesize*(currentlyPageNum-1)+1;
	   List<ReportsModel>Reports_List=new ArrayList<ReportsModel>();
	   String sql="select * from (select a1.*,rownum rn from (select * from Reports) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			ReportsModel Reports_Model=new ReportsModel();
			Reports_Model.setReportID(rs.getInt("reportID"));
			Reports_Model.setAcceptOrgID(rs.getInt("acceptOrgID"));
			Reports_Model.setSendOrgID(rs.getInt("sendOrgID"));
			Reports_Model.setDomainID(rs.getInt("domainID"));
			Reports_Model.setSendTime(rs.getString("sendTime"));
			Reports_Model.setTopic(rs.getString("topic"));
			Reports_Model.setFileName(rs.getString("fileName"));
			Reports_Model.setPath(rs.getString("path"));
			Reports_Model.setNote(rs.getString("note"));
			Reports_List.add(Reports_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return Reports_List;
   }
   /**
    * 向报表信息表插入数据
    * @param Reports_Model
    * @return
    */
   public static boolean saveReports (ReportsModel Reports_Model)
   {
	   String sql="insert into Reports values(seq_Reports.nextval,?,?,?,to_date(?,'yyyy-MM-dd'),?,?,?,?)";
	   Connection conn=DBConnection.getConnection();
	   try{
	DateFormat date=new SimpleDateFormat("yyyy-MM-dd");
	   PreparedStatement prst=conn.prepareStatement(sql);
	   prst.setInt(1,Reports_Model.getAcceptOrgID());
	   prst.setInt(2,Reports_Model.getSendOrgID());
	   prst.setInt(3,Reports_Model.getDomainID());
	   prst.setString(4,date.format(new Date()));
	   prst.setString(5,Reports_Model.getTopic());
	   prst.setString(6,Reports_Model.getFileName());
       prst.setString(7,Reports_Model.getPath());
	   prst.setString(8,Reports_Model.getNote());	
	   int count=prst.executeUpdate();
	   if(count>0)
	   {
		  return true; 
	   }
	   }catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   return false;
   }
   /**
    * 向报表信息表删除数据
    * @param ReportID
    * @return
    */
   public static boolean deleteReports(int ReportID)
   {
	   String sql="delete from Reports where ReportID=?";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1,ReportID);
		int bln=prst.executeUpdate();
		if(bln>0)
		{
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("有外键关联,不能删除!!!!");
	}
	return false;
   }
   /**
    * 查询报表信息的总记录数
    * @return
    */
   public static int selectReportsCount()
   {
	   int reportsCount=0;
	   String sql="select count(*) reportsCount from Reports";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			reportsCount=rs.getInt(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return reportsCount;
   }
   
   	/**
   	 * 查询报表信息表的全部信息
   	 * @return
   	 */
      public static List<ReportsModel> findAllReports2(int currentlyPageNum)
      {
   	   int pageNum=currentlyPageNum;
   	   int pagesize=4;
   	   int maxPage=(currentlyPageNum)*pagesize;
   	   int minPage=pagesize*(currentlyPageNum-1)+1;
   	   List<ReportsModel>Reports_List=new ArrayList<ReportsModel>();
   	   String sql="select * from (select a1.*,rownum rn from (select * from Reports) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
   	   Connection conn=DBConnection.getConnection();
   	   try {
   		PreparedStatement prst=conn.prepareStatement(sql);
   		ResultSet rs=prst.executeQuery();
   		while(rs.next())
   		{
   			ReportsModel Reports_Model=new ReportsModel();
   			Reports_Model.setReportID(rs.getInt("reportID"));
   			Reports_Model.setAcceptOrgID(rs.getInt("acceptOrgID"));
   			Reports_Model.setSendOrgID(rs.getInt("sendOrgID"));
   			Reports_Model.setDomainID(rs.getInt("domainID"));
   			Reports_Model.setSendTime(rs.getString("sendTime"));
   			Reports_Model.setTopic(rs.getString("topic"));
   			Reports_Model.setFileName(rs.getString("fileName"));
   			Reports_Model.setPath(rs.getString("path"));
   			Reports_Model.setNote(rs.getString("note"));
   			Reports_List.add(Reports_Model);
   		}
   	} catch (SQLException e) {
   		// TODO Auto-generated catch block
   		e.printStackTrace();
   	}
   	   return Reports_List;
      }
}
