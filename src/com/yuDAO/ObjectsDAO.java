package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.ObjectsModel;

public class ObjectsDAO 
{
   /***
    *查询所有农产品类型 
    */
   public static List<ObjectsModel> findallobjects(){
	   String sql="select * from objects";
	   List objectlist=new ArrayList();
	   
	   try {
		Connection conn=DBConnection.getConnection();
		   PreparedStatement prst=conn.prepareStatement(sql);
		   ResultSet rs=prst.executeQuery();
		   while(rs.next()){
			   
			   ObjectsModel obj=new ObjectsModel();
			   obj.setObjectid(rs.getInt("objectid"));
			   obj.setObjectname(rs.getString("objectname"));
			   obj.setSubtypeid(rs.getInt("subtypeid"));
			   
			   objectlist.add(obj);
		   }
		    rs.close();
			prst.close();
			conn.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return objectlist;
   }
   /**
    * 添加农产品
    * @param object
    * @return
    */
   public static boolean insertobj(String sql){
//	   String sql="insert into objects values(?,?,?)";

//	   String sql="insert into objects values(seq_Objects.Nextval,?,?)";
//	   System.out.println("objecedao  insertobject sql=="+sql);
	   try {
		Connection conn=DBConnection.getConnection();
		   PreparedStatement prst=conn.prepareStatement(sql);
		   
//		   prst.setInt(1, object.getObjectid());
//		   prst.setString(2, object.getObjectname());
//		   prst.setInt(3, object.getSubtypeid());
		   
		   int i=prst.executeUpdate();
		   if(i>0){
			   return true;
		   }
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return false;
   }
   /***
    * 根据objectid查询
    * @param objectid
    * @return
    */
   public static ObjectsModel findById(int objectid){
	   
	   ObjectsModel obj=new ObjectsModel();
	   String sql="select * from objects where objectid="+objectid;
	   System.out.println("objectdao findById sql="+sql);
	   
	   try {
		Connection conn =DBConnection.getConnection();
		   PreparedStatement prst=conn.prepareStatement(sql);
		   ResultSet rs=prst.executeQuery();
		   while(rs.next()){
			   System.out.println("进入！");
			   obj.setObjectname(rs.getString("objectname"));
			   obj.setSubtypeid(rs.getInt("subtypeid"));
			   obj.setObjectid(rs.getInt("objectid"));
			   System.out.println("----------objectid=="+rs.getInt("objectid"));
				  System.out.println("--------objectname=="+rs.getString("objectname"));
				  System.out.println("---------subtypeid=="+rs.getInt("subtypeid"));
		   }
		  
		   rs.close();
			prst.close();
			conn.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return obj;
	  
   }
   
   /**
    * 修改信息
    * @param object
    * @return
    */
   public static boolean updateobj(String sql){
	   
//	   String sql="update objects set objectname=?,subtypeid=? where objectid=?";
	   
	   try {
		Connection conn=DBConnection.getConnection();
		PreparedStatement prst=conn.prepareStatement(sql);
		
//		prst.setString(1, object.getObjectname());
//		prst.setInt(2, object.getSubtypeid());
//		prst.setInt(3, object.getObjectid());
		
		int i=prst.executeUpdate();
		if(i>0){
			return true;
		}
		prst.close();
		conn.close();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return false;
   }
   /***
    * 删除农产品
    * @param objectid
    * @return
    */
   public static boolean deleteobj(int objectid){
	   
	   String sql="delete from objects where objectid=?";
	   try {
		Connection conn=DBConnection.getConnection();
		PreparedStatement prst=conn.prepareStatement(sql);
		
		prst.setInt(1, objectid);
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
}
