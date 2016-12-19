package com.Alarm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;
public class alarmDAO 
{
	/**
	 * 查询报警信息的全部信息
	 * @return
	 */
   public static List<alarmModel> findAllAlarm(int currentlyPageNum)
   {
	   int pageNum=currentlyPageNum;
	   int pagesize=6;
	   int maxPage=(currentlyPageNum)*pagesize;
	   int minPage=pagesize*(currentlyPageNum-1)+1;
	   
	   List<alarmModel>alarm_List=new ArrayList<alarmModel>();
	   String sql="select * from (select a1.*,rownum rn from (select * from Alarm) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
	   Connection conn=DBConnection.getConnection();
	   PreparedStatement prst;
	try {
		prst = conn.prepareStatement(sql);
		  ResultSet rs= prst.executeQuery();
		  while(rs.next())
		  {
			  alarmModel alarm_Model=new alarmModel();
			  alarm_Model.setAlarmID(rs.getInt("alarmID"));
			  alarm_Model.setInputProviderOrgID(rs.getInt("inputProviderOrgID"));
			  alarm_Model.setReasonContent(rs.getString("reasonContent"));
			  alarm_Model.setAlarmTime(rs.getString("alarmTime"));
			  alarm_Model.setProduceOrg(rs.getString("produceOrg"));
			  alarm_Model.setNote(rs.getString("note"));
			  alarm_List.add(alarm_Model);
		  }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	   return alarm_List;
   }
   /**
    * 向报警信息插入数据
    * @param alarm_Model
    * @return
    */
   public static boolean saveAlarm(alarmModel alarm_Model)
   {
	   String sql="insert into Alarm(alarmId,inputProviderOrgID,reasonContent,alarmTime,produceOrg,note) values(seq_Alarm.nextval,?,?,to_date(?,'yyyy-MM-dd'),?,?)";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1,alarm_Model.getInputProviderOrgID());
		prst.setString(2, alarm_Model.getReasonContent());
		prst.setString(3, alarm_Model.getAlarmTime());
		prst.setString(4, alarm_Model.getProduceOrg());
		prst.setString(5, alarm_Model.getNote());
		int count=prst.executeUpdate();
		if(count>0)
		{
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return false;
   }
   /**
    * 删除报警信息部分数据
    * @param AlarmID
    * @return
    */
   public static boolean deleteAlarm(int AlarmID)
   {
	   String sql="delete from Alarm where AlarmID=?";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1,AlarmID);
		int bln=prst.executeUpdate();
		if(bln>0)
		{
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return false;
   }
   /**
    * 查询报警信息的总记录数
    * @return
    */
   public static int selectAlarmCount()
   {
	   int alarmCount=0;
	   String sql="select count(*) alarmCount from Alarm";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			alarmCount=rs.getInt(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return alarmCount;
   }
}
