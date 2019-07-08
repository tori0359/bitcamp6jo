<%@page import="com.bit.lms.model.dto.AssignDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../../common/header.jspf" %>
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
					<td colspan="3"><a id="subjectName" href="#"><%=bean.getFileName() %></a></td>
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