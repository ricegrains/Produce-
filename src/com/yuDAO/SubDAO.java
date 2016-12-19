package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.SubtypesetModel;
import com.yuModel.TestPlanModel;

public class SubDAO {
	public static List<SubtypesetModel> findobjectinfo(){
		String sql="select * from subtypeset where typeid=10002";
		
		List subtypeset=new ArrayList();
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
				SubtypesetModel sub=new SubtypesetModel();
				
				sub.setSubtypeid(rs.getInt("subtypeid"));
				sub.setSubtypename(rs.getString("subtypename"));
				sub.setTypeid(rs.getString("typeid"));
				subtypeset.add(sub);
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subtypeset;
		
	}
	public static List<SubtypesetModel> findpalninfo(){
		String sql="select * from subtypeset where typeid=10007";
		
		List subtypeset=new ArrayList();
		try {
			Connection conn=DBConnection.getConnection();    
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
				SubtypesetModel sub=new SubtypesetModel();
				
				sub.setSubtypeid(rs.getInt("subtypeid"));
				sub.setSubtypename(rs.getString("subtypename"));
				sub.setTypeid(rs.getString("typeid"));
				subtypeset.add(sub);
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subtypeset;
	}
	public static List<SubtypesetModel> findindustry() {
	String sql="select * from subtypeset where typeid=10001";
		
		List subtypeset=new ArrayList();
		try {
			Connection conn=DBConnection.getConnection();    
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
				SubtypesetModel sub=new SubtypesetModel();
				
				sub.setSubtypeid(rs.getInt("subtypeid"));
				sub.setSubtypename(rs.getString("subtypename"));
				sub.setTypeid(rs.getString("typeid"));
				subtypeset.add(sub);
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subtypeset;
	}
	/***
	 * Ìí¼ÓÐÞ¸ÄÄÚÈÝ
	 * @param sql
	 * @return
	 */
	public static boolean insertupdateset(String sql) {
		
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			
			int i=prst.executeUpdate();
			if(i>0){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	/**
	 * É¾³ý
	 * @param subtypeid
	 * @return
	 */
	public static boolean delete(int subtypeid){
		String sql="delete from subtypeset where subtypeid=?";
		
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setInt(1, subtypeid);
			
			int i=prst.executeUpdate();
			if(i>0){
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	
	
	public static List<SubtypesetModel> findall() {
		String sql="select * from subtypeset";
			
			List subtypeset=new ArrayList();
			try {
				Connection conn=DBConnection.getConnection();    
				PreparedStatement prst=conn.prepareStatement(sql);
				ResultSet rs=prst.executeQuery();
				
				while(rs.next()){
					SubtypesetModel sub=new SubtypesetModel();
					
					sub.setSubtypeid(rs.getInt("subtypeid"));
					sub.setSubtypename(rs.getString("subtypename"));
					sub.setTypeid(rs.getString("typeid"));
					subtypeset.add(sub);
				}
				rs.close();
				prst.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return subtypeset;
		}
	
	public static SubtypesetModel findByid(int subtypeid) {
		SubtypesetModel sub =new SubtypesetModel();
		String sql="select * from subtypeset where subtypeid="+subtypeid;
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
					sub.setSubtypeid(rs.getInt("subtypeid"));
					sub.setSubtypename(rs.getString("subtypename"));
					sub.setTypeid(rs.getString("typeid"));
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return sub;
		
	}
}
