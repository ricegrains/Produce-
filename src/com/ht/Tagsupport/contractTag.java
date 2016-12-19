package com.ht.Tagsupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.tagext.TagSupport;

import com.Contract.contractDAO;
import com.Contract.contractModel;
public class contractTag  extends TagSupport
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
    	List<contractModel> contract_List=contractDAO.findContractID(table);
    	String html="<select name= ContractID>";
    	for(int i=0;i<contract_List.size();i++)
    	{
    		contractModel contract_Model=(contractModel) contract_List.get(i);
    		html+="<option value="+contract_Model.getContractID()+">"+contract_Model.getContractID()+"</option>";
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
