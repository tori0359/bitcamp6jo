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
            <td colspan="2"><h2>로그인</h2></td>
        </tr>
        <tr>
            <td colspan="2"><input  id="loginID"  type="text" placeholder="아 이 디"></td>
        </tr>
        <tr>
            <td colspan="2"><input id="loginPW" type="text" placeholder="비밀번호"></td>
        </tr>
        <tr><td colspan="2"><input id="loginbtn" type="button" value="로그인"></td>
        </tr>
        <tr>
            <td colspan="2" style="border-bottom: 2px solid darkgray"><input type="checkbox"><label for="">아이디 기억하기</label></td>
        </tr>
        </tbody>
    </table>
       <table>
       <br>
        <tr>
            <td style="width: 175px; height: 25px; text-align: center; border-right:2px solid darkgray "><a class="atag" href="#">비밀번호 찾기</a></td>
            <td style="width: 175px; text-align: center;"><a class="atag" href="#">회원가입</a></td>
        </tr>
        </table>
        </div>
        <br><br><br><br>
<%@ include file="./../common/footer.jspf" %>  
</body>
</html>