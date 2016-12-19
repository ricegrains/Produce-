package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.ProduceSell.produceSellDAO;
import com.ProduceSell.produceSellModel;

public class produceSellTag4  extends TagSupport
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
	    	List<produceSellModel> produceSell_List=produceSellDAO.findContractorID(table);
	    	String html="<select name=MaterialTypeName>";
	    	for(int i=0;i<produceSell_List.size();i++)
	    	{
	    		produceSellModel produceSell_Model=(produceSellModel) produceSell_List.get(i);
	    		html+="<option value="+produceSell_Model.getProduceOrgID()+">"+produceSell_Model.getMaterialTypeName()+"</option>";
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
