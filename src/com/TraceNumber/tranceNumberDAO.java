package com.TraceNumber;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class tranceNumberDAO 
{
	/**
	 * 向追溯码表插入数据
	 * @param tranceNumber_Model
	 * @return
	 */
    public static boolean savaTranceNumber(tranceNumberModel tranceNumber_Model)
    {
    	String sql="insert into TraceNumber(TraceNumberID,TraceNumber,Note) values(seq_TraceNumber.nextval,?,?)";
    	Connection conn=DBConnection.getConnection();
    	try {
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setString(1, tranceNumber_Model.getTraceNumber());
			prst.setString(2, tranceNumber_Model.getNote());
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
     * 查询追溯码表的追溯码
     * @param table
     * @return
     */
    public static List<tranceNumberModel>findTranceNumber(String table)
    {
    	List<tranceNumberModel> tranceNumber_List= new ArrayList<tranceNumberModel>();
    	String sql="select * from "+table;
    	Connection conn=DBConnection.getConnection();
    	try {
			PreparedStatement prst=conn.prepareStatement(sql);
		    ResultSet rs=prst.executeQuery();
		    while(rs.next())
		    {
		    	tranceNumberModel tranceNumber_Model=new tranceNumberModel();
		    	tranceNumber_Model.setTraceNumberID(rs.getInt("traceNumberID"));
		    	tranceNumber_List.add(tranceNumber_Model);
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tranceNumber_List;
    }
    /**
     * 查询追溯码表的追溯码
     * @param table
     * @return
     */
    public static List<tranceNumberModel>findTranceNumber(int currentlyPageNum)
    {
       int pageNum=currentlyPageNum;
  	   int pagesize=4;
  	   int maxPage=(currentlyPageNum)*pagesize;
  	   int minPage=pagesize*(currentlyPageNum-1)+1;
    	List<tranceNumberModel> tranceNumber_List= new ArrayList<tranceNumberModel>();
    	String sql="select * from (select a1.*,rownum rn from (select * from TraceNumber) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
    	Connection conn=DBConnection.getConnection();
    	try {
			PreparedStatement prst=conn.prepareStatement(sql);
		    ResultSet rs=prst.executeQuery();
		    while(rs.next())
		    {
		    	tranceNumberModel tranceNumber_Model=new tranceNumberModel();
		    	tranceNumber_Model.setTraceNumberID(rs.getInt("traceNumberID"));
		    	tranceNumber_Model.setTraceNumber(rs.getString("traceNumber"));
		    	tranceNumber_Model.setNote(rs.getString("note"));
		    	tranceNumber_List.add(tranceNumber_Model);
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tranceNumber_List;
    }
    /**
     * 删除追溯码表的部分数据
     * @param TraceNumberID
     * @return
     */
    public static boolean deleteTraceNumber(int TraceNumberID)
    {
    	String sql="delete from TraceNumber where TraceNumberID=?";
    	Connection conn=DBConnection.getConnection();
    	try {
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setInt(1,TraceNumberID);
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
     * 查询追溯码表的记录
     * @return
     */
    public static int selectTraceNumberCount()
    {
 	   int traceNumberCount=0;
 	   String sql="select count(*) traceNumberCount from TraceNumber";
 	   Connection conn=DBConnection.getConnection();
 	   try {
 		PreparedStatement prst=conn.prepareStatement(sql);
 		ResultSet rs=prst.executeQuery();
 		while(rs.next())
 		{
 			traceNumberCount=rs.getInt(1);
 		}
 	} catch (SQLException e) {
 		// TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 	return traceNumberCount;
    }
}
