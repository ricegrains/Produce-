package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAO;
import com.Model.Contract;
import com.Model.Contractors;
import com.Model.Contractsignplots;
import com.Model.Labors;
import com.Model.Orgtype;
import com.yuModel.EmployeeModel;

public class ServletPage extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	  doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	
           String method=req.getParameter("method");
           EmployeeModel empInfo= (EmployeeModel) req.getSession().getAttribute("empInfo");
           
           List org=DAO.getAllOrg();
     	   req.getSession().setAttribute("org",org);
     	   List typeset=DAO.getAlltype();
   	        
     	   List orgtype=DAO.getAllOrgType();
     	   
     	   req.getSession().setAttribute("orgtype", orgtype);
   	       req.getSession().setAttribute("typesets", typeset);
     	   
     	  List contract=DAO.getAllContract(empInfo.getIdentityid());
     	  
	   	   if(!empInfo.getDuty().equals("管理员")){
	     		 Contractors  userby=DAO.getuserByid(empInfo.getIdentityid());
	     		  req.setAttribute("user", userby);
	     		  if(contract.size()==0){
	     			 req.getSession().setAttribute("Info",  "Info");
	     		  }
	     		  else {
	     			 req.setAttribute("Info", null);
	     			req.getSession().setAttribute("ContractorsInfo", contract);
	     			
	     		  }
	     		 
	     	  }
	     	  else{
	     		
	          	      if(contract.size()==0){
	          			 req.getSession().setAttribute("fo",  "Info");
	          		  }
	          		  else {
	          			 req.setAttribute("fo", null);
	          			req.getSession().setAttribute("selectContractorInfos", contract);
	          			
	          		  }
     		  List user=DAO.getuser();
     	
     		  req.getSession().setAttribute("users", user);
     	  }
	   	   /**
	   	    * 
	   	    * 承包户资料
	   	    */
           if(method.equals("ziliao")){
        		int pagesize=3;
    	    	int pagenum;
    	    	int count=new DAO().findCount();
    	    	int sum=(count/pagesize);
    		  	String pageno=req.getParameter("pagenum");
		  	   if((count%pagesize)!=0){
		  	         sum=(count/pagesize)+1;
		  	      }
		  	      if(pageno==null){
		  	         pagenum=1;
		  	      }
		  	      else{
		  	        
		  	          pagenum=Integer.parseInt(pageno);
		  	          if(pagenum<1){
		  	             pagenum=1;
		  	          }
		  	          if(pagenum>sum){
		  	             pagenum=sum;
		  	          }
		  	        
		  	      }
    		  	 int begin=pagesize*(pagenum-1);
    		  	     
				  req.setAttribute("pagenum", pagenum);
		  	      req.setAttribute("count", count);
		  	      req.setAttribute("sum", sum);
        	  if(!empInfo.getDuty().equals("管理员")){
        		 Contractors  userby=DAO.getuserByid(empInfo.getIdentityid());

        		 req.setAttribute("user", userby);
        	  }
        	  else{
        		  List user=DAO.getuser(begin,pagesize);
        		  req.setAttribute("users", user);
        	  }
        	 
        	  req.setAttribute("chen", null);
        	  req.getRequestDispatcher("Contractor/ContractorsInfo.jsp").forward(req, resp);
        	  
           }
           else if(method.equals("sousuo")){
        	   String name=req.getParameter("sousuo");
        	
    	   if(name!=null){
    		 
    		   //List<Contractors> xinxi=DAO.getuserxinxi(name);
    		   //for(int i=0;i<xinxi.size();i++){
    			  // System.out.println("5858"+xinxi.size());
    			  // Contractors uname=xinxi.get(i);
    			 //  System.out.println("ppp"+uname.getName()+name);
    			   
    				  List Contractorxinxi=DAO.getuserxinxi(name);  
    				  req.setAttribute("users", Contractorxinxi);
    				 
    				  req.getRequestDispatcher("Contractor/CInfo.jsp").forward(req, resp);
    			  
    		  // }
        	 }
           }
           else if(method.equals("savecont")){
        	   
        	   int belongOrgID=Integer.parseInt(req.getParameter("belongOrgID"));
        	   String identityid=req.getParameter("identityid");
        	   String internalid=req.getParameter("internalid");
        	   String name=req.getParameter("name");
        	   String telephone=req.getParameter("telephone");
        	   String address=req.getParameter("address");
        	   String note=req.getParameter("note");
        	   
        	   String sql="update Contractors set belongOrgID='"+belongOrgID+"',internalid='"+internalid+"',name='"+name+"',telephone='"+telephone+"',address='"+address+"',note='"+note+"' where identityid='"+identityid+"'";
        	 
        	   new DAO().Update(sql);
	   		   Contractors  userbyid=DAO.getuserByid(identityid);
	   		   req.setAttribute("user", userbyid);
	   		   req.setAttribute("chen", null);
	   		   
	   		   
        	   req.getRequestDispatcher("Contractor/ContractorsInfo.jsp").forward(req, resp);
        	   
           }
           else if(method.equals("edit")){
        	 
        	   String identityid=req.getParameter("identityid");
        	  
        	   Contractors userxinxi=DAO.getuserByid(identityid);
          	  
	   		   req.setAttribute("users", userxinxi);
       	 
	   		   req.setAttribute("chen", null);
	   		   
	   		   req.getRequestDispatcher("Contractor/editContractorsInfo.jsp").forward(req, resp);
           }
           else if(method.equals("baocun")){
        	int pagesize=3;
   	    	int pagenum;
   	    	int count=new DAO().findCount();
   	    	int sum=(count/pagesize);
   		  	String pageno=req.getParameter("pagenum");
		  	   if((count%pagesize)!=0){
		  	         sum=(count/pagesize)+1;
		  	      }
		  	      if(pageno==null){
		  	         pagenum=1;
		  	      }
		  	      else{
		  	        
		  	          pagenum=Integer.parseInt(pageno);
		  	          if(pagenum<1){
		  	             pagenum=1;
		  	          }
		  	          if(pagenum>sum){
		  	             pagenum=sum;
		  	          }
		  	        
		  	      }
   		  	 int begin=pagesize*(pagenum-1);
   		  	     
			
        	   
        	   int belongOrgID=Integer.parseInt(req.getParameter("belongOrgID"));
        	   String identityid=req.getParameter("identityid");
        	   String internalid=req.getParameter("internalid");
        	   String name=req.getParameter("name");
        	   String telephone=req.getParameter("telephone");
        	   String address=req.getParameter("address");
        	   String note=req.getParameter("note");
        	   
        	   String sql="update Contractors set belongOrgID='"+belongOrgID+"',internalid='"+internalid+"',name='"+name+"',telephone='"+telephone+"',address='"+address+"',note='"+note+"' where identityid='"+identityid+"'";
        	 
        	   new DAO().Update(sql);
        	   List user=DAO.getuser(begin,pagesize);
        	   
        		  req.setAttribute("pagenum", pagenum);
		  	      req.setAttribute("count", count);
		  	      req.setAttribute("sum", sum);
        	   
		  	    req.setAttribute("chen", null);
     		   req.setAttribute("users", user);
     		 
     		   req.getRequestDispatcher("Contractor/ContractorsInfo.jsp").forward(req, resp);
           }
           else if(method.equals("delete")){
        	   int pagesize=3;
      	    	int pagenum;
      	    	int count=new DAO().findCount();
      	    	int sum=(count/pagesize);
      		  	String pageno=req.getParameter("pagenum");
   		  	   if((count%pagesize)!=0){
   		  	         sum=(count/pagesize)+1;
   		  	      }
   		  	      if(pageno==null){
   		  	         pagenum=1;
   		  	      }
   		  	      else{
   		  	        
   		  	          pagenum=Integer.parseInt(pageno);
   		  	          if(pagenum<1){
   		  	             pagenum=1;
   		  	          }
   		  	          if(pagenum>sum){
   		  	             pagenum=sum;
   		  	          }
   		  	        
   		  	      }
      		  	 int begin=pagesize*(pagenum-1);
      		  	     
   			
        	   
        	   
        	   
        	   String identityid=req.getParameter("identityid");
        	  
        	   List Labor=DAO.getAllLabors(identityid);
        	   List Contract=DAO.getAllContract(identityid);
        	   
        	   if(Labor.size()==0&&Contract.size()==0){
        		   String sql="delete from Contractors where identityid='"+identityid+"'";
            	   new DAO().Update(sql); 
            	   req.setAttribute("chen", null);
        	   }
        	   else {
        		   req.setAttribute("chen", "chen");
        	   }
        	  List user=DAO.getuser(begin,pagesize);
     		  req.setAttribute("users", user);
     		  req.setAttribute("pagenum", pagenum);
	  	      req.setAttribute("count", count);
	  	      req.setAttribute("sum", sum);
     		   req.getRequestDispatcher("Contractor/ContractorsInfo.jsp").forward(req, resp);
           }
           else if(method.equals("add")){
        	   int pagesize=3;
     	    	int pagenum;
     	    	int count=new DAO().findCount();
     	    	int sum=(count/pagesize);
     		  	String pageno=req.getParameter("pagenum");
  		  	   if((count%pagesize)!=0){
  		  	         sum=(count/pagesize)+1;
  		  	      }
  		  	      if(pageno==null){
  		  	         pagenum=1;
  		  	      }
  		  	      else{
  		  	        
  		  	          pagenum=Integer.parseInt(pageno);
  		  	          if(pagenum<1){
  		  	             pagenum=1;
  		  	          }
  		  	          if(pagenum>sum){
  		  	             pagenum=sum;
  		  	          }
  		  	        
  		  	      }
     		  	 int begin=pagesize*(pagenum-1);
        	           	   
        	   int belongOrgID=Integer.parseInt(req.getParameter("belongOrgID"));
        	   String identityid=req.getParameter("identityid");
        	   String internalid=identityid.substring(2,5);
        	   String name=req.getParameter("name");
        	   String telephone=req.getParameter("telephone");
        	   String address=req.getParameter("address");
        	   String note=req.getParameter("note");
        	   
        	   String sql="insert into Contractors values('"+belongOrgID+"','"+identityid+"','"+internalid+"','"+name+"','"+telephone+"','"+address+"','"+note+"')";
        	   
        	   new DAO().Update(sql);
        	   List user=DAO.getuser(begin,pagesize);
     		   req.setAttribute("users", user);
     		   req.setAttribute("pagenum", pagenum);
	  	       req.setAttribute("count", count);
	  	       req.setAttribute("sum", sum);
     		   req.setAttribute("chen", null);
     		   req.getRequestDispatcher("Contractor/ContractorsInfo.jsp").forward(req, resp);
				
           }
           /**
            * 
            * 合同管理
            */
           
           else if(method.equals("heton")){
        	   Contractors  userbyid=DAO.getuserByid(empInfo.getIdentityid());
	   		  
       		   req.setAttribute("selectContractorInfo", userbyid);
        	  
        	   req.getRequestDispatcher("Contractor/ContractInfo.jsp").forward(req, resp);
           }
           else if(method.equals("shenfen")){
        	   String identityid=req.getParameter("identityid");
        	   Contractors  userbyid=DAO.getuserByid(identityid);
        	  
        	   List heton=DAO.getAllContract(identityid);
        	   
        	   
        	   if(heton.size()==0){
      			 req.setAttribute("fo1",  "Info");
      		  }
      		  else {
      			 req.setAttribute("fo1",  " ");
      			req.setAttribute("selectContractorInfos", heton);
      			
      		  }
        	   
        	   req.setAttribute("selectContractorInfo", userbyid);

        	 
       		   req.getRequestDispatcher("Contractor/ContractInfo.jsp").forward(req, resp);
           }

           else if(method.equals("saveadd")){
        	 
        	   String contractcode=req.getParameter("contractcode");
        	   int produceorg=Integer.parseInt(req.getParameter("produceorg"));
        	   String identityid=req.getParameter("identityid");
        	   String typeid=req.getParameter("typeid");
        	   String signtime=req.getParameter("signtime");
        	   String effectivedate=req.getParameter("effectivedate");
        	   String expiredate=req.getParameter("expiredate");
        	   String moneyamount=req.getParameter("moneyamount");
        	   String area=req.getParameter("area");
        	   String duedate=req.getParameter("duedate");
        	   String arrearage=req.getParameter("arrearage");
        	   String note=req.getParameter("note");
        	 
        	   
        	   String sql="insert into Contract values(seq_Contract.nextval,'"+contractcode+"','"+produceorg+"','"+identityid+"','"+typeid+"',"+"to_date"+"('"+signtime+"',"+"'"+"yy-mm-dd"+"'"+")"+","+"to_date"+"('"+effectivedate+"',"+"'"+"yy-mm-dd"+"'"+")"+","+"to_date"+"('"+expiredate+"'"+","+"'"+"yy-mm-dd"+"'"+")"+",'"+moneyamount+"','"+area+"',"+"to_date"+"('"+duedate+"'"+",'"+"yy-mm-dd"+"'"+")"+",'"+arrearage+"','"+note+"')";
               new DAO().Update(sql);
        	   List contracts=DAO.getAllContract();
        	   req.setAttribute("contract", contracts);
        	   req.setAttribute("hexinxi", null);
        	   req.getRequestDispatcher("Contractor/AllContract1.jsp").forward(req, resp);
           }
           else if(method.equals("chasuoyou")){
        	   List contracts=DAO.getAllContract();
        	   req.setAttribute("hexinxi", null);
        	   req.setAttribute("contract", contracts);
        	   req.getRequestDispatcher("Contractor/AllContract1.jsp").forward(req, resp);
           }
           else if(method.equals("deleteheton")){
        	   String contractid=req.getParameter("contractid");
        	   
        	   List Consign=DAO.getAllsignbyid(contractid);
        	   
        	   if(Consign.size()==0){
        		   String sql="delete from Contract where contractid='"+contractid+"'";
            	   new DAO().Update(sql); 
            	   req.setAttribute("hexinxi", null);
        	   }
        	   else {
        		   req.setAttribute("hexinxi", "hexinxi");
        	   }
        	   List contracts=DAO.getAllContract();
        	   req.setAttribute("contract", contracts);
        	   req.getRequestDispatcher("Contractor/AllContract1.jsp").forward(req, resp);
           }
           else if(method.equals("xiugaiheton")){
        	  
//        	   List set=DAO.getAlltype();
//        	   List Orgai=DAO.getAllOrg();
//        	   List Contractors=DAO.getuser();
//        	   
//        	   req.setAttribute("set", set);
//        	   req.setAttribute("Org", Orgai);
        	   String contractid=req.getParameter("contractid");
        	   Contract cont=DAO.getContracts(contractid);
      
        	   req.setAttribute("contract", cont);
        	   //req.setAttribute("contract", Contractors);
        	   req.getRequestDispatcher("Contractor/xiuContract1.jsp").forward(req, resp);
           }
           else if(method.equals("savehetonxinxi")){
        	   String contractid=req.getParameter("contractid");
        	   String contractcode=req.getParameter("contractcode");
        	   int produceorg=Integer.parseInt(req.getParameter("produceorg"));
        	   String identityid=req.getParameter("identityid");
        	   String typeid=req.getParameter("typeid");
        	   String signtime=req.getParameter("signtime");
        	   String effectivedate=req.getParameter("effectivedate");
        	   String expiredate=req.getParameter("expiredate");
        	   String moneyamount=req.getParameter("moneyamount");
        	   String area=req.getParameter("area");
        	   String duedate=req.getParameter("duedate");
        	   String arrearage=req.getParameter("arrearage");
        	   String note=req.getParameter("note");
        	   
        	   String sql="update Contract set contractcode='"+contractcode+"',produceorg='"+produceorg+"',identityid='"+identityid+"',typeid='"+typeid+
        	   "',signtime="+"to_date('"+signtime+"','"+"yy-mm-dd"+"'"+"),effectivedate="+"to_date('"+effectivedate+"','"+"yy-mm-dd"+"'),expiredate="+
        	   "to_date('"+expiredate+"','"+"yy-mm-dd"+"'),moneyamount='"+moneyamount+"',area='"+area+"',duedate="+"to_date('"+duedate+"','"+"yy-mm-dd"+"'),arrearage='"+arrearage+"',note='"+note+"' where contractid='"+contractid+"'";
        	   
        	   new DAO().Update(sql);
        	   req.setAttribute("hexinxi", null);
        	   List contracts=DAO.getAllContract();
        	   req.setAttribute("contract", contracts);
        	   req.getRequestDispatcher("Contractor/AllContract1.jsp").forward(req, resp);
           }
           

           /**
            * 
            * 劳动力管理
            * 
            */
           else if(method.equals("laodong")){
        	  
            		Contractors  userby=DAO.getuserByid(empInfo.getIdentityid());
            	    req.getSession().setAttribute("contractor", userby);
        		    List  lab=DAO.getAllLabors(empInfo.getIdentityid());
        		    if(lab.size()==0){
        		       req.setAttribute("lab", null);
        		    }
        		    else{
        		       req.setAttribute("lab", "1");
        		    }
           		    req.setAttribute("labors", lab);
        	 
        	        req.getRequestDispatcher("Labors/laborsInfo.jsp").forward(req, resp);
            		  
           }
           else if(method.equals("xiulab")){
        	   String identityid=req.getParameter("identityid");
        	   Contractors contractor=DAO.getuserByid(identityid);
        	  
        	   
        	   List  lab=DAO.getAllLabors(identityid);
        	   if(lab.size()==0){
    		       req.setAttribute("lab", null);
    		     }
    		    else{
    		       req.setAttribute("lab", "1");
    		    }
        	   req.getSession().setAttribute("labors", lab);
        	   req.getSession().setAttribute("contractor", contractor);
        	   
        	 
               req.getRequestDispatcher("Labors/laborsInfo.jsp").forward(req, resp);
           }
           else if(method.equals("saveaddlab")){
        	   String identityid=req.getParameter("identityid");
        	   String name=req.getParameter("name");
        	   String relation=req.getParameter("relation");
        	   String birthday=req.getParameter("birthday");
        	   String gender=req.getParameter("gender");
        	   String note=req.getParameter("note");
        	  
        	   
        	   String sql="insert into Labors values(seq_Labors.nextval,'"+identityid+"','"+name+"','"+relation+"',"+"to_date"+"('"+birthday+"',"+"'"+"yy-mm-dd"+"'"+")"+",'"+gender+"','"+note+"')";
               new DAO().Update(sql);
              
               Contractors  userby=DAO.getuserByid(empInfo.getIdentityid());
	       	    req.setAttribute("contractor", userby);
	   		    List  lab=DAO.getAllLabor();
	   		    if(lab.size()==0){
	   		       req.setAttribute("lab", null);
	   		    }
	   		    else{
	   		       req.setAttribute("lab", "1");
	   		    }
	      		    req.setAttribute("labors", lab);
	               req.getRequestDispatcher("Labors/laborsInfo.jsp").forward(req, resp);
	           }
	           else if(method.equals("xiulaodong")){
	        	   String laborsid=req.getParameter("laborsid");
	        	   List labs=DAO.getLabors(laborsid);
	        	   req.setAttribute("labors", labs);
	        	   req.getRequestDispatcher("Labors/xiuLabors.jsp").forward(req, resp);
	        	   
	           }
	           else if(method.equals("suoyou")){
	        	   
	        	   List  lab=DAO.getAllLabor();
	        	   req.setAttribute("labors", lab);
	        	   req.setAttribute("lab", "1");
	        	   req.getSession().setAttribute("suoyoulaodong", null);
	        	   req.getRequestDispatcher("Labors/laborsInfo.jsp").forward(req, resp);
	           }
	           else if(method.equals("savelaodong")){
	        	   String laborsid=req.getParameter("laborsid");
	        	   String identityid=req.getParameter("identityid");
	        	   String name=req.getParameter("name");
	        	   String relation=req.getParameter("relation");
	        	   String birthday=req.getParameter("birthday");
	        	   String gender=req.getParameter("gender");
	        	   String note=req.getParameter("note");
	        	  // req.setCharacterEncoding("GBK");
	        	   
	        	   String sql="update Labors set identityid='"+identityid+"',name='"+name+"',relation='"+relation+"',birthday="+"to_date"+"('"+birthday+"',"+"'"+"yy-mm-dd"+"'"+")"+",gender='"+gender+"',note='"+note+"' where laborsid='"+laborsid+"'";
	               new DAO().Update(sql);
	              
	        	   Contractors contractor=DAO.getuserByid(identityid);
	               String suoyou=(String)req.getSession().getAttribute("suoyoulaodong");
	        	   if(suoyou==null){
	        		   List  lab=DAO.getAllLabor();
	        		   req.getSession().setAttribute("labors", lab);
	        		   if(lab.size()==0){
	        		       req.setAttribute("lab", null);
	        		    }
	        		    else{
	        		       req.setAttribute("lab", "1");
	        		    }
	        	   }
	        	   else{
	        		   List  lab=DAO.getAllLabors(identityid);
	        		   if(lab.size()==0){
	        		       req.setAttribute("lab", null);
	        		    }
	        		    else{
	        		       req.setAttribute("lab", "1");
	        		    }
	        		   req.getSession().setAttribute("labors", lab);
	        	   }
	        	   req.getSession().setAttribute("contractor", contractor);
	        	   req.getRequestDispatcher("Labors/laborsInfo.jsp").forward(req, resp);
	               
	           }
	           else if(method.equals("delab")){
	           String identityid=req.getParameter("identityid");
               int laborsid=Integer.parseInt(req.getParameter("laborsid"));
               String sql="delete from Labors where laborsid='"+laborsid+"'";
               new DAO().Update(sql);
               
               String suoyou=(String)req.getSession().getAttribute("suoyoulaodong");
        	   if(suoyou==null){
        		   List  lab=DAO.getAllLabor();
        		   req.getSession().setAttribute("labors", lab);
        		   if(lab.size()==0){
        		       req.setAttribute("lab", null);
        		    }
        		    else{
        		       req.setAttribute("lab", "1");
        		    }
        	   }
        	   else{
        		   List  lab=DAO.getAllLabors(identityid);
        		   if(lab.size()==0){
        		       req.setAttribute("lab", null);
        		    }
        		    else{
        		       req.setAttribute("lab", "1");
        		    }
        		   req.getSession().setAttribute("labors", lab);
        	   }
        		   
               req.setAttribute("labcon", null);
        	   Contractors contractor=DAO.getuserByid(identityid);
        	   req.getSession().setAttribute("contractor", contractor);
             // req.getSession().setAttribute("labors", lab);
               req.getRequestDispatcher("Labors/laborsInfo.jsp").forward(req, resp);
           }
           
           /***
            * 
            * 合同地块信息
            */
           else if(method.equals("dikuai")){
        	   List contractbyid=DAO.getAllContract();
        	   Contractors  userbyid=DAO.getuserByid(empInfo.getIdentityid());
        	   Contract con=DAO.getContract(empInfo.getIdentityid());
  	   		
        	   req.getSession().setAttribute("hetonbyid", contractbyid);
     		   req.getSession().setAttribute("selectContractorInfo", userbyid);
     		   req.getSession().setAttribute("contractmodel", con);
     		   req.getSession().setAttribute("suoyou", "3");
     		   req.setAttribute("shan", null);
     		   
       		   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           else if(method.equals("signplot")){

        	
        	   int contractid=Integer.parseInt(req.getParameter("contractid"));
        	   Contract con=DAO.getContract(contractid);
     	   		
        	   List sign=DAO.getAllsign(contractid);
        	   
        	   req.getSession().setAttribute("contractid", contractid);
        	   req.getSession().setAttribute("contractSignPlots", sign);
        	   req.getSession().setAttribute("contractmodel", con);
        	   req.setAttribute("shan", null);
        	  
        	   List list = (List)req.getSession().getAttribute("selectContractorInfos");
        	 
        	   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           else if(method.equals("hetonbiao")){
        	   String identityid=req.getParameter("identityid");
        	   List heton=DAO.getAllContract(identityid);
        	   Contractors  userbyid=DAO.getuserByid(identityid);
        	   req.getSession().setAttribute("selectContractorInfo", userbyid);
        	   req.getSession().setAttribute("selectContractorInfos", heton);
        	   req.setAttribute("shan", null);
        	  
        	   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           
           else if(method.equals("fanhui")){
        	   Contractors  userbyid=DAO.getuserByid(empInfo.getIdentityid());
        	   req.getSession().setAttribute("selectContractorInfo", userbyid);
        	   int id=Integer.parseInt(req.getParameter("id"));
        	   Contract con=DAO.getContract(id);
        	   
        	   List hedixin=DAO.getAllsign(id);
        	   req.setAttribute("contractSignPlots", hedixin);
        	   req.setAttribute("shan", null);
        	   req.getSession().setAttribute("contractmodel", con);
        	   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           
           
           else if(method.equals("chakansuoyou")){
        	   
        	   List hedixin=DAO.getAllsign();
        	   req.setAttribute("contractSignPlots", hedixin);
        	   req.getSession().setAttribute("suoyou", null);
        	   req.setAttribute("shan", null);
        	   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           
           
           /***
            * 添加合同地块信息
            * 
            * 
            */
           else if(method.equals("addhetondikuai")){
        	   int id=Integer.parseInt(req.getParameter("id"));
        	   int contractid=Integer.parseInt(req.getParameter("contractid"));
        	   String plotid=req.getParameter("plotid");
        	   String plotarea=req.getParameter("plotarea");
        	   String plotlocation=req.getParameter("plotlocation");
        	   String plottype=req.getParameter("plottype");
        	   String groupid=req.getParameter("groupid");
        	   String note=req.getParameter("note");
        	   String sql="insert into ContractSignPlots values(seq_ContractSignPlots.nextval,'"+contractid+"','"+plotid+"','"+plotarea+"','"+plotlocation+
        	   "','"+plottype+"','"+groupid+"','"+note+"')";
        	  
        	   Contract con=DAO.getContract(id);
        	   new DAO().Update(sql);
        	   List hedi=DAO.getAllsign();
        	   
        	   req.getSession().setAttribute("contractmodel", con);
        	   req.setAttribute("contractSignPlots", hedi);
        	   req.setAttribute("shan", null);
        	   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           
           /***
            * 
            * 修改合同地块
            */
           else if(method.equals("xiuhetondikuai")){
        	   String contractsignplotsid=req.getParameter("contractsignplotsid");
        	   Contractsignplots plot=DAO.getsign(contractsignplotsid);
        	   req.setAttribute("dikuai", plot);
        	   req.getRequestDispatcher("ContractSignPlots/xiuSign.jsp").forward(req, resp);
           }
           else if(method.equals("savehetondikuai")){
        	   int id=Integer.parseInt(req.getParameter("id"));

        	   String contractsignplotsid=req.getParameter("contractsignplotsid");
        	   int contractid=Integer.parseInt(req.getParameter("contractid"));
        	   String plotid=req.getParameter("plotid");
        	   String plotarea=req.getParameter("plotarea");
        	   String plotlocation=req.getParameter("plotlocation");
        	   String plottype=req.getParameter("plottype");
        	   String groupid=req.getParameter("groupid");
        	   String note=req.getParameter("note");
        	   
        	   String sql="update ContractSignPlots set contractid='"+contractid+"',plotid='"+plotid+
        	   "',plotarea='"+plotarea+"',plotlocation='"+plotlocation+"',plottype='"+plottype+"',groupid='"+groupid+"',note='"+note+"' where contractsignplotsid='"+contractsignplotsid+"'";
        	   new DAO().Update(sql);
        	   
        	   List hedixin=DAO.getAllsign(id);
        	   req.setAttribute("contractSignPlots", hedixin);
        	   req.setAttribute("shan", null);
        	   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           
           /**
            * 
            * 删除合同地块信息
            * 
            */
           else if(method.equals("delhedikuai")){
        	   int id=Integer.parseInt(req.getParameter("id"));
        	   
        	   int contractsignplotsid=Integer.parseInt(req.getParameter("contractsignplotsid"));
        	   
        	   List firmland=DAO.getAllgrowlist(contractsignplotsid);
        	   List plotrations=DAO.getPlotrotations(contractsignplotsid);
        	   
        	   if(firmland.size()==0&&plotrations.size()==0){
        		   String sql="delete from ContractSignPlots where contractsignplotsid='"+contractsignplotsid+"'";
            	   new DAO().Update(sql);
            	   req.setAttribute("shan", null);
        	   }
        	   else{
        		   req.setAttribute("shan", "shan");
        	   }
        	   
        	   String suoyou=(String)req.getSession().getAttribute("suoyou");
        	   if(suoyou==null){
        		   
        		   List hedixin=DAO.getAllsign();
        		   req.setAttribute("contractSignPlots", hedixin);
        	   }
        	   else {
        		   List hedixin=DAO.getAllsign(id);
        		   req.setAttribute("contractSignPlots", hedixin);
        	   }
        	   
        	  
        	   req.getRequestDispatcher("ContractSignPlots/contractSignPlotsInfo.jsp").forward(req, resp);
           }
           
           
           /**
            * 
            * 组织机构
            * 
            */
           else if(method.equals("org")){
        	   if(empInfo.getDuty().equals("管理员")){
        		 
        		   List orgxinxi=DAO.getAllOrg();
            	   req.setAttribute("orgxinxi", orgxinxi);
            	   req.setAttribute("guanli", "guanli");
            	   req.getRequestDispatcher("Type/Organizations.jsp").forward(req, resp);
        	   }
        	   else {
         		  req.getSession().setAttribute("guanli", null);
         		  req.getRequestDispatcher("frame/a.jsp").forward(req, resp);
        	   }
        	  
           }
           else if(method.equals("saveorg")){
        	   int orgtypeid=Integer.parseInt(req.getParameter("orgtypeid"));
        	   String orgcode=req.getParameter("orgcode");
        	   String orgname=req.getParameter("orgname");
        	   String address=req.getParameter("address");
        	   String director=req.getParameter("director");
        	   String telephone=req.getParameter("telephone");
        	   String fax=req.getParameter("fax");
        	   String postcode=req.getParameter("postcode");
        	   String web=req.getParameter("web");
        	   String safelevelid=req.getParameter("safelevelid");
        	   String firmlandarea=req.getParameter("firmlandarea");
        	   String waterlandarea=req.getParameter("waterlandarea");
        	   String pondarea=req.getParameter("pondarea");
        	   String forestandorchardarea=req.getParameter("forestandorchardarea");
        	   String note=req.getParameter("note");
        	   String sql="insert into Organizations values(seq_Organizations.nextval,'"+orgtypeid+"','"+orgcode+"','"+orgname+"','"+address+"','"+director+"','"+telephone+"','"+fax+"','"+postcode+"','"+web+"','"+safelevelid+"','"+firmlandarea+"','"+waterlandarea+"','"+pondarea+"','"+forestandorchardarea+"','"+note+"')";
        	   
        	   new DAO().Update(sql);
        	
        	   List orgxinxi=DAO.getAllOrg();
        	   req.setAttribute("orgxinxi", orgxinxi);
        	   req.getRequestDispatcher("Type/Organizations.jsp").forward(req, resp);
        	   
           }
           else if(method.equals("delorg")){
        	   String orgid=req.getParameter("orgid");
        	   String sql="delete from Organizations where orgid='"+orgid+"'";
        	   
        	   new DAO().Update(sql);
        	   List orgxinxi=DAO.getAllOrg();
        	   req.setAttribute("orgxinxi", orgxinxi);
        	   req.getRequestDispatcher("Type/Organizations.jsp").forward(req, resp);
           }
           else if(method.equals("xiuorg")){
        	   String orgid=req.getParameter("orgid");
        	   List Org=DAO.getAllOrgbyid(orgid);
        	   req.setAttribute("Org", Org);
        	   
        	   req.getRequestDispatcher("Type/xiuOrganizations.jsp").forward(req, resp);
        	   
           }
           else if(method.equals("saveOrg")){
        	   String orgid=req.getParameter("orgid");
        	   int orgtypeid=Integer.parseInt(req.getParameter("orgtypeid"));
        	   String orgcode=req.getParameter("orgcode");
        	   String orgname=req.getParameter("orgname");
        	   String address=req.getParameter("address");
        	   String director=req.getParameter("director");
        	   String telephone=req.getParameter("telephone");
        	   String fax=req.getParameter("fax");
        	   String postcode=req.getParameter("postcode");
        	   String web=req.getParameter("web");
        	   String safelevelid=req.getParameter("safelevelid");
        	   String firmlandarea=req.getParameter("firmlandarea");
        	   String waterlandarea=req.getParameter("waterlandarea");
        	   String pondarea=req.getParameter("pondarea");
        	   String forestandorchardarea=req.getParameter("forestandorchardarea");
        	   String note=req.getParameter("note");
        	   
        	   String sql="update Organizations set orgtypeid='"+orgtypeid+"',orgcode='"+orgcode+"',orgname='"+orgname+"',address='"+address+"',director='"+director+"',telephone='"+telephone+"',fax='"+fax+"',postcode='"+postcode+"',web='"+web+"',safelevelid='"+safelevelid+"',firmlandarea='"+firmlandarea+"',waterlandarea='"+waterlandarea+"',pondarea='"+pondarea+"',forestandorchardarea='"+forestandorchardarea+"',note='"+note+"' where orgid='"+orgid+"'";
        
        	   new DAO().Update(sql);
               
               List orgxinxi=DAO.getAllOrg();
        	   req.setAttribute("orgxinxi", orgxinxi);
        	   req.getRequestDispatcher("Type/Organizations.jsp").forward(req, resp);
               
           
           }
           /***
            * 
            * 组织机构类型
            */
           else if(method.equals("type")){
        	   if(empInfo.getDuty().equals("管理员")){
	        	   List type=DAO.getAllOrgType();
	        	   req.setAttribute("type", type);
	        	   req.setAttribute("typexinxi", "type");
	        	   req.getSession().setAttribute("guanli", "guanli");
	        	   req.getRequestDispatcher("Type/OrgType.jsp").forward(req, resp);
        	   }
        	   else {
        		 
        		  req.getSession().setAttribute("guanli", null);
        		  req.getRequestDispatcher("frame/a.jsp").forward(req, resp);
        	  }
        	   
           }
           else if(method.equals("xiutype")){
        	   String orgtypeid=req.getParameter("orgtypeid");
        	   Orgtype type=DAO.getType(orgtypeid);
        	  
        	   req.setAttribute("type", type);
        	   req.getRequestDispatcher("Type/xiuOrgType.jsp").forward(req, resp);
           }
           else if(method.equals("baotype")){
        	   String orgtypeid=req.getParameter("orgtypeid");
        	   String orgtypename=req.getParameter("orgtypename");
        	   String note=req.getParameter("note");
        	   String sql="update OrgType set orgtypename='"+orgtypename+"',"+"note='"+note+"' where orgtypeid='"+orgtypeid+"'";
        	
        	   new DAO().Update(sql);
        	   List type=DAO.getAllOrgType();
        	   req.setAttribute("type", type);
        	   req.setAttribute("typexinxi", "type");
        	   req.getRequestDispatcher("Type/OrgType.jsp").forward(req, resp);
           }
           else if(method.equals("deltype")){
        	   String orgtypeid=req.getParameter("orgtypeid");
        	   List organization=DAO.getAllOrgs(orgtypeid);
        	   if(organization.size()==0){
        		   String sql="delete from OrgType where orgtypeid='"+orgtypeid+"'";
            	   new DAO().Update(sql); 
            	   req.setAttribute("typexinxi", "type");
        	   }
        	   else{
        		   req.setAttribute("typexinxi", null);
        	   }
        	   List type=DAO.getAllOrgType();
        	   req.setAttribute("type", type);
        	   req.getRequestDispatcher("Type/OrgType.jsp").forward(req, resp);
           }
           else if(method.equals("addtype")){
        	  
        	   String orgtypeid=req.getParameter("orgtypeid");
        	   String orgtypename=req.getParameter("orgtypename");
        	   String note=req.getParameter("note");
   
        	   String sql="insert into OrgType values(seq_OrgType.nextval,'"+orgtypename+"','"+note+"')";
        	   new DAO().Update(sql);
        	   List type=DAO.getAllOrgType();
        	   req.setAttribute("type", type);
        	   req.setAttribute("typexinxi", "type");
        	   req.getRequestDispatcher("Type/OrgType.jsp").forward(req, resp);
           }
          
           

    }
}
