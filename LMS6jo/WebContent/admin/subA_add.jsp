<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/header.jspf" %>
	<div id="mainA">
		<div id="leftMenu">
	        <ul>
	            <li><a class="active">관리자 페이지</a></li>
	            <li><a href="##">메인</a></li>
	            <li><a href="##">강좌개설</a></li>
	            <li><a href="##">반배정</a></li>
	            <li><a href="##">출결관리</a></li>
	        </ul>
	    </div>
        <div id="bigsubAdiv">
            <h1>강좌 추가</h1>
            <div id="subAdiv">
                <div>
                    <div>강좌명</div>
                    <div><input type="text"/></div>
                </div>
                <div>
                    <div>강사명</div>
                    <div><input type="text"/></div>
                </div>
                <div>
                    <div>제한인원</div>
                    <div><input type="text"/> 명</div>
                </div>
                <div>
                    <div>수강 마감일</div>
                    <div><input type="date"/></div>
                </div>
                <div>
                    <div>교육 기간</div>
                    <div><input type="date"/> ~ <input type="date"/></div>
                </div>
                <div>
                    <textarea cols="91" rows="10"></textarea>
                </div>
                <div><input type="submit" value="입력" id="submitA"></div>
            </div>
        </div>
       
    </div>
<%@include file="./../common/footer.jspf" %>
