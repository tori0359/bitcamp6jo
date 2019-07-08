<%@page import="com.bit.lms.model.dto.LearningMaterialsDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../../common/header.jspf" %>
	<div id="content">
		<%@include file="./../../common/submenu.jspf" %>
		<div id="subContent">
			<table class="type11">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>파일여부</th>
					</tr>
				</thead>
				<tbody>
				<%
					ArrayList<LearningMaterialsDto> list = null;
					list = (ArrayList<LearningMaterialsDto>)request.getAttribute("lmList");
					if(list != null){
						for(LearningMaterialsDto bean : list){
				%>
					<tr>
						<td><%=bean.getNum() %></td>
						<td><%=bean.getName() %></td>
						<td><%=bean.getAname() %></td>
						<td><%=bean.getRegdate() %></td>
						<td>
						<% if(bean.getFileName()!=null){%>
							<a href="#">
								<i class="fa fa-file-text-o"></i>
							</a>
						<%}%> 
						</td>
					</tr>
				<%
						}
					}
				%>
				</tbody>
			</table>
			<button class="upload_btn"><a href="<%=root%>/teacher/lmT_add.jsp">업로드</a></button>
		</div>
    </div>
<%@include file="./../../common/footer.jspf" %>