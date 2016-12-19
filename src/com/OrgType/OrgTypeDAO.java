package com.OrgType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;
public class OrgTypeDAO 
{
	/**
	 * ������֯���������ȫ����Ϣ
	 * @return
	 */
   public static List<OrgTypeModel> findAllOrgType()
   {
	   List<OrgTypeModel> OrgType_List=new ArrayList<OrgTypeModel>();
	   String sql="select * from OrgType";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			OrgTypeModel OrgType_Model=new OrgTypeModel();
			OrgType_Model.setOrgTypeID(rs.getInt("orgTypeID"));
			OrgType_Model.setOrgTypeName(rs.getString("orgTypeName"));
			OrgType_Model.setNote(rs.getString("note"));
			OrgType_List.add(OrgType_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return OrgType_List;
   }
   /**
    * �������������������֯��������
    * @param table
    * @return
    */
   public static List<OrgTypeModel> findOrgTypeName(String table)
   {
	   List<OrgTypeModel> OrgType_List=new ArrayList<OrgTypeModel>();
	   String sql="select orgTypeID,orgTypeName from OrgType "+table;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			OrgTypeModel OrgType_Model=new OrgTypeModel();
			OrgType_Model.setOrgTypeID(rs.getInt("orgTypeID"));
			OrgType_Model.setOrgTypeName(rs.getString("orgTypeName"));
			OrgType_List.add(OrgType_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return OrgType_List;
   }
}
