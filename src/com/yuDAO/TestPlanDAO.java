package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.TestPlanModel;

public class TestPlanDAO {
	/**
	 * 查询出所有检测计划
	 * @return
	 */
	public static List<TestPlanModel> findAllplan(){
		List planlist=new ArrayList();
		
		String sql="select * from testplan";
		System.out.println("findAllplan sql="+sql);
		try {
			
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next()){
				System.out.println("已进入！");
				TestPlanModel plan=new TestPlanModel();
				
				plan.setTestplanid(rs.getInt("testplanid"));
				plan.setIssueorgid(rs.getInt("issueorgid"));
				plan.setExecutionorgid(rs.getInt("executionorgid"));
				plan.setIssuedate(rs.getString("issuedate"));
				plan.setSchedulefinishdate(rs.getString("schedulefinishdate"));
				plan.setAssignlevel(rs.getInt("assignlevel"));
				plan.setPlanquantity(rs.getInt("planquantity"));
				plan.setFinishedquantity(rs.getInt("finishedquantity"));
				plan.setPassamount(rs.getInt("passamount"));
				plan.setPassppercentage(rs.getString("passppercentage"));
				plan.setNote(rs.getString("note"));
				
				planlist.add(plan);
				
				System.out.println("testplanid="+rs.getInt("testplanid"));
				System.out.println("issueorgid="+rs.getInt("issueorgid"));
				System.out.println("executionorgid="+rs.getInt("executionorgid"));
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return planlist;
	}
/**
 * 添加检测计划
 * @param sql
 * @return
 */
	public static boolean insertplan(String sql) {
		
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
/***
 * 根据ID查找检测计划
 * @param testplanid
 * @return
 */

	public static TestPlanModel findpalnByid(int testplanid) {
		TestPlanModel plan=new TestPlanModel();
		String sql="select * from testplan";
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			
			while(rs.next()){
				plan.setTestplanid(rs.getInt("testplanid"));
				plan.setIssueorgid(rs.getInt("issueorgid"));
				plan.setExecutionorgid(rs.getInt("executionorgid"));
				plan.setIssuedate(rs.getString("issuedate"));
				plan.setSchedulefinishdate(rs.getString("schedulefinishdate"));
				plan.setAssignlevel(rs.getInt("assignlevel"));
				plan.setPlanquantity(rs.getInt("planquantity"));
				plan.setFinishedquantity(rs.getInt("finishedquantity"));
				plan.setPassamount(rs.getInt("passamount"));
				plan.setPassppercentage(rs.getString("passppercentage"));
				plan.setNote(rs.getString("note"));
			}
			rs.close();
			prst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return plan;
		
	}
/**
 * 修改检测计划
 * @param sql
 * @return
 */
	public static boolean updateplan(String sql) {
		
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
	/**
	 * 删除检测计划
	 * @param testplanid
	 * @return
	 */
	public static boolean deleteplan(int testplanid){
		String sql="delete from testplan where testplanid=?";
		System.out.println("delete plan sql="+sql);
		try {
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setInt(1, testplanid);
			
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
