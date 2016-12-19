package com.ht.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.Model.Contractsignplots;
import com.ht.Model.BreedModel;
import com.ht.Model.CultivateRotationsModel;

public class BreedDAO {


	public static ArrayList findBreed() {
		ArrayList breedes = new ArrayList();
		try {
			
			String sql = "select * from Pond";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			while(rs.next()){
				
				BreedModel breed = new BreedModel();
				
				breed.setPondid(rs.getInt("pondid"));
				breed.setContractsignplotsid(rs.getInt("contractsignplotsid"));
				breed.setWatercharacterize(rs.getString("watercharacterize"));
				breed.setNote(rs.getString("note"));
				
				breedes.add(breed);
			}			
			conn.close();
			prst.close();
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return breedes;
	}


	public static boolean insertBreed(BreedModel breed) {
		try {
			String sql = "insert into Pond values(?,?,?,?)";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, breed.getPondid());
			prst.setInt(2, breed.getContractsignplotsid());
			prst.setString(3, breed.getWatercharacterize());
			prst.setString(4, breed.getNote());
			
			int i=prst.executeUpdate();
			
			prst.close();
			conn.close();
			if(i>0){
				return true;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}


	public static List findAllContractSignPlotsID() {
		List<Contractsignplots> list=new ArrayList<Contractsignplots>();
	     try {
	    	 
			String sql="select ContractSignPlotsID,PlotType from ContractSignPlots ";
			 Connection conn=DBConnection.getConnection();
			 PreparedStatement prst=conn.prepareStatement(sql);
			
			 ResultSet rs=prst.executeQuery();
			 
			 while(rs.next()){
				 Contractsignplots Contractsignplots=new Contractsignplots();
				
				 Contractsignplots.setContractsignplotsid(rs.getBigDecimal("contractsignplotsid"));
				 Contractsignplots.setPlottype(rs.getString("plottype"));
System.out.println(rs.getString("plottype"));
				    list.add(Contractsignplots);
			 }
			 conn.close();
			 prst.close();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return list;
	}


	public static BreedModel findPondId(int pondid) {
		BreedModel breed = new BreedModel();
		try {
			String sql="select * from Pond where PondID="+pondid;
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
		
			while(rs.next()){
				
				breed.setPondid(rs.getInt("pondid"));
				breed.setContractsignplotsid(rs.getInt("contractsignplotsid"));
				breed.setWatercharacterize(rs.getString("watercharacterize"));
				breed.setNote(rs.getString("note"));
				
				

//System.out.println(rs.getInt("pondid"));
//System.out.println(rs.getInt("contractsignplotsid"));
//System.out.println(rs.getString("watercharacterize"));
//System.out.println(rs.getString("note"));
				
			}
			
			 conn.close();
			  prst.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return breed;
	}


	public static boolean updateBreed(BreedModel breed) {
		try {
			String sql="update Pond set ContractSignPlotsID=?,WaterCharacterize=?,Note=? where PondID=? ";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, breed.getContractsignplotsid());
			prst.setString(2, breed.getWatercharacterize());
			prst.setString(3, breed.getNote());
			prst.setInt(4, breed.getPondid());
			
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


	public static boolean deletePondID(int pondid) {
		try {
			String sql = "Delete from Pond where PondID = ?";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, pondid);
			
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
	
	
	public static boolean insertBreedLoop(CultivateRotationsModel loop) {
		try {
			String sql = "insert into CultivateRotations values(?,?,?,?,?,?)";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, loop.getCultivaterotationid());
			prst.setInt(2, loop.getContractsignplotsid());
			prst.setString(3, loop.getFishingdate());
			prst.setString(4, loop.getPutfrydate());
			prst.setInt(5, loop.getObjectid());
			prst.setString(6, loop.getNote());
			
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




	public static ArrayList findBreedLoop() {
		ArrayList loops = new ArrayList();
		try {
			
			String sql = "select * from CultivateRotations";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			while(rs.next()){
				
				CultivateRotationsModel loop = new CultivateRotationsModel();
				
				loop.setCultivaterotationid(rs.getInt("cultivaterotationid"));
				loop.setContractsignplotsid(rs.getInt("contractsignplotsid"));
				loop.setFishingdate(rs.getString("fishingdate"));
				loop.setPutfrydate(rs.getString("putfrydate"));
				loop.setObjectid(rs.getInt("objectid"));
				loop.setNote(rs.getString("note"));
				
				loops.add(loop);
			}			
			conn.close();
			prst.close();
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return loops;
	}


	public static CultivateRotationsModel findCultivateRotationID(int cultivaterotationid) {
		CultivateRotationsModel loop = new CultivateRotationsModel();
		try {
			String sql="select * from CultivateRotations where CultivateRotationID="+cultivaterotationid;
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
		
			while(rs.next()){
				
				loop.setCultivaterotationid(rs.getInt("cultivaterotationid"));
				loop.setContractsignplotsid(rs.getInt("contractsignplotsid"));
				loop.setFishingdate(rs.getString("fishingdate"));
				loop.setPutfrydate(rs.getString("putfrydate"));
				loop.setNote(rs.getString("note"));
				
			}
			
			 conn.close();
			  prst.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return loop;
	}


	public static boolean updateBreedLoop(CultivateRotationsModel loop) {
		try {
			String sql="update CultivateRotations set ContractSignPlotsID=?,FishingDate=?,PutFryDate=?,Note=? where CultivateRotationID=? ";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, loop.getContractsignplotsid());
			prst.setString(2, loop.getPutfrydate());
			prst.setString(3, loop.getFishingdate());
			prst.setString(4, loop.getNote());
			prst.setInt(5, loop.getCultivaterotationid());
			
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


	public static boolean deleteCultivateRotationID(int cultivaterotationid) {
		try {
			String sql = "Delete from CultivateRotations where CultivateRotationID = ?";
			Connection conn = DBConnection.getConnection();
			PreparedStatement prst = conn.prepareStatement(sql);
			
			prst.setInt(1, cultivaterotationid);
			
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
