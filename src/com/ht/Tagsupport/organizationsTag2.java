package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.Organizations.OrganizationsDAO;
import com.Organizations.OrganizationsModel;


public class organizationsTag2  extends TagSupport
{
    String table ;

	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
	}
    public int doEndTag() 
    {
    	List<OrganizationsModel> Organizations_List=OrganizationsDAO.findAllOrgName(table);
    	String html="<select name=OrgName2>";
    	for(int i=0;i<Organizations_List.size();i++)
    	{
    		OrganizationsModel Organizations_Model=(OrganizationsModel) Organizations_List.get(i);
    		html+="<option value="+Organizations_Model.getOrgID()+">"+Organizations_Model.getOrgName()+"</option>";
    	}
    	html+="</select>";
    	try {
			pageContext.getOut().print(html);
		} catch (IOException e) {
			e.printStackTrace();
		}
    	return EVAL_PAGE;
    }
}
