<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
		<div class="list_div">
			<table class="type12">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>파일여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="#">비트캠프안양지점LMS</a></td>
						<td>황인준</td>
						<td>2019-07-02</td>
						<td><a href="#"><i class="fa fa-file-text-o"></i></a></td>
					</tr>
				</tbody>
			</table>
			<button class="list_btn"><a href="<%=root%>/teacher/lmT_add.jsp">업로드</a></button>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>