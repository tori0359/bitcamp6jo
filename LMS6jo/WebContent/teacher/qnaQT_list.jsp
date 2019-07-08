<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
			<table class="type13">
				<thead>
					<tr>
						<th>번호</th>
						<th>과정명</th>
						<th>질문</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>답변일자</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Java반</td>
						<td><a href="#">인생이란?</a></td>
						<td>황인준</td>
						<td>2019-07-01</td>
						<td>2019-07-02</td>
						<td>답변완료</td>
					</tr>
				</tbody>
			</table>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>