package com.ht.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DBC.DBConnection;

import com.ht.Model.CultivateOperationsModel;
import com.ht.Model.CultivateOtherOperationsModel;

public class CultivateOperationsDAO {

	public static ArrayList findCultivateOperations() {
		ArrayList CultivateOperationses = new ArrayList();
		try {
			String sql="select * from CultivateOperations";
			Connection  conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			
			while(rs.next()){
				CultivateOperationsModel CultivateOperations = new CultivateOperationsModel();
				
				CultivateOperations.setCultivateoperationid(rs.getInt("cultivateoperationid"));
				CultivateOperations.setPutfryid(rs.getInt("putfryid"));
				CultivateOperations.setOperatetime(rs.getString("operatetime"));
				CultivateOperations.setOperateperson(rs.getString("operateperson"));
				CultivateOperations.setOperateid(rs.getInt("operateid"));
				CultivateOperations.setCategoryid(rs.getInt("categoryid"));
				CultivateOperations.setObjectid(rs.getInt("objectid"));
				CultivateOperations.setOperationmethod(rs.getString("operationmethod"));
				CultivateOperations.setWeigh(rs.getString("weigh"));
				CultivateOperations.setDiseasename(rs.getString("diseasename"));
				CultivateOperations.setBrokeOuttime(rs.getString("brokeOuttime"));
				CultivateOperations.setNote(rs.getString("note"));
				
				CultivateOperationses.add(CultivateOperations);
				
			}
			
			conn.close();
			prst.close();
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return CultivateOperationses;
	}

	public static ArrayList findCultivateOtherOperations() {
		ArrayList cultivateotheroperationses = new ArrayList();
		
		try {
			String sql="select * from CultivateOtherOperations";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			
			while(rs.next()){
				CultivateOtherOperationsModel cultivateotheroperations = new CultivateOtherOperationsModel();
				
				cultivateotheroperations.setCultivateotheroperationid(rs.getInt("cultivateotheroperationid"));
				cultivateotheroperations.setPutfryid(rs.getInt("putfryid"));
				cultivateotheroperations.setFishingdate(rs.getString("fishingdate"));
				cultivateotheroperations.setLogdate(rs.getString("logdate"));
				cultivateotheroperations.setOperatetime(rs.getString("operatetime"));
				cultivateotheroperations.setOperatename(rs.getString("operatename"));
				cultivateotheroperations.setOperateperson(rs.getString("operateperson"));
				cultivateotheroperations.setOxygenationtime(rs.getString("oxygenationtime"));
				cultivateotheroperations.setExchangepower(rs.getString("exchangepower"));
				cultivateotheroperations.setIntime(rs.getString("intime"));
				cultivateotheroperations.setDraintime(rs.getString("draintime"));
				cultivateotheroperations.setNote(rs.getString("note"));
				
				cultivateotheroperationses.add(cultivateotheroperations);
				
			}
			
			conn.close();
			prst.close();
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cultivateotheroperationses;
	}

	public static boolean insertWork(CultivateOperationsModel work) {
		try {
			String sql="insert into CultivateOperations values(?,?,?,?,?,?,?,?,?,?,?,?); ";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
		
			prst.setInt(1, work.getCultivateoperationid());
			prst.setInt(2, work.getPutfryid());
			prst.setString(3, work.getOperatetime());
			prst.setString(4, work.getOperateperson());
			prst.setInt(5, work.getOperateid());
			prst.setInt(6, work.getCategoryid());
			prst.setInt(7, work.getObjectid());
			prst.setString(8, work.getOperationmethod());
			prst.setString(9, work.getWeigh());
			prst.setString(10, work.getDiseasename());
			prst.setString(11, work.getBrokeOuttime());
			prst.setString(12, work.getNote());
			
			int i=prst.executeUpdate();
			
			prst.close();
			conn.close();
			
			if(i>0){
				return true;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

}
