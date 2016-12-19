package com.ht.Tagsupport;


import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.Model.Contractsignplots;
import com.ht.DAO.BreedDAO;




public class YangZhiTag extends TagSupport{
	private String table;
	private String id;
	
	private String name;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int doEndTag() throws JspException {
	
		try {
			
		     List list=BreedDAO.findAllContractSignPlotsID();
		     String html="<select name='"+name+"'>";
		     for(int i=0;i<list.size();i++){
		    	 Contractsignplots contractsignplots=(Contractsignplots)list.get(i);
		    	html+="<option value = "+contractsignplots.getContractsignplotsid()+">"+contractsignplots.getPlottype()+"</option>";
System.out.println("getTeachernikname==="+contractsignplots.getPlottype());
		     }
		     html+="</select>";
			pageContext.getOut().print(html);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}   
		return EVAL_PAGE;
	}
   
}