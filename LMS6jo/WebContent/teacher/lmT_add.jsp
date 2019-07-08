<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
			<h1>학습자료 등록</h1>
			<table class="type11">
				<tr>
					<th>제목</th>
					<td style="text-align: left;">비트캠프의 비밀</td>
				</tr>
				<tr>
					<th class="file">파일첨부</th>
					<td>
						<input type="file"/>
					</td>
				</tr>
			</table>
			<center>
				<input type="button" class="regist" value="등록"/>
			</center>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>