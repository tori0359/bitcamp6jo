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
            <div class="clssub"></div>
            <div class="clssub">희망강좌</div>
            <div class="clssub">이름</div>
            <div class="clsmain">
                <form method="post">
            	<%
            	String whatsubb=String.valueOf(request.getAttribute("whatsubb"));
            		if(Integer.parseInt(whatsubb)==1 || request.getAttribute("whatsubb")==null){
            			session.setAttribute("whatsub", 1);
            		}else if(Integer.parseInt(whatsubb)==2){
            			session.setAttribute("whatsub", 2);
            		}
            		ArrayList<UserDto> list= (ArrayList<UserDto>)request.getAttribute("list");
            		for(UserDto udt:list){
            	%>
                    <div>
                        <input type="checkbox" id="c1" name="c1" value="<%=session.getAttribute("whatsub")%>"/>
                        <input type="hidden" id="c1no" name="c1no" value="<%=udt.getNum()%>"/>
                        <label for="c1"><%=udt.getSubject() %></label>
                        <label for="c1"><%=udt.getName() %></label>
                    </div>
                <%} %>
                    <div><input type="submit" value="GO"/></div>
                </form>
            </div>
            <div>
                <form>
                    <select name="ban">
                        <option value="1">java반</option>
                        <option value="2">web반</option>
                    </select>
                    <input type="submit" value="검색"/>
                </form>
            </div>
            <div class="clsmain">
                <form method="post">
            	<% ArrayList<UserDto> list2= (ArrayList<UserDto>)request.getAttribute("list2");
            		for(UserDto udt:list2){
            	%>
                    <div>
                        <input type="checkbox" id="c2" name="c2" value="<%=udt.getNum()%>"/>
                        <label for="c2"><%=udt.getSubject() %></label>
                        <label for="c2"><%=udt.getName() %></label>
                    </div>
                <%} %>
                    <div><input type="submit" value="GO"/></div>
                </form>
            </div>
        </div>        
       
    </div>
<%@include file="./../../common/footer.jspf" %>