package com.ht.Tagsupport;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import DBC.DBConnection;


public class MySelectTag extends TagSupport{
	private static final long serialVersionUID = 1L;
	private String tablename;
	private String columnname;
	private String id;
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	public String getColumnname() {
		return columnname;
	}
	public void setColumnname(String columnname) {
		this.columnname = columnname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int doEndTag() throws JspException {
		List list=new ArrayList();
		System.out.println("id="+id);
		String sql="select "+id+","+columnname+" from "+tablename;
		System.out.println(sql);
		Connection Conn=DBConnection.getConnection();
		try {
			Statement stmt=Conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				HashMap m=new HashMap();
				m.put("id",rs.getString(id));
				m.put("columnname",rs.getString(columnname));
				list.add(m);
			}
			String selectStr="<select name="+id+">";
			System.out.println("id="+id);
			for(int i=0;i<list.size();i++){
				selectStr+="<option value="
				+((HashMap)list.get(i)).get("id")+">"
				+((HashMap)list.get(i)).get("columnname")+"</option>";
				
			}
			selectStr+="</select>";
			pageContext.getOut().print(selectStr);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
		e.printStackTrace();
		}
		return EVAL_PAGE;
	}
	
}
