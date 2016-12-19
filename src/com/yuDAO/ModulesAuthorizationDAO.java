package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.ModuleAuthorizationModel;

public class ModulesAuthorizationDAO {
	/**
	 * 查找所有用户
	 * @return
	 */
	public static List<ModuleAuthorizationModel> fintallinfo(){
		List list=new ArrayList();
		String sql="select * from moduleauthorization";
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next()){
				ModuleAuthorizationModel author=new ModuleAuthorizationModel();
				author.setModuleid(rs.getString("moduleid"));
				author.setUserid(rs.getString("userid"));
				author.setNote(rs.getString("note"));
				
				list.add(author);
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	/***
	 * 添加授权模块
	 * @param author
	 * @return
	 */
	public static boolean insertmoduleauthor(ModuleAuthorizationModel author){
		String sql="insert into moduleauthorization values(?,?,?)";
		
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			
			prst.setString(1, author.getUserid());
			prst.setString(2, author.getModuleid());
			prst.setString(3, author.getNote());
			
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
	 * 修改授权模块信息
	 * @param author
	 * @return
	 */
	public static boolean updatemoduleauthor(ModuleAuthorizationModel author){
		
		String sql="update ModuleAuthorization set moduleid=?,note=? where userid=?";
		System.out.println("sql"+sql);
		try {
			Connection conn=DBConnection.getConnection();
			 PreparedStatement prst=conn.prepareStatement(sql);
			 
			 prst.setString(1, author.getModuleid());
			 prst.setString(2, author.getNote());
			 prst.setString(3, author.getUserid());
			 
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
	 * 删除授权
	 * @param userid
	 * @return
	 */
	public static boolean deletemoduleauthor(String userid){
		
		String sql="delete from moduleauthorization where userid=?";
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			
			prst.setString(1, userid);
			
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
	 * 根据id查找
	 * @param userid
	 * @return
	 */
	public static ModuleAuthorizationModel findinfoByid(String userid){
		
		ModuleAuthorizationModel author=new ModuleAuthorizationModel();
		String sql="select * from moduleauthorization where userid='"+userid+"'";
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next()){
				author.setModuleid(rs.getString("moduleid"));
				author.setUserid(rs.getString("userid"));
				author.setNote(rs.getString("note"));
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return author;
		
	}
}
