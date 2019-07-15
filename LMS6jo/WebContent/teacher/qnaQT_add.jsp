<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.SimpleDateFormat,java.util.Date"%>
<%@include file="./../common/header.jspf" %>
    <script type="text/javascript">
    	$(document).ready(function(){
    		$('#qna_reset').click(function(){
    			window.history.back();
    		});
    	});
    </script>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
		<div class="attend_div">
			<h2>답변등록</h2>
			<form action="qnaQT_add.lms" method="POST">
			<table class="type14">
				<tr>
					<th>작성자</th>
					<td style="text-align: left"><input type="hidden" name="userno" value="<%=session.getAttribute("userno")%>"/><%=session.getAttribute("name") %></td>
				</tr>
				<tr>
				<%
				System.out.println(session.getAttribute("userno"));
				SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
				Date time = new Date();
				
				String currentTime=format1.format(time);
				%>
					<th>작성일자</th>
					<td style="text-align: left"><input type="hidden" name="regdate" value="<%=currentTime %>"/><%=currentTime %></td>
				</tr>
				<tr>
					<th class="th1">제목</th>
					<td class="updTd" style="text-align: left"><input class="updTd" type="text" style="width:100%; border:0;" name="qsub"/></td>
				</tr>
				<tr>
					<th class="th1">내용</th>
					<td class="updTd" style="text-align: left"><textarea cols="120" rows="10" name="qcontent"></textarea></td>
				</tr>
			</table>
			
				<button type="submit" class="list_btn">답변등록</button>
				<button type="reset" class="list_btn" id="qna_reset">답변취소</button>
				
			</form>
		</div>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>