package com.yuservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yuDAO.ModulesDAO;

public class MainModule extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

//			System.out.println("进入servlet");
			List moudles=ModulesDAO.findallinfo();
			req.setAttribute("moudles", moudles);
//			System.out.println("进入 jsp");
			req.getRequestDispatcher("modules/Mainmodule.jsp").forward(req, resp);
			
	}
}
