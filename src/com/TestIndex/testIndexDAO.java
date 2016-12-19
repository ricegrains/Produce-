package com.TestIndex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class testIndexDAO 
{
   public static boolean saveTextIndex(testIndexModel testIndex_Model)
   {
	   String sql="insert into TestIndex values(seq_TestIndex.nextval,?,?,?,?)";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1,testIndex_Model.getSubTypeID());
		prst.setString(2,testIndex_Model.getTestIndexName());
		prst.setString(3,testIndex_Model.getCriterion());
		prst.setString(4,testIndex_Model.getNote());
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
   
   public static List<testIndexModel> findallindex(){
	   List indexlist=new ArrayList();
	   String sql="select * from testindex";
	   
	   try {
		Connection conn=DBConnection.getConnection();
		   PreparedStatement prst=conn.prepareStatement(sql);
		   ResultSet rs=prst.executeQuery();
		   
		   while(rs.next()){
			   testIndexModel ind=new testIndexModel();
			   ind.setTestIndexID(rs.getInt("testIndexID"));
			   ind.setSubTypeID(rs.getInt("subTypeID"));
			   ind.setTestIndexName(rs.getString("testIndexName"));
			   ind.setCriterion(rs.getString("criterion"));
			   ind.setNote(rs.getString("note"));
			   
			   indexlist.add(ind);
		   }
		   
		   rs.close();
		   prst.close();
		   conn.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return indexlist;
   }
}
