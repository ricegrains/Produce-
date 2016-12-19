package com.ht.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DBC.DBConnection;

import com.ht.Model.PutFryModel;

public class PutFryDAO {

	public static ArrayList findPutFry() {
		ArrayList putfries = new ArrayList();
		try {
			String sql = "Select * from PutFry";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			while (rs.next()) {

				PutFryModel putfry = new PutFryModel();

				putfry.setPutfryid(rs.getInt("putfryid"));
				putfry.setContractsignplotsid(rs.getInt("contractsignplotsid"));
				putfry.setFishingdate(rs.getString("fishingdate"));
				putfry.setObjectid(rs.getInt("objectid"));
				putfry.setPutfrydate(rs.getString("putfrydate"));
				putfry.setQuantity(rs.getString("quantity"));
				putfry.setType(rs.getString("type"));
				putfry.setWeight(rs.getString("weight"));
				putfry.setComefrom(rs.getString("comefrom"));
				putfry.setQuarantine(rs.getInt("quarantine"));
				putfry.setNote(rs.getString("note"));

				putfries.add(putfry);
			}
			conn.close();
			prst.close();
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return putfries;
	}

	public static boolean insertPutFry(PutFryModel putfry) {
		try {
			String sql = "insert into PutFry values(?,?,?,?,?,?,?,?,?,?,?)";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);

			prst.setInt(1, putfry.getPutfryid());
			prst.setInt(2, putfry.getContractsignplotsid());
			prst.setString(3, putfry.getFishingdate());
			prst.setInt(4, putfry.getObjectid());
			prst.setString(5, putfry.getPutfrydate());
			prst.setString(6, putfry.getQuantity());
			prst.setString(7, putfry.getType());
			prst.setString(8, putfry.getWeight());
			prst.setString(9, putfry.getComefrom());
			prst.setInt(10, putfry.getQuarantine());
			prst.setString(11, putfry.getNote());

			int i = prst.executeUpdate();

			prst.close();
			conn.close();
			if (i > 0) {
				return true;

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return false;
	}
	
	public static PutFryModel findPutFry(int putfryid) {
		PutFryModel putfry = new PutFryModel();
		try {
			String sql="select * from PutFry where PutFryID="+putfryid;
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
		
			while(rs.next()){
				
				putfry.setPutfryid(rs.getInt("putfryid"));
				putfry.setContractsignplotsid(rs.getInt("contractsignplotsid"));
				putfry.setFishingdate(rs.getString("fishingdate"));
				putfry.setObjectid(rs.getInt("objectid"));
				putfry.setPutfrydate(rs.getString("putfrydate"));
				putfry.setQuantity(rs.getString("quantity"));
				putfry.setType(rs.getString("type"));
				putfry.setWeight(rs.getString("weight"));
				putfry.setComefrom(rs.getString("comefrom"));
				putfry.setQuarantine(rs.getInt("quarantine"));
				putfry.setNote(rs.getString("note"));
				
			}
			
			 conn.close();
			  prst.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return putfry;
	}

	public static boolean updatePutFry(PutFryModel putfry) {
		try {
			String sql="update PutFry set ContractSignPlotsID=?,FishingDate=?,ObjectID=?,PutFryDate=?,Quantity=?,Type=?,Weight=?,ComeFrom=?,Quarantine=?,Note=? where PutFryID=? ";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, putfry.getContractsignplotsid());
			prst.setString(2, putfry.getFishingdate());
			prst.setInt(3, putfry.getObjectid());
			prst.setString(4, putfry.getPutfrydate());
			prst.setString(5, putfry.getQuantity());
			prst.setString(6, putfry.getType());
			prst.setString(7, putfry.getWeight());
			prst.setString(8, putfry.getComefrom());
			prst.setInt(9, putfry.getQuarantine());
			prst.setString(10, putfry.getNote());
			prst.setInt(11, putfry.getPutfryid());
			
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


	public static boolean deletePutFryID(int putfryid) {
		try {
			String sql = "Delete from PUtFry where PutFryID = ?";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, putfryid);
			
			int i = prst.executeUpdate();
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
