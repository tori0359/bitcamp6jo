<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.SimpleDateFormat,java.util.Date,com.bit.lms.model.dto.*"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
		<div class="attend_div">
			<h2>답변</h2>
			<form action="qnaQT_upd.lms" method="POST">
			<table class="type11">
			<%QnaDto qto=(QnaDto)request.getAttribute("qnaUpd"); %>
			<input type="hidden" name="idx" value="<%=qto.getNum()%>"/>
				<tr>
					<th class="th1">작성자</th>
					<td style="text-align: left"><input type="text" disabled="disabled" name="name" value="<%=session.getAttribute("name")%>"/></td>
				</tr>
				<%
				SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
				Date time = new Date();
				
				String currentTime=format1.format(time);
				%>
				<tr>
					<th class="th1">작성일자</th>
					<td style="text-align: left"><input type="text" disabled="disabled" name="updatedate" value="<%=currentTime%>"/></td>
				</tr>
				<tr>
					<th class="th1">제목</th>
					<td style="text-align: left"><input type="text" name="asub"/></td>
				</tr>
				<tr>
					<th class="th1">내용</th>
					<td style="text-align: left"><input type="text" name="acontent"/></td>
				</tr>
			</table>
			
				<button type="submit" class="list_btn">수 정</button>
				<button class="list_btn">목 록</button>
			
			</form>		
		</div>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>