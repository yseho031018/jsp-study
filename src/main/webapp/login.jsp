<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 입력 처리</title>
</head>
<body>
    <h2>로그인</h2>
    <form action="loginAction.jsp" method="get">
        <p>
            아이디: <input type="text" name="userId">
        </p>
        <p>
            비밀번호: <input type="password" name="userPw">
        </p>
        <p>
            <input type="submit" value="로그인">
        </p>
    </form>
</body>
</html>
