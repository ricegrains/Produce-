package com.Organizations;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;
public class OrganizationsDAO 
{
    public static List<OrganizationsModel> findAllOrganizations()
    {
    	List<OrganizationsModel> Organizations_List=new ArrayList<OrganizationsModel>();
    	
    	String sql="select * from Organizations";
    	Connection conn=DBConnection.getConnection();
    	try {
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next())
			{
				OrganizationsModel Organizations_Model=new OrganizationsModel();
				Organizations_Model.setOrgID(rs.getInt("orgID"));
				Organizations_Model.setOrgTypeID(rs.getInt("orgTypeID"));
				Organizations_Model.setOrgCode(rs.getString("orgCode"));
				Organizations_Model.setOrgName(rs.getString("orgName"));
				Organizations_Model.setAddress(rs.getString("address"));
				Organizations_Model.setDirector(rs.getString("director"));
				Organizations_Model.setTelephone(rs.getString("telephone"));
				Organizations_Model.setFax(rs.getString("fax"));
				Organizations_Model.setPostCode(rs.getString("postCode"));
				Organizations_Model.setWeb(rs.getString("web"));
				Organizations_Model.setSafeLevelID(rs.getInt("safeLevelID"));
				Organizations_Model.setFirmLandArea(rs.getString("firmLandArea"));
				Organizations_Model.setWaterLandArea(rs.getString("waterLandArea"));
				Organizations_Model.setPondArea(rs.getString("pondArea"));
				Organizations_Model.setForestAndOrchardArea(rs.getString("forestAndOrchardArea"));
				Organizations_Model.setNode(rs.getString("node"));
				Organizations_List.add(Organizations_Model);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return Organizations_List;
    }
    
    public static List<OrganizationsModel> findAllOrgName(String table)
    {
    	List<OrganizationsModel> Organizations_List=new ArrayList<OrganizationsModel>();
    	
    	String sql="select orgID,orgName from "+table;
    	Connection conn=DBConnection.getConnection();
    	try {
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next())
			{
				OrganizationsModel Organizations_Model=new OrganizationsModel();
				Organizations_Model.setOrgID(rs.getInt("orgID"));
				Organizations_Model.setOrgName(rs.getString("orgName"));
				Organizations_List.add(Organizations_Model);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return Organizations_List;
    }
}
