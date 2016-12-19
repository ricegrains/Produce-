package com.Contract;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class contractDAO 
{
	/**
	 * 查询承包合同表的合同编号
	 * @param table
	 * @return
	 */
   public static List<contractModel>findContractID(String table)
   {
	   List<contractModel> contract_List=new ArrayList<contractModel>();
	   String sql="select ContractID from Contract";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			contractModel contract_Model=new contractModel();
			contract_Model.setContractID(rs.getInt("contractID"));
			contract_List.add(contract_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return contract_List;
   }
}
