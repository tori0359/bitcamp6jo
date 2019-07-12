<%@page import="com.bit.lms.model.dao.SubjectDao"%>
<%@page import="com.bit.lms.model.dto.SubjectDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
	<div id="leftMenu">
        <ul>
            <li><a class="active">관리자 페이지</a></li>
            <li><a href="##">메인</a></li>
            <li><a href="##">강좌개설</a></li>
            <li><a href="##">반배정</a></li>
            <li><a href="##">출결관리</a></li>
        </ul>
    </div>
		<div id="subContent">
		<div class="list_div">
		<div id="lectureDetail">
			<table class="detail_type">
			<%
			String param=request.getParameter("idx");
			int num=Integer.parseInt(param);
			SubjectDao dao=new SubjectDao();
			SubjectDto bean=dao.subjectDetail(num);
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
			<p class="">
				<button class="list_btn">수정</button>
				<button class="list_btn">삭제</button>
			</p>
			</div>
			</div>
    	</div>
    </div>
<%@include file="./../common/footer.jspf" %>
