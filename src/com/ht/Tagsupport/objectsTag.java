package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.Objects.objectDAO;
import com.Objects.objectsModel;

public class objectsTag extends TagSupport
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
	    	List<objectsModel> objects_List=objectDAO.findObjectName(table);
	    	String html="<select name=ObjectName>";
	    	for(int i=0;i<objects_List.size();i++)
	    	{
	    		objectsModel objects_Model=objects_List.get(i);
	    		html+="<option value="+objects_Model.getObjectID()+">"+objects_Model.getObjectName()+"</option>";
	    		
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
