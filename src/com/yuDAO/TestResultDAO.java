package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.TestResultModel;

public class TestResultDAO {
	/**
	 * 查询检测结果
	 * @return
	 */
	public static List<TestResultModel> findresult(){
		List result=new ArrayList();
		String sql="select * from testresult";
		System.out.println("select testresult sql="+sql);
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
				TestResultModel res=new TestResultModel();
				
				res.setTestresultid(rs.getInt("testresultid"));
				res.setOperationperson(rs.getString("operationperson"));
				res.setOperationtime(rs.getString("operationtime"));
				res.setResult(rs.getString("result"));
				res.setCategory(rs.getString("category"));
				res.setObjectname(rs.getString("objectname"));
				res.setTestsetid(rs.getInt("testsetid"));
				res.setTestindexid(rs.getInt("testindexid"));
				res.setInstrumentid(rs.getInt("instrumentid"));
				res.setNote(rs.getString("note"));
				
				result.add(res);
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 根据ID查找
	 * @param testresultid
	 * @return
	 */
	public static TestResultModel findresultById(int testresultid){
		TestResultModel res=new TestResultModel();
		String sql="select * from testresult where testresultid="+testresultid;
		
		try {
			
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
				res.setTestresultid(rs.getInt("testresultid"));
				res.setOperationperson(rs.getString("operationperson"));
				res.setOperationtime(rs.getString("operationtime"));
				res.setResult(rs.getString("result"));
				res.setCategory(rs.getString("category"));
				res.setObjectname(rs.getString("objectname"));
				res.setTestsetid(rs.getInt("testsetid"));
				res.setTestindexid(rs.getInt("testindexid"));
				res.setInstrumentid(rs.getInt("instrumentid"));
				res.setNote(rs.getString("note"));
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	/**
	 * 根据ID删除检测结果
	 * @param testresultid
	 * @return
	 */
	public static boolean delete(int testresultid){
		String sql="delete from testresult where testresultid=?";
		
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			
			prst.setInt(1, testresultid);
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
	 * 添加检测结果
	 * @param sql
	 * @return
	 */
	public static boolean insertresult(String sql) {
		
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);

			
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
