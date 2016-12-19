package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.Balance.balanceDAO;
import com.Balance.balanceModel;
public class balanceTag extends TagSupport
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
	    	List<balanceModel> balance_List=balanceDAO.findBalanceId(table);
	    	String html="<select name=BalanceID>";
	    	for(int i=0;i<balance_List.size();i++)
	    	{
	    		balanceModel balance_Model=(balanceModel) balance_List.get(i);
	    		html+="<option value="+balance_Model.getBalanceID()+">"+balance_Model.getBalanceID()+"</option>";
	    		
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
