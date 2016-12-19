package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.OrgType.OrgTypeDAO;
import com.OrgType.OrgTypeModel;


public class orgTypeTag  extends TagSupport
{
   String table;

public String getTable() {
	return table;
}

public void setTable(String table) {
	this.table = table;
 }
public int doEndTag()
{
	List<OrgTypeModel> OrgType_List=OrgTypeDAO.findOrgTypeName(table);
	String html="<select name=OrgTypeName>";
	for(int i=0;i<OrgType_List.size();i++)
	{
		OrgTypeModel OrgType_Model=OrgType_List.get(i);
		html+="<option value="+OrgType_Model.getOrgTypeID()+">"+OrgType_Model.getOrgTypeName()+"</option>";
	}
	html+="</select>";
	try {
		pageContext.getOut().print(html);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return EVAL_PAGE;
}
   
}
