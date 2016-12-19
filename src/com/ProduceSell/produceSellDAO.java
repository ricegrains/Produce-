package com.ProduceSell;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;
public class produceSellDAO 
{
	/**
	 * 查询农产品销售表的生产组织
	 * @param table
	 * @return
	 */
	 public static List<produceSellModel> findProduceOrgID(String table)
	   {
		   List<produceSellModel> produceSell_List= new ArrayList<produceSellModel>();
		   String sql="select * from "+table;
		   Connection conn=DBConnection.getConnection();
		   try {
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next())
			{
				produceSellModel produceSell_Model=new produceSellModel();
				produceSell_Model.setProduceOrgID(rs.getInt("produceOrgID"));
				produceSell_List.add(produceSell_Model);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return produceSell_List; 
	   }
	 
	 /**
		 * 查询农产品销售表的客户
		 * @param table
		 * @return
		 */
		 public static List<produceSellModel> findCustomer(String table)
		   {
			   List<produceSellModel> produceSell_List= new ArrayList<produceSellModel>();
			   String sql="select * from "+table;
			   Connection conn=DBConnection.getConnection();
			   try {
				PreparedStatement prst=conn.prepareStatement(sql);
				ResultSet rs=prst.executeQuery();
				while(rs.next())
				{
					produceSellModel produceSell_Model=new produceSellModel();
					produceSell_Model.setProduceOrgID(rs.getInt("produceOrgID"));
					produceSell_Model.setCustomer(rs.getString("customer"));
					produceSell_List.add(produceSell_Model);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return produceSell_List; 
		   }
		 
		 /**
			 * 查询农产品销售表的身份证号
			 * @param table
			 * @return
			 */
			 public static List<produceSellModel> findContractorID(String table)
			   {
				   List<produceSellModel> produceSell_List= new ArrayList<produceSellModel>();
				   String sql="select * from "+table;
				   Connection conn=DBConnection.getConnection();
				   try {
					PreparedStatement prst=conn.prepareStatement(sql);
					ResultSet rs=prst.executeQuery();
					while(rs.next())
					{
						produceSellModel produceSell_Model=new produceSellModel();
						produceSell_Model.setProduceOrgID(rs.getInt("produceOrgID"));
						produceSell_Model.setContractorID(rs.getString("contractorID"));
						produceSell_List.add(produceSell_Model);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return produceSell_List; 
			   }
			 /**
				 * 查询农产品销售表的规格
				 * @param table
				 * @return
				 */
				 public static List<produceSellModel> findMaterialTypeName(String table)
				   {
					   List<produceSellModel> produceSell_List= new ArrayList<produceSellModel>();
					   String sql="select * from "+table;
					   Connection conn=DBConnection.getConnection();
					   try {
						PreparedStatement prst=conn.prepareStatement(sql);
						ResultSet rs=prst.executeQuery();
						while(rs.next())
						{
							produceSellModel produceSell_Model=new produceSellModel();
							produceSell_Model.setProduceOrgID(rs.getInt("produceOrgID"));
							produceSell_Model.setMaterialTypeName(rs.getString("materialTypeName"));
							produceSell_List.add(produceSell_Model);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return produceSell_List; 
				   }
		 
}
