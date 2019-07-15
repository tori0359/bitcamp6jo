package com.bit.lms.attendTest;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ListController extends HttpServlet{
	// /list.bit
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//model
		Attend2Dao dao=new Attend2Dao();
		ArrayList<Attend2Dto> list = dao.getList();
		
		//view
		req.setAttribute("alist", list);
		
		RequestDispatcher rd = req.getRequestDispatcher("attend.jsp");
		rd.forward(req, resp);
	}
}
