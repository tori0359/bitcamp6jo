<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
			<h1>답변등록</h1>
			<table class="type11">
				<tr>
					<th class="th1">작성자</th>
					<td style="text-align: left">황인준</td>
				</tr>
				<tr>
					<th class="th1">작성일자</th>
					<td style="text-align: left">2019-07-01</td>
				</tr>
				<tr>
					<th class="th1">제목</th>
					<td class="updTd" style="text-align: left"><input class="updTd" type="text" style="width:100%; border:0;" value="인생이란?"/></td>
				</tr>
				<tr>
					<th class="th1">내용</th>
					<td class="updTd" style="text-align: left"><input class="updTd" type="text" style="width:100%; border:0;" value="인생무상"/></td>
				</tr>
			</table>
			<center>
				<button class="list_btn">답변등록</button>
				<button class="list_btn">답변취소</button>
			</center>		
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>