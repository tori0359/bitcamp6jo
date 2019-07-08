<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
			<table class="type11">
				<tr>
					<th>번호</th>
					<td>1</td>
					<th>작성자</th>
					<td>황인준</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>비트캠프안양지점LMS</td>
					<th>작성일</th>
					<td>2019-07-01</td>
				</tr>
				<tr>
					<th>내용</th>
					<td style="height: 100px; text-align: left"colspan="3">흐엉</td>
				</tr>
				<tr>
					<th class="file">파일명</th>
					<td colspan="3"><a id="subjectName" href="#">비트캠프안양지점LMS.doc</a></td>
				</tr>
			</table>
			<center>
				<button class="upd_btn">수정</button>
				<button class="del_btn">삭제</button>
			</center>		
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>