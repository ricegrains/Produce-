package com.Objects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

public class objectDAO {
	/**
	 * 查询农产品表的农产品的名称
	 * 
	 * @param table
	 * @return
	 */
	public static List<objectsModel> findObjectName(String table) {
		List<objectsModel> objects_List = new ArrayList<objectsModel>();
		String sql = "select * from " + table;
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(sql);
			ResultSet rs = prst.executeQuery();
			while (rs.next()) {
				objectsModel objects_Model = new objectsModel();
				objects_Model.setObjectID(rs.getInt("objectID"));
				objects_Model.setObjectName(rs.getString("objectName"));
				objects_List.add(objects_Model);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return objects_List;
	}

}
