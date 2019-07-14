<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
			<h1>답변</h1>
			<form action="qnaQT_detail.lms" method="GET">
			<table class="type11">
				<tr>
					<th class="th1">작성자</th>
					<td style="text-align: left"><input type="text" value="관리자"/></td>
				</tr>
				<tr>
					<th class="th1">작성일자</th>
					<td style="text-align: left"><input type="text" value="2019-07-05"/>></td>
				</tr>
				<tr>
					<th class="th1">제목</th>
					<td style="text-align: left"><input type="text" name="asub" value="제목을 입력"/></td>
				</tr>
				<tr>
					<th class="th1">내용</th>
					<td style="text-align: left"><input type="text" name="acontent" value="내용을 입력"/></td>
				</tr>
			</table>
			<center>
				<button type="submit" class="upd_btn">수정</button>
				<button class="upd_btn">리스트</button>
			</center>
			</form>		
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>