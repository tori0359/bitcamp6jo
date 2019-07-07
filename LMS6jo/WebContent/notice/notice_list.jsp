<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
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
		<div id="notContent">
			<form action="#">
                <input type="text" value="검색어를 입력하세요"/>
                <input type="submit" value="검색"/>
            </form>
			<table class="type11">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody id="nottop">
					<tr>
						<td>1</td>
						<td><a href="#">비트캠프안양지점LMS</a></td>
						<td>황인준1</td>
						<td>2019-07-02</td>
						<td>111</td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>2</td>
						<td><a href="#">비트캠프안양지점LMS</a></td>
						<td>황인준</td>
						<td>2019-07-02</td>
						<td>112</td>
					</tr>
				</tbody>
			</table>
			<div id="notaddbutton"><div><a href="#">글쓰기</a></div></div>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>
