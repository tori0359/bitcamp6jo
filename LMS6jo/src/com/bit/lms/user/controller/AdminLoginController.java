package com.bit.lms.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.lms.model.dao.UserDao;

@WebServlet("/login/adminlogin.lms")
public class AdminLoginController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		
		UserDao dao=new UserDao();
		int result=dao.login(id, pw);
		
		System.out.println(result);
		
		HttpSession session=req.getSession();
		
		if(result==1){
			session.setAttribute("id", id);
			System.out.println("result=1");
			resp.sendRedirect("/LMS6jo/index.jsp?param=success");
		}else{
			resp.sendRedirect("");
			resp.sendRedirect("/LMS6jo/login/login.jsp?param=fail");
		}
		
	}
}
