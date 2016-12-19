package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.Subtypeset.subtypesetDAO;
import com.Subtypeset.subtypesetModel;

public class subtypeSetTag extends TagSupport
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
	    	List<subtypesetModel> subtypeset_List=subtypesetDAO.findsubtypesetId(table);
	    	String html="<select name=SubTypeName>";
	    	for(int i=0;i<subtypeset_List.size();i++)
	    	{
	    		subtypesetModel Organizations_Model=(subtypesetModel) subtypeset_List.get(i);
	    		html+="<option value="+Organizations_Model.getSubTypeID()+">"+Organizations_Model.getSubTypeName()+"</option>";
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
