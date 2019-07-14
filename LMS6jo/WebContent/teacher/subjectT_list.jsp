<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
		<div class="list_div">
			<!--  <h1>과제관리</h1>-->
			<table class="type11">
				<thead>
					<tr>
						<th>번호</th>
						<th>과제명</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>파일여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="<%=root %>/teacher/subjectT_detail.jsp">비트캠프안양지점LMS</a></td>
						<td>황인준</td>
						<td>2019-07-02</td>
						<td><a href="#"><i class="fa fa-file-text-o"></i></a></td>
					</tr>
				</tbody>
			</table>
		</div>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>