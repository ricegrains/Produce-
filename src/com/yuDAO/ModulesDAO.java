package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.ModuleModel;

public class ModulesDAO {
	/***
	 * 查找所有用户
	 * @return
	 */
	 public static List<ModuleModel> findallinfo(){
	    	String sql="select moduleid,modulename,note from modules";
//	    	System.out.println("---Moudles getuserinfo  sql="+sql);
	    	List Moudlelist=new ArrayList();
	    	
	    	try {
				Connection conn = DBConnection.getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next()){
					ModuleModel mo=new ModuleModel();
					mo.setModuleid(rs.getString("moduleid"));
					mo.setModulename(rs.getString("modulename"));
					mo.setNote(rs.getString("note"));
		
					Moudlelist.add(mo);
					
//					System.out.println("-----模块id="+rs.getString("moduleid"));
//					System.out.println("-----模块名称="+rs.getString("modulename"));
				}
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return Moudlelist;

	    }
	 /***
	  * 添加
	  * @param module
	  * @return
	  */
	 public static boolean insertmodule(ModuleModel module){
		 
		 String sql="insert into modules values(?,?,?)";
//		 System.out.println("----module   insert sql="+sql);
		 try {
			
			 Connection conn=DBConnection.getConnection();
			 PreparedStatement prst=conn.prepareStatement(sql);
			 
			 prst.setString(1, module.getModuleid());
			 prst.setString(2, module.getModulename());
			 prst.setString(3, module.getNote());
		 
//			 System.out.println("hhhhhhhhhhhh="+module.getModuleid());
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
	 
	 
	 /**
	  *根据moduleid查找
	  * @param moduleid
	  * @return
	  */
	public static ModuleModel findinfoByid(String moduleid) {
		
		ModuleModel mod=new ModuleModel();
		String sql="select * from modules where moduleid='"+moduleid+"'";
//		System.out.println("-------- module findinfobyid sql="+sql);
		
		try {
			
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
				mod.setModulename(rs.getString("modulename"));
				mod.setNote(rs.getString("note"));
				mod.setModuleid(rs.getString("moduleid"));
				
			}
//			System.out.println("---- 修改moduleid="+rs.getString("modulename"));
//			System.out.println("---- 修改moduleid="+rs.getString("note"));
//			System.out.println("---- 修改moduleid="+rs.getString("moduleid"));
			
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mod;
	}
	 
	 /***
	  * 修改模块信息
	  * @param mod
	  * @return
	  */
	 public static boolean updatmodule(ModuleModel mod){
		 String sql="update modules set modulename=?,note=? where moduleid=?";
		 try {
			Connection conn=DBConnection.getConnection();
			 PreparedStatement prst=conn.prepareStatement(sql);
			 
			 prst.setString(1, mod.getModulename());
			 prst.setString(2, mod.getNote());
			 prst.setString(3, mod.getModuleid());
			 
			 int i=prst.executeUpdate();
			 if(i>0){
				 return true;
			 }
				prst.close();
				prst.close();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		 
	 }
	 /**
	  * 删除
	  * @param moduleid
	  * @return
	  */
	 public static boolean deletemodule(String moduleid){
		 String sql="delete from modules where moduleid=?";
		 
		 try {
			Connection conn=DBConnection.getConnection();
			 PreparedStatement prst=conn.prepareStatement(sql);
			 prst.setString(1, moduleid);
			 
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
	
	
}
