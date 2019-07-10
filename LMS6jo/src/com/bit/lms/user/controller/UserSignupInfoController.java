package com.bit.lms.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms.model.dao.UserDao;
import com.bit.lms.model.dto.UserDto;

@WebServlet("/join/signupInfo.lms")
public class UserSignupInfoController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		UserDto dto=new UserDto();
		dto.setId(req.getParameter("id"));
		dto.setName(req.getParameter("name"));
		dto.setPw1(req.getParameter("pw1"));
		dto.setPw2(req.getParameter("pw2"));
		dto.setCp(req.getParameter("cp1")+"-"+req.getParameter("cp2")+"-"+req.getParameter("cp3"));
		dto.setEmail(req.getParameter("email1")+"@"+req.getParameter("email2"));
		dto.setSex(Integer.parseInt(req.getParameter("sex")));
		dto.setPwA(req.getParameter("pwA"));
		dto.setJoinPath(Integer.parseInt(req.getParameter("joinPath")));
		dto.setPwfno(Integer.parseInt(req.getParameter("pwfno")));
		dto.setSubject(Integer.parseInt(req.getParameter("subno")));
		
		int result=0;
		UserDao dao=new UserDao();
		result=dao.joinUs(dto);
		if(result==1){
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
		}else{
			resp.sendRedirect(req.getContextPath()+"/login/login.jsp");
		}
		
	}
}
