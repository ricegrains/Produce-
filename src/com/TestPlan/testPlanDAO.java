package com.TestPlan;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DBC.DBConnection;

public class testPlanDAO 
{
	 public static boolean saveTextPlan(testPlanModel testPlan_Model)
	   {
		   String sql="insert into TestPlan values(seq_TestPlan.nextval,?,?,?,to_date(?,'yyyy-MM-dd'),to_date(?,'yyyy-MM-dd'),?,?,?,?,?)";
		   Connection conn=DBConnection.getConnection();
		   try {
			PreparedStatement prst=conn.prepareStatement(sql);
			prst.setInt(1,testPlan_Model.getIssueOrgID());
			prst.setInt(2,testPlan_Model.getExecutionOrgID());
			prst.setString(3,testPlan_Model.getIssueDate());
			prst.setString(4,testPlan_Model.getScheduleFinishDate());
			prst.setInt(5,testPlan_Model.getAssignLevel());
			prst.setInt(6,testPlan_Model.getPlanQuantity());
			prst.setInt(7,testPlan_Model.getFinishedQuantity());
			prst.setInt(8,testPlan_Model.getPassAmount());
			prst.setInt(9,testPlan_Model.getPasspPercentage());
			prst.setString(8,testPlan_Model.getNote());
			int bln=prst.executeUpdate();
			if(bln>0)
			{
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return false;
	   }
}
