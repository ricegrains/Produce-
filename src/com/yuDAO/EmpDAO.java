package com.yuDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.yuModel.EmployeeModel;


public class EmpDAO {

	/***
	    *   查询所有用户和密码
	    * @return
	    */
	    public List getUserInfo(){
	    	String sql="select EmpPassWord,EmpID from Employee";
//	    	System.out.println("sql="+sql);
	    	List Employeelist=new ArrayList();
	    	try {
				Connection conn = DBConnection.getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next()){
					
					EmployeeModel user = new EmployeeModel();
					user.setEmppassword(rs.getString("EmpPassWord"));
					user.setEmpid(rs.getString("EmpID"));
					
					Employeelist.add(user);
					System.out.println("密码="+rs.getString("EmpPassWord")+"   用户帐号 " +rs.getString("EmpID"));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return Employeelist;

	    }
	    
	    /***
	     * 查找所有用户
	     * @return
	     */
	    public static List<EmployeeModel> findAllinfo(){
	    	ArrayList list=new ArrayList();
	    	String sql="select empid,empname,emppassword,gender,duty,tel,identityid,orgid,empstatus,note from employee";
	    	try {
				Connection conn=DBConnection.getConnection();
				PreparedStatement prst=conn.prepareStatement(sql);
				ResultSet rs=prst.executeQuery();
				while(rs.next()){
					EmployeeModel emp=new EmployeeModel();
					emp.setEmpid(rs.getString("empid"));
					emp.setEmpname(rs.getString("empname"));
					emp.setEmppassword(rs.getString("emppassword"));
					emp.setGender(rs.getInt("gender"));
					emp.setDuty(rs.getString("duty"));
					emp.setTel(rs.getString("tel"));
					emp.setIdentityid(rs.getString("identityid"));
					emp.setOrgid(rs.getInt("orgid"));
					emp.setEmpstatus(rs.getString("empstatus"));
					emp.setNote(rs.getString("note"));
					
					list.add(emp);
//					System.out.println("empid="+rs.getString("empid"));
//					System.out.println("empname="+rs.getString("empname"));
//					System.out.println("emppassword="+rs.getString("empPassWord"));
				}
				
				prst.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
	    }
	    
	    /***
	     * 根据empid查找所有用户
	     * @return
	     */
	    public static EmployeeModel findAllinfoByid(String empid){
	    	EmployeeModel emp=new EmployeeModel();
	    	String sql="select * from employee where empid='"+empid+"'";
	    	
	    	try {
				Connection conn=DBConnection.getConnection();
				PreparedStatement prst=conn.prepareStatement(sql);
				ResultSet rs=prst.executeQuery();
				while(rs.next()){
					
				
					emp.setEmpname(rs.getString("empname"));
					emp.setEmppassword(rs.getString("empPassWord"));
					emp.setGender(rs.getInt("gender"));
					emp.setDuty(rs.getString("duty"));
					emp.setTel(rs.getString("tel"));
					emp.setIdentityid(rs.getString("identityid"));
					emp.setOrgid(rs.getInt("orgid"));
					emp.setEmpstatus(rs.getString("empstatus"));
					emp.setNote(rs.getString("note"));
					emp.setEmpid(rs.getString("empid"));
					
//					System.out.println("empid="+rs.getString("empid"));
//					System.out.println("empname="+rs.getString("empname"));
//					System.out.println("emppassword="+rs.getString("empPassWord"));
				}
				rs.close();
				prst.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return emp;
	    }
	    
	    /***
	     * 添加用户
	     * @param emp
	     * @return
	     */
	    public static boolean insertemp(EmployeeModel emp){
	    	String sql="insert into employee values(?,?,?,?,?,?,?,?,?,?)";
	    	
	    	try {
				Connection conn=DBConnection.getConnection();
				PreparedStatement prst=conn.prepareStatement(sql);
				
				prst.setString(1,emp.getEmpid());
				prst.setString(2,emp.getEmpname());
				prst.setString(3, emp.getEmppassword());
				prst.setInt(4, emp.getGender());
				prst.setString(5, emp.getDuty());
				prst.setString(6,emp.getTel());
				prst.setString(7,emp.getIdentityid());
				prst.setInt(8, emp.getOrgid());
				prst.setString(9, emp.getEmpstatus());
				prst.setString(10,emp.getNote());
				
				System.out.println("empid="+emp.getEmpid());
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
	    /***
	     * 删除用户
	     * @param empid
	     * @return
	     */
	    public static boolean deleteemp(String empid){
	    	
	    	String sql="delete from employee where empid=?";
	    	System.out.println("用户删除 sql="+sql);
	    	try {
				Connection conn=DBConnection.getConnection();
				PreparedStatement prst=conn.prepareStatement(sql);
				
				prst.setString(1, empid);
				
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
	    * 修改用户信息
	    * @param emp
	    * @return
	    */
	    public static boolean updateemp(EmployeeModel emp){
	    	String sql="update employee set empname=?,emppassword=?,gender=?,duty=?,tel=?,identityid=?,orgid=?,empstatus=?,note=? where empid=?";
//	    	System.out.println("西欧该updateemp sql="+sql);
	    	int i;
			try {
				Connection conn=DBConnection.getConnection();
				PreparedStatement prst=conn.prepareStatement(sql);
				
				prst.setString(1,emp.getEmpname());
				prst.setString(2, emp.getEmppassword());
				prst.setInt(3, emp.getGender());
				prst.setString(4, emp.getDuty());
				prst.setString(5,emp.getTel());
				prst.setString(6,emp.getIdentityid());
				prst.setInt(7, emp.getOrgid());
				prst.setString(8, emp.getEmpstatus());
				prst.setString(9,emp.getNote());
				prst.setString(10,emp.getEmpid());
				
				i = prst.executeUpdate();
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
	     * 修改密码
	     */
	    public static boolean updatepwd(EmployeeModel emp){
	    	String sql="update employee set emppassword=? where empid=?";
//	    	System.out.println("西欧该updateemp sql="+sql);
	    	int i;
			try {
				Connection conn=DBConnection.getConnection();
				PreparedStatement prst=conn.prepareStatement(sql);
				
				
				prst.setString(1, emp.getEmppassword());
				prst.setString(2,emp.getEmpid());
				
				i = prst.executeUpdate();
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