package com.bit.lms.teacher.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms.model.dao.QnaDao;

@WebServlet("/teacher/qnaQT_upd.lms")
public class QnaAUpdController extends HttpServlet{

	//수정 창으로
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String param=req.getParameter("idx");
//		int num=Integer.parseInt(param);
//		System.out.println("idx:"+num);
//		QnaDao dao=new QnaDao();
		
		RequestDispatcher rd = req.getRequestDispatcher("/teacher/qnaQT_upd.jsp");
		rd.forward(req, resp);
	}
	
	//수정
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
