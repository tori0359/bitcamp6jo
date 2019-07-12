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
			<table class="type11">
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
				<button class="list_btn"><a href="qnaQT_upd.bit?idx=#">수정</a></button>
				<button class="list_btn"><a href="">삭제</a></button>
			</center>		
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>