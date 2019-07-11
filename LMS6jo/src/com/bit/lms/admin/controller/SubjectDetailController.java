package com.bit.lms.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms.model.dao.SubjectDao;

@WebServlet("/admin/subA_Detail.lms")
public class SubjectDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SubjectDao dao = new SubjectDao();
		req.setAttribute("subDetail", dao.subjectDetail());
		
		RequestDispatcher rd = req.getRequestDispatcher("/admin/subA_Detail.jsp");
		rd.forward(req, resp);
	}
}
