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
            <div class="notDetail">
                <div>제목</div>
                <div id="notaddsub">111</div>
                <div>상단노출</div>
                <div><input type="checkbox"/></div>
            </div>
            <div class="notDetail">
                <textarea rows="10" cols="120"></textarea>
            </div>
	        <div class="notButton">
	        	<div style="opacity: 0"></div>
	            <div><a href="#">등록</a></div>
	            <div><a href="#">뒤로</a></div>
	        </div>
        </div>
    </div>
<%@include file="./../common/footer.jspf" %>