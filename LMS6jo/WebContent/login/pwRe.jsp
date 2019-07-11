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
            <td colspan="2"><h2>비밀번호 재설정</h2></td>
        </tr>
       <tr>
           <td>
               <h3 style="width: 70px;">아이디 :</h3>
           </td>
            <td style="width: 280px;"><h3 style="color: #3498DB"><%=request.getParameter("param") %></h3></td>
       </tr>
        <tr>
            <td colspan="2" style="height: 60px;"><input  id="loginID"  type="text" placeholder="새 비밀번호"></td>
        </tr>
        <tr>
            <td colspan="2"><input  id="loginID"  type="text" placeholder="새 비밀번호 확인"></td>
        </tr>

        </tbody>
    </table>
       <table>
       <br>
        <tr>
            <td style="width: 350px; text-align: center;"><input type="button" id="nextbtn" value="확 인"></td>
        </tr>
        </table>
        </div>
        <br><br><br><br>
<%@ include file="./../common/footer.jspf" %>  
</body>
</html>