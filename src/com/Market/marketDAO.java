package com.Market;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class marketDAO 
{
	/**
	 * 查询农资市场表的全部数据
	 * @return
	 */
   public static List<marketModel> findAllMarket(int currentlyPageNum)
   {
	   int pageNum=currentlyPageNum;
	   int pagesize=6;
	   int maxPage=(currentlyPageNum)*pagesize;
	   int minPage=pagesize*(currentlyPageNum-1)+1;
	   
	   List<marketModel> market_List=new ArrayList<marketModel>();
	   String sql="select * from (select a1.*,rownum rn from (select * from Market) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			marketModel market_Model=new marketModel();
			market_Model.setMarketID(rs.getInt("marketID"));
			market_Model.setMarketName(rs.getString("marketName"));
			market_Model.setLocation(rs.getString("location"));
			market_Model.setOrgID(rs.getInt("orgID"));
			market_Model.setNote(rs.getString("note"));
			market_List.add(market_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return market_List;
   }
   /**
    * 向农资市场表插入数据
    * @param market_Model
    * @return
    */
   public static boolean saveMarket(marketModel market_Model)
   {
	   String sql="insert into Market values(seq_Market.nextval,?,?,?,?)";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setString(1,market_Model.getMarketName());
		prst.setString(2, market_Model.getLocation());
		prst.setInt(3, market_Model.getOrgID());
		prst.setString(4, market_Model.getNote());
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
    * 查询农资市场表的全部记录
    * @return
    */
   public static int findAllMarketCount()
   {
	   int marketCount=0;
 	   String sql="select count(*) marketCount from Market";
 	    Connection conn=DBConnection.getConnection();
 	    try {
 			PreparedStatement prst=(PreparedStatement) conn.prepareStatement(sql);
 		    ResultSet rs=(ResultSet) prst.executeQuery();
 			while(rs.next())
 			{
 				marketCount=rs.getInt("marketCount");
 			}
 			return marketCount;
 		} catch (SQLException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
 		return -1;
   }
   /**
    * 删除农资市场表的部分数据
    * @param MarketID
    * @return
    */
   public static boolean deleteMarket(int  MarketID)
   {
	   String sql="delete from Market where MarketID=?";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1, MarketID);
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
    * 查询农资市场表的所有记录数
    * @return
    */
   public static int selectMarketCount()
   {
	   int marketCount=0;
	   String sql="select count(*) marketCount from Market";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			marketCount=rs.getInt(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return marketCount;
   }
   
}
