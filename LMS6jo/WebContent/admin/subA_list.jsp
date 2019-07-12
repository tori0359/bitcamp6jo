<%@page import="com.bit.lms.model.dto.SubjectDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
    <script>
      $( document ).ready( function() {
        $( '.check_all' ).click( function() {
          $( '.attend_cb' ).prop( 'checked', this.checked );
        } );
      } );
     </script>
	<div id="content">
	<div id="leftMenu">
        <ul>
            <li><a class="active">관리자 페이지</a></li>
            <li><a href="##">메인</a></li>
            <li><a href="##">강좌개설</a></li>
            <li><a href="##">반배정</a></li>
            <li><a href="##">출결관리</a></li>
        </ul>
    </div>
		<div id="subContent">
		<div class="list_div">
			<h2>강좌번호</h2>
			<table class="type12">
				<thead>
					<tr>
						<th><input type="checkbox" name="all" class="check_all"></th>
						<th>강좌번호</th>
						<th>강좌명</th>
						<th>강사명</th>
						<th>제한인원</th>
						<th>마감일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
				<%
					ArrayList<SubjectDto> list = null;
					list = (ArrayList<SubjectDto>)request.getAttribute("subList");
					if(list != null){
						for(SubjectDto bean : list){
				%>
						<td><input type="checkbox" name="sub_cb<%=bean.getNum() %>" class="attend_cb"></td>
						<td><%=bean.getNum() %></td>
						<td><a href="<%=root%>/admin/subA_detail.jsp?idx=<%=bean.getNum() %>"><%=bean.getName() %></a></td>
						<td><%=bean.getAdminName() %> </td>
						<td><%=bean.getLimitNum() %></td>
						<td><%=bean.getLimitEnd()%> </td>
					</tr>
				<%
						}
					}
				%>
				</tbody>
			</table>
			<a class="list_btn" href="<%=root%>/admin/subA_add.jsp">강좌개설</a>
		</div>
			
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>
