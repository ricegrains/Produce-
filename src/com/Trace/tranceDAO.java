package com.Trace;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class tranceDAO 
{
	/**
	 * 向追溯表插入数据
	 * @param trance_Model
	 * @return
	 */
   public static boolean saveTrance(tranceModel trance_Model)
   {
	   String sql="insert into Traces(TraceID,TraceNumberID,ProduceOrgID,ObjectID,Customer,ContractorID,Note) values(seq_Trace.nextval,?,?,?,?,?,?)"; 
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1, trance_Model.getTraceNumberID());
		prst.setInt(2, trance_Model.getProduceOrgID());
		prst.setInt(3, trance_Model.getObjectID());
		prst.setString(4, trance_Model.getCustomer());
		prst.setString(5, trance_Model.getContractorID());
		prst.setString(6, trance_Model.getNote());
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
    * 查询追溯表的所有数据
    * @return
    */
   public static List<tranceModel> findAllTrace(int currentlyPageNum)
   {
	   int pageNum=currentlyPageNum;
	   int pagesize=6;
	   int maxPage=(currentlyPageNum)*pagesize;
	   int minPage=pagesize*(currentlyPageNum-1)+1;
	   
	   List<tranceModel> trance_List=new ArrayList<tranceModel>();
	   String sql="select * from (select a1.*,rownum rn from (select * from Traces) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			tranceModel trance_Model=new tranceModel();
			trance_Model.setTraceID(rs.getInt("traceID"));
			trance_Model.setTraceNumberID(rs.getInt("traceNumberID"));
			trance_Model.setProduceOrgID(rs.getInt("produceOrgID"));
			trance_Model.setObjectID(rs.getInt("objectID"));
			trance_Model.setCustomer(rs.getString("customer"));
			trance_Model.setContractorID(rs.getString("contractorID"));
			trance_Model.setNote(rs.getString("note"));
			trance_List.add(trance_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return trance_List;
   }
   /**
    * 删除追溯表的部分数据
    * @param TraceID
    * @return
    */
   public static boolean deleteTrace(int TraceID)
   {
	   String sql="delete from Traces where TraceID=?";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1, TraceID);
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
    * 查询追溯表的所有记录
    * @return
    */
   public static int selectTraceCount()
   {
	   int traceCount=0;
	   String sql="select count(*) traceCount from Traces";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			traceCount=rs.getInt(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return traceCount;
   }
   
}
