package com.bit.lms.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.bit.lms.model.dao.ClassDao;

@WebServlet("/admin/cls/list.lms")
public class ClassListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("doget");
		ClassDao dao=new ClassDao();
		String numP=req.getParameter("ban");
		if(numP==null) {
			numP="1";
		}
		int num=Integer.parseInt(numP);
		req.setAttribute("list", dao.noClassList());
		req.setAttribute("list2", dao.yesClass(num));
		req.setAttribute("whatsubb", num);
		RequestDispatcher rd = req.getRequestDispatcher("list.jsp");
		rd.forward(req, resp);;
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String num=req.getParameter("c1");
		String num2=req.getParameter("c1no");
		String num3=req.getParameter("c2");
		
		if(num!=null && num2!=null) {
			int classno=Integer.parseInt(num);
			int userno=Integer.parseInt(num2);
			ClassDao dao=new ClassDao();
			
			dao.giveClass(classno,userno);	
		}
		
		if(num3!=null) {
			int userno=Integer.parseInt(num3);
			ClassDao dao=new ClassDao();
			
			dao.deleteClass(userno);
			
		}
		resp.sendRedirect(req.getContextPath()+"/admin/cls/list.lms");
	}
}
