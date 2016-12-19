package com.InputProviderOrg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class inputProviderOrgDAO 
{
	/**
	 * 查询投入品供应组织表的所有数据
	 */
   public static List<inputProviderOrgModel> findProduceOrgID(int currentlyPageNum)
   {
	   int pageNum=currentlyPageNum;
	   int pagesize=6;
	   int maxPage=(currentlyPageNum)*pagesize;
	   int minPage=pagesize*(currentlyPageNum-1)+1;
	   
	   List<inputProviderOrgModel> inputProviderOrg_List=new ArrayList<inputProviderOrgModel>();
	   String sql="select * from (select a1.*,rownum rn from (select * from InputProviderOrg) a1 where rownum <= "+maxPage+") where rn >= "+minPage;
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			inputProviderOrgModel inputProviderOrg_Model=new inputProviderOrgModel();
			inputProviderOrg_Model.setInputProviderOrgID(rs.getInt("inputProviderOrgID"));
			inputProviderOrg_Model.setOrgID(rs.getInt("orgID"));
			inputProviderOrg_Model.setRecordCode(rs.getString("recordCode"));
			inputProviderOrg_Model.setProduceLicenseID(rs.getString("produceLicenseID"));
			inputProviderOrg_Model.setProduceLicenseExpire(rs.getString("produceLicenseExpire"));
			inputProviderOrg_Model.setProduceLicense(rs.getString("produceLicense"));
			inputProviderOrg_Model.setSellLicenseID(rs.getString("sellLicenseID"));
			inputProviderOrg_Model.setSellLicenseExpire(rs.getString("sellLicenseExpire"));
			inputProviderOrg_Model.setSellLicense(rs.getString("sellLicense"));
			inputProviderOrg_Model.setPesticideLicenseID(rs.getString("pesticideLicenseID"));
			inputProviderOrg_Model.setPesticideLicenseExpire(rs.getString("pesticideLicenseExpire"));
			inputProviderOrg_Model.setPesticideLicense(rs.getString("pesticideLicense"));
			inputProviderOrg_Model.setFileExpire(rs.getString("fileExpire"));
			inputProviderOrg_Model.setDangerousLicenseID(rs.getString("dangerousLicenseID"));
			inputProviderOrg_Model.setDangerousLicenseExpire(rs.getString("dangerousLicenseExpire"));
			inputProviderOrg_Model.setDangerousLicense(rs.getString("dangerousLicense"));
			inputProviderOrg_Model.setBusinessLicenseID(rs.getString("businessLicenseID"));
			inputProviderOrg_Model.setBusinessLicenseExpire(rs.getString("businessLicenseExpire"));
			inputProviderOrg_Model.setBusinessLicense(rs.getString("businessLicense"));
			inputProviderOrg_Model.setRecordDate(rs.getString("recordDate"));
			inputProviderOrg_Model.setSubTypeId(rs.getInt("subTypeId"));
			inputProviderOrg_Model.setNote(rs.getString("note"));
			inputProviderOrg_List.add(inputProviderOrg_Model);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return inputProviderOrg_List;
   }
   /**
    * 向投入品供应组织表插入数据
    * @param inputProviderOrg_Model
    * @return
    */
   public static boolean saveInputProviderOrg(inputProviderOrgModel inputProviderOrg_Model)
   {
	   String sql="insert into InputProviderOrg values(seq_InputProviderOrg.nextval,?,?,?,to_date(?,'yyyy-MM-dd'),?,?,to_date(?,'yyyy-MM-dd'),?,?,to_date(?,'yyyy-MM-dd'),?,to_date(?,'yyyy-MM-dd'),?,to_date(?,'yyyy-MM-dd'),?,?,to_date(?,'yyyy-MM-dd'),?,to_date(?,'yyyy-MM-dd'),?,?)";
	   Connection conn=DBConnection.getConnection();
	   try {
		//PreparedStatement prst=conn.prepareStatement(sql);
		sql="insert into InputProviderOrg values(seq_InputProviderOrg.nextval,";
		sql += inputProviderOrg_Model.getOrgID()+",'";
		sql += inputProviderOrg_Model.getRecordCode() + "','";
		sql += inputProviderOrg_Model.getProduceLicenseID() + "',";
		sql += "to_date('" +inputProviderOrg_Model.getProduceLicenseExpire()+"','yyyy-MM-dd') ,'";
		sql += inputProviderOrg_Model.getProduceLicense() + "','";
		sql += inputProviderOrg_Model.getSellLicenseID() + "',";
		sql += "to_date('" +inputProviderOrg_Model.getSellLicenseExpire()+"','yyyy-MM-dd') ,'";
		sql +=inputProviderOrg_Model.getSellLicense() + "','";
		sql +=inputProviderOrg_Model.getPesticideLicenseID() + "',";
		sql += "to_date('" +inputProviderOrg_Model.getPesticideLicenseExpire()+"','yyyy-MM-dd') ,'";
		sql +=inputProviderOrg_Model.getPesticideLicense() + "',";
		sql += "to_date('" +inputProviderOrg_Model.getFileExpire()+"','yyyy-MM-dd') ,'";
		sql +=inputProviderOrg_Model.getDangerousLicenseID() + "',";
		sql += "to_date('" +inputProviderOrg_Model.getDangerousLicenseExpire()+"','yyyy-MM-dd') ,'";
		sql +=inputProviderOrg_Model.getDangerousLicense() + "','";
		sql +=inputProviderOrg_Model.getBusinessLicenseID() + "',";
		sql += "to_date('" +inputProviderOrg_Model.getBusinessLicenseExpire()+"','yyyy-MM-dd') ,'";
		sql +=inputProviderOrg_Model.getBusinessLicenseID() + "',";
		sql += "to_date('" +inputProviderOrg_Model.getRecordDate()+"','yyyy-MM-dd') ,";
		sql +=inputProviderOrg_Model.getSubTypeId() + ",'";
		sql +=inputProviderOrg_Model.getNote() + "')";
		
		//prst.setInt(1,inputProviderOrg_Model.getOrgID());
		//prst.setString(2,inputProviderOrg_Model.getRecordCode());
		//prst.setString(3,inputProviderOrg_Model.getProduceLicenseID());
		//prst.setString(4,inputProviderOrg_Model.getProduceLicenseExpire());
		//prst.setString(5,inputProviderOrg_Model.getProduceLicense());
		//prst.setString(6,inputProviderOrg_Model.getSellLicenseID());
		//prst.setString(7,inputProviderOrg_Model.getSellLicenseExpire());
		//prst.setString(8,inputProviderOrg_Model.getSellLicense());
		//prst.setString(9,inputProviderOrg_Model.getPesticideLicenseID());
		//prst.setString(10,inputProviderOrg_Model.getPesticideLicenseExpire());
		//prst.setString(11,inputProviderOrg_Model.getPesticideLicense());
		//prst.setString(12,inputProviderOrg_Model.getFileExpire());
		//prst.setString(13,inputProviderOrg_Model.getDangerousLicenseID());
		//prst.setString(14,inputProviderOrg_Model.getDangerousLicenseExpire());
		//prst.setString(15,inputProviderOrg_Model.getDangerousLicense());
		//prst.setString(16,inputProviderOrg_Model.getBusinessLicenseID());
		//prst.setString(17,inputProviderOrg_Model.getBusinessLicenseExpire());
		//prst.setString(18,inputProviderOrg_Model.getBusinessLicense());
		//prst.setString(19,inputProviderOrg_Model.getRecordDate());
		//prst.setInt(20,inputProviderOrg_Model.getSubTypeId());
		//System.out.println("inputProviderOrg_Model.getSubTypeId()="+inputProviderOrg_Model.getSubTypeId());
		//prst.setString(21,inputProviderOrg_Model.getNote());
		Statement stmt = conn.createStatement();
		System.out.println(sql);
		int bln=stmt.executeUpdate(sql);
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
    * 删除投入品供应组织表的部分数据
    * @param InputProviderOrgID
    * @return
    */
   public static boolean deleteInput(int InputProviderOrgID)
   {
	   String sql="delete from InputProviderOrg where InputProviderOrgID=?";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		prst.setInt(1, InputProviderOrgID);
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
    * 查询投入品供应组织表的所有数据
    * @return
    */
   public static int selectInputProviderOrgCount()
   {
	   int inputProviderOrgCount=0;
	   String sql="select count(*) inputProviderOrgCount from InputProviderOrg";
	   Connection conn=DBConnection.getConnection();
	   try {
		PreparedStatement prst=conn.prepareStatement(sql);
		ResultSet rs=prst.executeQuery();
		while(rs.next())
		{
			inputProviderOrgCount=rs.getInt(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return inputProviderOrgCount;
   }
}
