package com.ht.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DBC.DBConnection;

import com.ht.Model.CultivateLogsModel;

public class LookLogDAO {

	public static ArrayList findLookLog() {
		ArrayList loges = new ArrayList();
		
		try {
			String sql = "select * from CultivateLogs";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			
			while(rs.next()){
				CultivateLogsModel log = new CultivateLogsModel();
				log.setCultivatelogid(rs.getInt("cultivatelogid"));
				log.setPutfryid(rs.getInt("putfryid"));
				log.setLogdate(rs.getString("logdate"));
				log.setTemperature(rs.getString("temperature"));
				log.setPh(rs.getString("ph"));
				log.setNhn(rs.getString("nhn"));
				log.setNit(rs.getString("nit"));
				log.setDissolvedoxygen(rs.getString("dissolvedoxygen"));
				log.setNote(rs.getString("note"));
				
				loges.add(log);
				
			}
			
			conn.close();
			prst.close();
			rs.close();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return loges;
	}

	public static CultivateLogsModel findCultivateLogID(int cultivatelogid) {
		CultivateLogsModel log = new CultivateLogsModel();
		try {
			String sql = "select * from CultivateLogs where CultivateLogID = " + cultivatelogid;
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			
			while(rs.next()){
				log.setCultivatelogid(rs.getInt("cultivatelogid"));
				log.setPutfryid(rs.getInt("putfryid"));
				log.setLogdate(rs.getString("logdate"));
				log.setTemperature(rs.getString("temperature"));
				log.setPh(rs.getString("ph"));
				log.setNhn(rs.getString("nhn"));
				log.setNit(rs.getString("nit"));
				log.setDissolvedoxygen(rs.getString("dissolvedoxygen"));
				log.setNote(rs.getString("note"));
			}
			
			conn.close();
			prst.cancel();
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return log;
	}

	public static boolean updatLookLog(CultivateLogsModel log) {
		try {
			String sql="update CultivateLogs set PutFryID=?,LogDate=?,Temperature=?,PH=?,NHN=?,NIT=?,DissolvedOxygen=?,Note=? where CultivateLogID=? ";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			
			prst.setInt(1, log.getPutfryid());
			prst.setString(2, log.getLogdate());
			prst.setString(3, log.getTemperature());
			prst.setString(4, log.getPh());
			prst.setString(5, log.getNhn());
			prst.setString(6, log.getNit());
			prst.setString(7, log.getDissolvedoxygen());
			prst.setString(8, log.getDissolvedoxygen());
			prst.setInt(9, log.getCultivatelogid());
			
			int i = prst.executeUpdate();
			
			if(i>0){
				return true;
			}
			
			conn.close();
			prst.close();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return false;
	}

}
