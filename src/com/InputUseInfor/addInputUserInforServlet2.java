package com.InputUseInfor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addInputUserInforServlet2 extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      inputUserInforModel inputUserInfor_Model=new inputUserInforModel();
      inputUserInfor_Model.setBalanceID(Integer.parseInt(req.getParameter("BalanceID")));
      inputUserInfor_Model.setOperateTime(req.getParameter("OperateTime"));
      inputUserInfor_Model.setBatchID(req.getParameter("BatchID"));
      inputUserInfor_Model.setObjectID(Integer.parseInt(req.getParameter("ObjectName")));
      inputUserInfor_Model.setMaterialTypeName(req.getParameter("MaterialTypeName"));
      inputUserInfor_Model.setQuantity(Integer.parseInt(req.getParameter("Quantity")));
      inputUserInfor_Model.setSubTypeID(Integer.parseInt(req.getParameter("SubTypeName")));
      inputUserInfor_Model.setPrice(Integer.parseInt(req.getParameter("Price")));
      inputUserInfor_Model.setAmountMoney(Integer.parseInt(req.getParameter("AmountMoney")));
      inputUserInfor_Model.setBalanceState(req.getParameter("BalanceState"));
      inputUserInfor_Model.setSendPersion(req.getParameter("SendPersion"));
      inputUserInfor_Model.setAcceptPersion(req.getParameter("AcceptPersion"));
      inputUserInfor_Model.setNote(req.getParameter("Note"));
      boolean bln=inputUserInforDAO.saveInputUserInfor2(inputUserInfor_Model);
      if(bln==true)
      {
    	  resp.sendRedirect("InputUseInfor/addInputUserInfor3.jsp");
      }
      else
      {
    	  resp.sendRedirect("");
      }
    }
}
