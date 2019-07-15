<%@page import="com.bit.lms.model.dao.SubjectDao"%>
<%@page import="com.bit.lms.model.dto.SubjectDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
	<%@include file="./../../common/submenu.jspf" %>
		<div id="subContent">
		<div class="list_div">
		<div id="lectureDetail">
			<table class="detail_type">
			<%
			SubjectDto bean= (SubjectDto)request.getAttribute("subDetail");
			%>
				<tr>
					<th>강좌번호</th>
					<td><%=bean.getNum() %></td>
					<th>강좌명</th>
					<td colspan="3"><%=bean.getName() %></td>
				</tr>
				<tr>
					<th>강사명</th>
					<td><%=bean.getAdminName() %></td>
					<th>제한인원</th>
					<td><%=bean.getLimitNum() %></td>
					<th>마감일</th>
					<td><%=bean.getLimitEnd() %></td>
				<tr>
					<td colspan=6><%=bean.getContent() %></td>
				</tr>
		</table>
			<div class="">
				<button class="list_btn">수정</button>
				<button class="list_btn">삭제</button>
				
			</div>
			</div>
			</div>
    	</div>
    </div>
<%@include file="./../common/footer.jspf" %>
