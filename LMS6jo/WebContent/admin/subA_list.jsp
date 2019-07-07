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
		<div id="mainA">
			<center>
			<h1>강좌 목록</h1>
			<table id="lectureList">
				<thead>
					<tr>
						<th>강좌번호</th>
						<th>강좌명</th>
						<th>강사명</th>
						<th>제한인원</th>
						<th>마감일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>java강좌</td>
						<td>김강사</td>
						<td>20</td>
						<td>2019-08-08</td>
					</tr>
				</tbody>
			</table>
			</center>
		</div>
    </div>
<%@include file="./../common/footer.jspf" %>
