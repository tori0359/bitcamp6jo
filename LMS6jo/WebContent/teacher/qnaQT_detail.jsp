<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.bit.lms.model.dto.*"%>
<!--<jsp:useBean id="qto1" scope="request" class="com.bit.lms.model.dto.QnaDto"></jsp:useBean>-->
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<!-- <script type="text/javascript">
			$(document).ready(function(){
				$('.list_btn>a').last().click(function(){
					var result=confirm('삭제하시겠습니까?');
					if(result){
						$.ajax({
							url:'delete.bit',
							method:'post',
							data:'idx='+,
							error:function(){
								alert('삭제실패');
							},
							success:function(){
								window.location.href='list.bit';
							}
						});
					}
					return false;
				});
		</script> -->
		<div id="subContent">
		<%
			QnaDto qto=(QnaDto)request.getAttribute("qnaDetail");
		%>
		<form action="qnaQT_upd.lms">
			<table class="type11">
			<input type="hidden" name="qnano" value="<%=qto.getNum()%>" />
				<tr>
					<th class="th1">작성자</th>
					<td style="text-align: left"><%=qto.getName1() %></td>
				</tr>
				<tr>
					<th class="th1">작성일자</th>
					<td style="text-align: left"><%=qto.getRegDate() %></td>
				</tr>
				<tr>
					<th class="th1">제목</th>
					<td style="text-align: left"><%=qto.getqSub() %></td>
				</tr>
				<tr>
					<th class="th1">내용</th>
					<td style="text-align: left"><%=qto.getqContent() %></td>
				</tr>
			</table>
			<center>
				<%if(String.valueOf(session.getAttribute("deptno")).equals("1")){%>
				
				<button type="submit" class="list_btn">답변</button>
				<button class="list_btn"><a href="#">삭제</a></button>
				<%}else { %>
				<button type="submit" class="list_btn">수정</button>
				<button class="list_btn"><a href="#">삭제</a></button>
				<%} %>
			</center>
			</form>		
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>