<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="com.bit.lms.model.dto.AssignDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../../common/header.jspf" %>
<%!
	public String getFilePath(String... filePath) {
		String file = "";	

		for(String s : filePath) {
			File f = new File(s);
	
			if(f.exists()) {
				file = s;
				break;
			}
		}
		return file;
	}
%>
	<div id="content">
		<%@include file="./../../common/submenu.jspf" %>
		<div id="subContent">
			<table class="type11">
			<%
			AssignDto bean = (AssignDto)request.getAttribute("assignDetail");
			%>
				<tr>
					<th>번호</th>
					<td><%=bean.getNum() %></td>
					<th>작성자</th>
					<td><%=bean.getUname() %></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><%=bean.getName() %></td>
					<th>작성일</th>
					<td><%=bean.getRegdate() %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td style="height: 100px; text-align: left"colspan="3"><%=bean.getContent() %></td>
				</tr>
				<tr>
					<th class="file">파일명</th>
					<td colspan="3" style="text-align: left;">
						<%  
						   if(bean.getFileName()!=null){
							   	String fileName = (String)request.getAttribute("fileName");
							   	ServletContext context = getServletContext();
							   	String realFolder = context.getRealPath("/upload/teacher");
							   	String filePath = realFolder+"/"+fileName;
								String s = getFilePath(filePath);
								
								/*
									이슈사항 :  1. 파일이 한글명인 경우 오류 발생
												2. 파일이 문서인경우 창에서 모두 보여줌
								*/
								if(s==null || s.equals("") || s.equals("null")) {
									//업로드 폴더에 저장된 파일명과 DB에 저장된 파일명이 다를경우(또는 파일이 없는경우)
									out.write(fileName + " 파일이 존재하지 않습니다");
									return;
								}else{
						%>
							<a id="subjectName" href="<%=root %>/upload/teacher/<%=(String)request.getAttribute("fileName")%>"><%=bean.getFileName() %></a>	
						<%
								}
							}
						%>
					</td>
				</tr>
			<%
			
			%>
			</table>
			<center>
				<button class="upd_btn">수정</button>
				<button class="del_btn">삭제</button>
			</center>		
		</div>
    </div>
<%@include file="./../../common/footer.jspf" %>

