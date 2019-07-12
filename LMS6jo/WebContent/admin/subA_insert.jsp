<%@page import="java.sql.Date"%>
<%@page import="com.bit.lms.model.dao.SubjectDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String subnm=request.getParameter("subnm");
		String content=request.getParameter("content");
		String limitno = request.getParameter("limitno");
		int limitNum=Integer.parseInt(limitno);
		String limitEnd = request.getParameter("limit_year")+"-"+request.getParameter("limit_month")+"-"+request.getParameter("limit_day");
		String eduStart = request.getParameter("start_year")+"-"+request.getParameter("start_month")+"-"+request.getParameter("start_day");
		String eduEnd = request.getParameter("end_year")+"-"+request.getParameter("end_month")+"-"+request.getParameter("end_day");
		
		
		
		SubjectDao dao=new SubjectDao();
		dao.subjectAdd(subnm, content, limitNum, limitEnd, eduStart, eduEnd); 
		response.sendRedirect("subA_list.lms");
		
	%>
</body>
</html>