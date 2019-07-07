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
        <div id="bigclsAdiv">
            <h1>반 배정</h1>
            <div id="clsAdiv">
                <div>
                    <div><a href="#">&gt;&gt;&gt;</a></div>
                    <table id="clsAtable1">
                        <thead>
                            <tr>
                                <th></th>
                                <th>희망강좌</th>
                                <th>학생번호</th>
                                <th>이름</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="checkbox"/>
                                </td>
                                <td>java</td>
                                <td>123</td>
                                <td>홍길동</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div>
                    <div><a href="#">&lt;&lt;&lt;</a></div>
                    <table id="clsAtable2">
                        <thead>
                            <tr>
                                <th></th>
                                <th>학생번호</th>
                                <th>이름</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="checkbox"/>
                                </td>
                                <td>123</td>
                                <td>홍길동</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
	        </div>
		</div>
       
    </div>
<%@include file="./../common/footer.jspf" %>
