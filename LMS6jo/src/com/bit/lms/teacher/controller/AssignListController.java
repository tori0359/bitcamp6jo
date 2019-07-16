package com.bit.lms.teacher.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.lms.model.dao.AssignDao;
import com.bit.lms.model.dao.SubjectDao;

//과제목록 컨트롤러
@WebServlet("/teacher/subject/list.lms")
public class AssignListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			AssignDao dao = new AssignDao();
			
			HttpSession session=req.getSession();
			String adminid=(String)session.getAttribute("adminid");
			if(adminid!=null) {
			
			req.setAttribute("assignList", dao.assignList());
			RequestDispatcher rd = req.getRequestDispatcher("/teacher/subject/list.jsp");
			rd.forward(req, resp);
			}else {
				doPost(req,resp);
			}
			
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		String userno = (String)session.getAttribute("userno");
		int usernum = Integer.parseInt(userno);
		System.out.println("usernum="+usernum);
			
		AssignDao dao=new AssignDao();
		req.setAttribute("assignList", dao.userAssignList(usernum)); 
//		resp.sendRedirect("/LMS6jo/teacher/subject/list.jsp");
		RequestDispatcher rd = req.getRequestDispatcher("/teacher/subject/list.jsp");
		rd.forward(req, resp);
	}
}
