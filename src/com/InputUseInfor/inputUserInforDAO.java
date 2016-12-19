package com.InputUseInfor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;
public class inputUserInforDAO 
{
	/**
	 * 向结算物资表算插入全部数据
	 * @param inputUserInfor_Model
	 * @return
	 */
	 public static boolean saveInputUserInfor(inputUserInforModel inputUserInfor_Model)
	   {
		   String sql="insert into InputUseInfor values(seq_InputProviderBuyAndSell.nextval,?,to_date(?,'yyyy-MM-dd'),?,?,?,?,?,?,?,?,?,?,?)";
		   Connection conn=DBConnection.getConnection();
		   try {
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setInt(1,inputUserInfor_Model.getBalanceID());
			prst.setString(2,inputUserInfor_Model.getOperateTime());
			prst.setString(3,inputUserInfor_Model.getBatchID());
			prst.setInt(4,inputUserInfor_Model.getObjectID());
			prst.setString(5,inputUserInfor_Model.getMaterialTypeName());
			prst.setInt(6,inputUserInfor_Model.getQuantity());
			prst.setInt(7,inputUserInfor_Model.getSubTypeID());
			prst.setInt(8,inputUserInfor_Model.getPrice());
			prst.setInt(9,inputUserInfor_Model.getAmountMoney());
			prst.setString(10,inputUserInfor_Model.getBalanceState());
			prst.setString(11,inputUserInfor_Model.getSendPersion());
			prst.setString(12,inputUserInfor_Model.getAcceptPersion());
			prst.setString(13,inputUserInfor_Model.getNote());
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
		 * 向结算物资表算插部分数据(投入品使用)
		 * @param inputUserInfor_Model
		 * @return
		 */
		 public static boolean saveInputUserInfor2(inputUserInforModel inputUserInfor_Model)
		   {
			   String sql="insert into InputUseInfor(InputUseInforID,BalanceID,OperateTime,BatchID,ObjectID,Quantity,SubTypeID,Note ) values(seq_InputProviderBuyAndSell.nextval,?,to_date(?,'yyyy-MM-dd'),?,?,?,?,?)";
			   Connection conn=DBConnection.getConnection();
			   try {
				PreparedStatement prst=conn.prepareStatement(sql);
				prst.setInt(1,inputUserInfor_Model.getBalanceID());
				prst.setString(2,inputUserInfor_Model.getOperateTime());
				prst.setString(3,inputUserInfor_Model.getBatchID());
				prst.setInt(4,inputUserInfor_Model.getObjectID());
				prst.setInt(5,inputUserInfor_Model.getQuantity());
				prst.setInt(6,inputUserInfor_Model.getSubTypeID());
				prst.setString(7,inputUserInfor_Model.getNote());
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
		  * 查询结算物资表的全部信息
		  * @return
		  */
		 public static List<inputUserInforModel>findAllInputUse(int currentlyPageNum)
		 {
			   int pageNum=currentlyPageNum;
			   int pagesize=6;
			   int maxPage=(currentlyPageNum)*pagesize;
			   int minPage=pagesize*(currentlyPageNum-1)+1;
			 
			 List<inputUserInforModel> inputUserInfor_List=new ArrayList<inputUserInforModel>();
			 String sql="select * from (select a1.*,rownum rn from (select * from InputUseInfor) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
			 Connection conn=DBConnection.getConnection();
			 try {
				PreparedStatement prst=conn.prepareStatement(sql);
				ResultSet rs=prst.executeQuery();
				while(rs.next())
				{
					inputUserInforModel inputUserInfor_Model=new inputUserInforModel();
					inputUserInfor_Model.setInputUseInforID(rs.getInt("inputUseInforID"));
					inputUserInfor_Model.setBalanceID(rs.getInt("balanceID"));
					inputUserInfor_Model.setOperateTime(rs.getString("operateTime"));
					inputUserInfor_Model.setBatchID(rs.getString("batchID"));
					inputUserInfor_Model.setObjectID(rs.getInt("objectID"));
					inputUserInfor_Model.setMaterialTypeName(rs.getString("materialTypeName"));
					inputUserInfor_Model.setQuantity(rs.getInt("quantity"));
					inputUserInfor_Model.setSubTypeID(rs.getInt("subTypeID"));
					inputUserInfor_Model.setPrice(rs.getInt("price"));
					inputUserInfor_Model.setAmountMoney(rs.getInt("amountMoney"));
					inputUserInfor_Model.setBalanceState(rs.getString("balanceState"));
					inputUserInfor_Model.setSendPersion(rs.getString("sendPersion"));
					inputUserInfor_Model.setAcceptPersion(rs.getString("acceptPersion"));
					inputUserInfor_Model.setNote(rs.getString("note"));
					inputUserInfor_List.add(inputUserInfor_Model);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return inputUserInfor_List;
		 }
		 /**
		  * 删除结算物资表的部分数据
		  * @param InputUseInforID
		  * @return
		  */
		 public static boolean deleteInputUse(int InputUseInforID)
		 {
			 String sql="delete from InputUseInfor where InputUseInforID=?";
			 Connection conn=DBConnection.getConnection();
			 try {
				PreparedStatement prst=conn.prepareStatement(sql);
				prst.setInt(1,InputUseInforID);
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
		  * 查询结算物资表的全部记录数
		  * @return
		  */
		  public static int selectInputUseInforCount()
		   {
			   int inputUseInforCount=0;
			   String sql="select count(*) inputUseInforCount from InputUseInfor";
			   Connection conn=DBConnection.getConnection();
			   try {
				PreparedStatement prst=conn.prepareStatement(sql);
				ResultSet rs=prst.executeQuery();
				while(rs.next())
				{
					inputUseInforCount=rs.getInt(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return inputUseInforCount;
		   }
}
