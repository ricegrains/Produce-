package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.TraceNumber.tranceNumberDAO;
import com.TraceNumber.tranceNumberModel;

public class tranceTag5 extends TagSupport
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
	    	List<tranceNumberModel> tranceNumber_List=tranceNumberDAO.findTranceNumber(table);
	    	String html="<select name=TraceNumberID>";
	    	for(int i=0;i<tranceNumber_List.size();i++)
	    	{
	    		tranceNumberModel tranceNumber_Model=(tranceNumberModel) tranceNumber_List.get(i);
	    		html+="<option value="+tranceNumber_Model.getTraceNumberID()+">"+tranceNumber_Model.getTraceNumberID()+"</option>";
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

