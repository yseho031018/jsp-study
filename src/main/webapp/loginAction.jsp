<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    boolean loginSuccess = false;

    if (userId != null && userId.equals("admin") && userPw != null && userPw.equals("1234")){
        loginSuccess = true;
    }
%>
<html>
<head>
    <title>로그인 결과</title>
</head>
<body>
    <h2>로그인 결과</h2>
    <% if(loginSuccess) { %>
        <p><%= userId %>님, 환영합니다!</p>
    <% } else { %>
        <p>아이디 또는 비밀번호가 일치하지 않습니다.</p>
        <a href="login.jsp">로그인 페이지로 돌아가기</a>
    <% } %>
</body>
</html>
