<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel= "stylesheet" type="text/css" href="./../css/SignUp.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="./../common/header.jspf" %>
	<div class="container" style="margin-left: 570px;">
        <form method="post" action="#">
            <table id="info-table"> 
            <tbody>
                <tr>
                    <td><h5>아이디</h5></td>
                    <td><input id="userID" name="userID" style="width: 200px; height: 20px;" placeholder="아이디를 입력해주세요.">
                    <button id="btn1" type="button">중복체크</button></td>
                </tr>
                <tr>
                    <td><h5>비밀번호</h5></td>
                    <td><input type="password" id="userPassword1" name="userPassword1" style="width: 200px; height: 20px;" placeholder="비밀번호를 입력해주세요."></td>
                </tr>
                <tr>
                    <td><h5>비밀번호확인</h5></td>
                    <td><input type="password" id="userPassword2" name="userPassword2"style="width: 200px; height: 20px;" placeholder="비밀번호 확인을 입력해주세요."></td>
                </tr>
                <tr>
                    <td><h5>비밀번호 찾기 질문</h5></td>
                    <td>
                       <select name="" id="" style="width: 200px; height: 25px;">
                        <option>선택하세요</option>
                        <option>첫번째</option>
                        <option>두번째</option>
                        <option>세번째</option>
                    </select></td>
                </tr>
                <tr>
                    <td><h5>답</h5></td>
                    <td><input type="text"/style="width: 200px; height: 20px;" placeholder="답변을 입력해주세요."></td>
                </tr>
                <tr>
                    <td><h5>이름</h5></td>
                    <td><input type="text" style="width: 200px; height: 20px;" placeholder="이름 입력해주세요."/></td>
                </tr>
                <tr>
                    <td><h5>생년월일</h5></td>
                    <td><input type="text" style="width: 70px; height: 20px;" placeholder="년(4자)"/>
                    <select name="" id="" style="width: 60px; height: 24px;">
                        <option>월</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                    </select>&nbsp;<input type="text"style="width: 60px; height: 20px;" placeholder="일"/>
                    </td>
                </tr>
                
                <tr>
                    <td><h5>성별</h5></td>
                    <td><select name="" id=""style="width: 200px; height: 24px;">
                        <option>성별</option>
                        <option>남</option>
                        <option>여</option>
                    </select></td>
                </tr>
                <tr>
                    <td><h5>휴대전화</h5></td>
                    <td><select name="" id=""style="width: 60px; height: 24px;">
                        <option>010</option>
                        <option>011</option>
                        <option>017</option>
                    </select> - <input type="text"style="width: 60px; height: 20px;"/> - <input type="text"style="width: 60px; height: 20px;"/></td>
                </tr>
                <tr>
                    <td><h5>이메일</h5></td>
                    <td><input type="text"style="width: 80px; height: 20px;"/>@<select name="" id=""style="width: 140px; height: 24px;">
                        <option>선택하세요</option>
                        <option>naver</option>
                        <option>gmail</option>
                    </select></td>
                </tr>
                <tr>
                    <td><h5>강좌선택</h5></td>
                    <td><select name="" id=""style="width: 240px; height: 24px;">
                        <option>선택하세요</option>
                        <option>첫번째</option>
                        <option>두번째</option>
                        <option>세번째</option>
                    </select></td>
                </tr>
                <tr>
                    <td><h5>가입경로</h5></td>
                    <td><input type="radio" name="rd1"/>인터넷광고
                    <input type="radio" name="rd1"/>고용센터 추천
                    <input type="radio" name="rd1"/>지인추천
                    </td>
                </tr>
                <tr>
                    <td><h5>확인코드</h5></td>
                    <td><input type="text"style="width: 200px; height: 20px;" placeholder="강사만 입력해주세요."/></td>
                </tr>
                <tr><td style="height: 30px"></td></tr>
                <tr>
                    <td style="text-align: center;" colspan="2"><input id="btn2" type="submit" value="회 원 가 입"></td>
                </tr>
                
            </tbody>
            </table>
        </form>
        </div>
<%@ include file="./../common/footer.jspf" %>  
</body>
</html>