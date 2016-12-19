package com.InputProviderBuyAndSell;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;
public class inputProviderBuyAndSellDAO 
{
	/**
	 * 向投入品供应购买销售记录表插入数据
	 * @param inputProviderBuyAndSell_Model
	 * @return
	 */
	  public static boolean saveInputProviderBuyAndSell(inputProviderBuyAndSellModel inputProviderBuyAndSell_Model)
	   {
		   String sql="insert into InputProviderBuyAndSell values(seq_InputProviderBuyAndSell.nextval,?,?,?,?,?,?)";
		   Connection conn=DBConnection.getConnection();
		   try {
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setInt(1,inputProviderBuyAndSell_Model.getOrgID());
			prst.setInt(2,inputProviderBuyAndSell_Model.getYear());
			prst.setInt(3,inputProviderBuyAndSell_Model.getSubTypeID());
			prst.setString(4,inputProviderBuyAndSell_Model.getBuy());
			prst.setString(5,inputProviderBuyAndSell_Model.getSell());
			prst.setString(6,inputProviderBuyAndSell_Model.getNote());
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
	   * 查询 投入品供应购买销售记录表的全部数据
	   * @return
	   */
	  public static List<inputProviderBuyAndSellModel> findAllinput(int currentlyPageNum)
	  {
		   int pageNum=currentlyPageNum;
		   int pagesize=6;
		   int maxPage=(currentlyPageNum)*pagesize;
		   int minPage=pagesize*(currentlyPageNum-1)+1;
		  
		  List<inputProviderBuyAndSellModel> inputProviderBuyAndSell_List=new ArrayList<inputProviderBuyAndSellModel>();
		  String sql="select * from (select a1.*,rownum rn from (select * from InputProviderBuyAndSell) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
		  Connection conn=DBConnection.getConnection();
		  try {
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next())
			{
				inputProviderBuyAndSellModel inputProviderBuyAndSell_Model=new inputProviderBuyAndSellModel();
				inputProviderBuyAndSell_Model.setBuyAndSellID(rs.getInt("buyAndSellID"));
				inputProviderBuyAndSell_Model.setOrgID(rs.getInt("orgID"));
				inputProviderBuyAndSell_Model.setYear(rs.getInt("year"));
				inputProviderBuyAndSell_Model.setSubTypeID(rs.getInt("subTypeID"));
				inputProviderBuyAndSell_Model.setBuy(rs.getString("buy"));
				inputProviderBuyAndSell_Model.setSell(rs.getString("sell"));
				inputProviderBuyAndSell_Model.setNote(rs.getString("note"));
				inputProviderBuyAndSell_List.add(inputProviderBuyAndSell_Model);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return inputProviderBuyAndSell_List;
	  }
	  /**
	   * 删除投入品供应购买销售记录表的部分数据
	   * @param BuyAndSellID
	   * @return
	   */
	  public static boolean deleteInput(int  BuyAndSellID)
	  {
		  String sql="delete from InputProviderBuyAndSell where BuyAndSellID=?";
		  Connection conn=DBConnection.getConnection();
		  try {
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setInt(1, BuyAndSellID);
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
	   * 查询投入品供应购买销售记录表的所有记录数
	   * @return
	   */
	  public static int selectInputProviderBuyAndSellCount()
	   {
		   int inputProviderBuyAndSellCount=0;
		   String sql="select count(*) inputProviderBuyAndSellCount from InputProviderBuyAndSell";
		   Connection conn=DBConnection.getConnection();
		   try {
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next())
			{
				inputProviderBuyAndSellCount=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return inputProviderBuyAndSellCount;
	   }
	   
}
