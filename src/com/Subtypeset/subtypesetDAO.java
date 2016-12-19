package com.Subtypeset;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class subtypesetDAO 
{
	/**
	 * 查询基础数据细分表的名称
	 * @param table
	 * @return
	 */
   public static List<subtypesetModel> findsubtypesetId(String table)
   {
	   List<subtypesetModel> subtypeset_List=new ArrayList<subtypesetModel>();
	   String sql="select SubTypeID,SubTypeName from "+table;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			subtypesetModel subtypeset_Model=new subtypesetModel();
			subtypeset_Model.setSubTypeID(rs.getInt("subTypeID"));
			subtypeset_Model.setSubTypeName(rs.getString("subTypeName"));
			subtypeset_List.add(subtypeset_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return subtypeset_List;
   }
}
