package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.InputPurchase.inputPurchaseDAO;
import com.InputPurchase.inputPurchaseModel;

public class inputPurchaseTag extends TagSupport
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
	    	List<inputPurchaseModel> inputPurchase_List=inputPurchaseDAO.findProduceOrgID(table);
	    	String html="<select name=ProduceOrgID>";
	    	for(int i=0;i<inputPurchase_List.size();i++)
	    	{
	    		inputPurchaseModel inputPurchase_Model=(inputPurchaseModel) inputPurchase_List.get(i);
	    		html+="<option value="+inputPurchase_Model.getInputPurchaseID()+">"+inputPurchase_Model.getProduceOrgID()+"</option>";
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