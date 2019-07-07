<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
			<h1>답변수정</h1>
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
					<td style="text-align: left"><input type="text" value="제목을 입력!"/></td>
				</tr>
				<tr>
					<th class="th1">내용</th>
					<td style="text-align: left"><input type="text" value="내용을 입력!"/></td>
				</tr>
			</table>
			<center>
				<button class="upd_btn">수정</button>
				<button class="upd_btn">리스트</button>
			</center>		
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>