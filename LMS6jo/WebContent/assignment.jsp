<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel= "stylesheet" type="text/css" href="css/list.css">
<%@include file="./common/header.jspf" %>

	<div id="leftMenu">
        <ul>
            <li><a class="active">마이페이지</a></li>
            <li><a href="attend.jsp">출결확인</a></li>
            <li><a href="assignment.jsp">과제제출</a></li>
            <li><a href="##">학습자료다운</a></li>
            <li><a href="##">성적확인</a></li>
            <li><a href="##">QnA</a></li>
            <li><a href="##">회원탈퇴</a></li>
        </ul>
    </div>

	<div id="content">
    	<ul>
    		<li><h2>과제제출</h2></li>
    	</ul><!-- 머야;;왜 리스트 쩜 안생겨.. -->
    	<div id="assign_list_table">
    		
    		<table>
    			<tr>
    				<th>no.</th>
    				<th>제목</th>
    				<th>작성자</th>
    				<th>날짜</th>
    				<th>첨부파일</th>
    			</tr>
    			<tr>
    				<td>1</td>
    				<td>제에에목</td>
    				<td>글쓴이</td>
    				<td>2019-00-00</td>
    				<td>O</td>
    			</tr>
    		</table>
    	
    	</div>
    	<div id="assign_write">
    		<button class="button">글쓰기</button>
    	</div>
    	<div id="searchform">
    	
    	</div>
    	<div id="pageform">
    	
    	</div>
    	
    </div>
<%@include file="./common/footer.jspf" %>
