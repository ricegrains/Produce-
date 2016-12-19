package com.InputPurchase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;
public class inputPurchaseDAO 
{
	/**
	 * 查询投入品采购表 的生产组织
	 * @param table
	 * @return
	 */
	 public static List<inputPurchaseModel> findProduceOrgID(String table)
	   {
		   List<inputPurchaseModel> inputPurchase_List= new ArrayList<inputPurchaseModel>();
		   String sql="select * from "+table;
		   Connection conn=DBConnection.getConnection();
		   try {
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next())
			{
				inputPurchaseModel inputPurchase_Model=new inputPurchaseModel();
				inputPurchase_Model.setInputPurchaseID(rs.getInt("inputPurchaseID"));
				inputPurchase_Model.setProduceOrgID(rs.getInt("produceOrgID"));
				inputPurchase_List.add(inputPurchase_Model);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return inputPurchase_List; 
	   }
}
