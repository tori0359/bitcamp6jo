<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel= "stylesheet" type="text/css" href="./../css/login.css">
</head>
<body>
<%@ include file="./../common/header.jspf" %>
<div id="login-container">
    <table id="toptable">
       <tbody>
        <tr>
            <td colspan="2"><h2>비밀번호 찾기</h2></td>
        </tr>
        <tr>
            <td colspan="2"><input  id="loginID"  type="text" placeholder="아 이 디"></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 40px; vertical-align: bottom">비밀번호 찾기 질문</td>
        </tr>
        <tr><td colspan="2"><select name="" id="" style="width: 354px; height: 40px;">
            <option>선택하세요</option>
            <option>첫번째</option>
            <option>두번째</option>
            <option>세번째</option>
        </select></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 40px; vertical-align: bottom">답</td>
        </tr>
        <tr>
            <td><input id="pw-anser" type="text" placeholder="질문의 답변을 입력해 주세요."></td>
        </tr>
        </tbody>
    </table>
       <table>
       <br>
        <tr>
            <td style="width: 350px; text-align: center;"><input type="button" id="nextbtn" value="다 음"></td>
        </tr>
        </table>
        </div>
        <br><br><br><br>
<%@ include file="./../common/footer.jspf" %>  
</body>
</html>