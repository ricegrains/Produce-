package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.InstrumentModel;

public class InstrumentDAO {
	/***
	 * 所有信息
	 * @return
	 */
	public static List<InstrumentModel> findinstrument(){
		List instrumentlist=new ArrayList();
		String sql="select * from instrument";
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next()){
				InstrumentModel ins=new InstrumentModel();
				
				ins.setInstrumentid(rs.getInt("instrumentid"));
				ins.setInstrumentname(rs.getString("instrumentname"));
				ins.setType(rs.getString("type"));
				ins.setPrice(rs.getString("price"));
				ins.setVendorname(rs.getString("vendorname"));
				ins.setPurchaseddate(rs.getString("purchaseddate"));
				ins.setCustodian(rs.getString("custodian"));
				ins.setNote(rs.getString("note"));
				
				instrumentlist.add(ins);
			}
			rs.close();
			prst.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return instrumentlist;
	}
	/***
	 * 添加设备
	 * @param ins
	 * @return
	 */
	public static boolean insertinstrument(String sql){
		
//		String sql="insert into instrument values()";
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			
//			prst.setInt(1, ins.getInstrumentid());
//			prst.setString(2,ins.getInstrumentname());
//			prst.setString(3, ins.getType());
//			prst.setString(4,ins.getPrice());
//			prst.setString(5, ins.getVendorname());
//			prst.setString(6, ins.getPurchasedate());
//			prst.setString(7, ins.getCustodian());
//			prst.setString(8, ins.getNote());
			
			int i=prst.executeUpdate();
			if(i>0){
				return true;
			}
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	/***
	 * 根据ID查找设备
	 * @param instrumentid
	 * @return
	 */
	public static InstrumentModel findinsById(int instrumentid){
		InstrumentModel instrument=new InstrumentModel();
		String sql="select * from instrument where instrumentid="+instrumentid;
		System.out.println(" findinsByid sql="+sql);
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next()){
				System.out.println("已进入！");
				instrument.setInstrumentid(rs.getInt("instrumentid"));
				instrument.setInstrumentname(rs.getString("instrumentname"));
				instrument.setType(rs.getString("type"));
				instrument.setPrice(rs.getString("price"));
				instrument.setVendorname(rs.getString("vendorname"));
				instrument.setPurchaseddate(rs.getString("purchaseddate"));
				instrument.setCustodian(rs.getString("custodian"));
				instrument.setNote(rs.getString("note"));
			
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return instrument;
	}
	/***
	 * 根据ID修改设备
	 * @param instrument
	 * @return
	 */
	public static boolean updateins(String  sql2){
		
//		String sql="update instrument set instrumentname=?,type=?,price=?,vendorname=?,purchaseddate=?,custodian=?,note=? where instrumentid=?";
		
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql2);
			
//			prst.setString(1, instrument.getInstrumentname());
//			prst.setString(2, instrument.getType());
//			prst.setString(3, instrument.getPrice());
//			prst.setString(4, instrument.getVendorname());
//			prst.setString(5, instrument.getPurchaseddate());
//			prst.setString(6, instrument.getCustodian());
//			prst.setString(7, instrument.getNote());
//			prst.setInt(8, instrument.getInstrumentid());
			
			
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
	/***
	 * 根据ID删除设备
	 * @param instrumentid
	 * @return
	 */
	public static boolean deleteins(int instrumentid){
	
		String sql="Delete from instrument where instrumentid=?";
		System.out.println("delete instrument sql="+sql);
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			
			prst.setInt(1,instrumentid);
			
			int i=prst.executeUpdate();
			if(i>0){
				return true;
			}
			prst.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		}
		return false;
	}
}
