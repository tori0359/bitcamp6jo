<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="content">
		<%@include file="./../common/submenu.jspf" %>
		<div id="subContent">
			<h2>출결관리</h2>
			<div class="attend_div">
			<table class="">
				<thead>
					<tr>
						<th rowspan=2>번호</th>
						<th rowspan=2>학생이름</th>
						<%for(int i=1; i<32; i++){ %>
						<th><%=i%></th>
						<%} %>
					</tr>
					<tr>
						<%for(int i=1; i<32; i++){
						if(i==8){%>
						<th><input type="checkbox" id="cb1"></th>
						<%}else{%>
						<th></th>
						<%}
						}  %>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>학생1</td>
						<%for(int i=1; i<32; i++){
						if(i==8){%>
						<td><input type="checkbox" id="cb1"></td>
						<%}else{%>
						<td></td>
						<%}
						}  %>
					</tr>
				</tbody>
			</table>
			<p class="btn_p">
				<input class="list_btn" type="submit" value="출석"/>
			</p>
			</div>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>