package com.Balance;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class balanceDAO 
{
	/**
	 * 查询费用结算的费用结算编号
	 * @param table
	 * @return
	 */
   public static List<balanceModel> findBalanceId(String table)
   {
	   List<balanceModel>balance_List=new ArrayList<balanceModel>();
	   String sql="select BalanceID from "+table;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			balanceModel balance_Model=new balanceModel();
			balance_Model.setBalanceID(rs.getInt("balanceID"));
			balance_List.add(balance_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return balance_List;
   }
   /**
    * 查询费用结算表的所有数据
    * @return
    */
   public static List<balanceModel> findAllBalance(int currentlyPageNum)
   {
	   int pageNum=currentlyPageNum;
	   int pagesize=6;
	   int maxPage=(currentlyPageNum)*pagesize;
	   int minPage=pagesize*(currentlyPageNum-1)+1;
	   
	   List<balanceModel>balance_List=new ArrayList<balanceModel>();
	   String sql="select * from (select a1.*,rownum rn from (select * from Balance) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			balanceModel balance_Model=new balanceModel();
			balance_Model.setBalanceID(rs.getInt("balanceID"));
			balance_Model.setContractID(rs.getInt("contractID"));
			balance_Model.setSalesMoney(rs.getInt("salesMoney"));
			balance_Model.setGetInputMoney(rs.getInt("getInputMoney"));
			balance_Model.setNote(rs.getString("note"));
			balance_List.add(balance_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return balance_List;
   }
   /**
    *向费用结算表插入数据
    * @param balance_Model
    * @return
    */
   public static boolean saveBalance(balanceModel balance_Model)
   {
	   String sql="insert into Balance values(seq_Balance.nextval,?,?,?,?)";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1,balance_Model.getContractID());
		prst.setInt(2,balance_Model.getSalesMoney());
		prst.setInt(3,balance_Model.getGetInputMoney());
		prst.setString(4,balance_Model.getNote());
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
    * 删除费用结算表的部分数据
    * @param BalanceID
    * @return
    */
   public static boolean deleteBalance(int BalanceID)
   {
	   String sql="delete from Balance where BalanceID=?";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1,BalanceID);
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
    * 查询费用结算表的全部记录数
    * @return
    */
	  public static int selectBalanceCount()
	   {
		   int balanceCount=0;
		   String sql="select count(*) balanceCount from Balance";
		   Connection conn=DBConnection.getConnection();
		   try {
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next())
			{
				balanceCount=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return balanceCount;
	   }
}
