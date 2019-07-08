<%@page import="com.bit.lms.model.dto.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../../common/header.jspf" %>
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
        <div id="bigclsAdiv">
            <div>
                <form>
                    <select>
                        <option value="java">java반</option>
                        <option value="web">web반</option>
                    </select>
                    <input type="submit" value="검색"/>
                </form>
            </div>
            <div class="clssub"></div>
            <div class="clssub">희망강좌</div>
            <div class="clssub">이름</div>
            <div class="clssub">나이</div>
            <div id="clsmain">
                <form action="#" method="post">
            	<% ArrayList<UserDto> list= (ArrayList<UserDto>)request.getAttribute("list");
            		for(UserDto udt:list){
            	%>
                    <div>
                        <input type="checkbox" id="c1" name="cc" value=""/>
                        <label for="c1"><%=udt.getNum() %></label>
                        <label for="c1"><%=udt.getName() %></label>
                        <label for="c1"><%=udt.getSubject() %></label>
                    </div>
                <%} %>
                    <div><input type="submit" value="GO"/></div>
                </form>
            </div>
        </div>        
       
    </div>
<%@include file="./../../common/footer.jspf" %>