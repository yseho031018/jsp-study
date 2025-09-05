<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // session 에서 userID라는 이름으로 저장된 값을 가져온다
    // 가져온 값은 object 타입이므로 형변환을 해주고 만약 값이 없다면 null이 된다.
    String sessionUserID = (String) session.getAttribute("userId");
%>
<html>
<head>
    <title>메인 페이지</title>
</head>
<body>
    <% if(sessionUserID != null) { %>

        <h2><%= sessionUserID %>님, 환영합니다!</h2>
        <p>로그인에 성공하셨습니다.</p>
        <a href="logout.jsp">로그아웃</a>

    <% } else {%>

        <h2>로그인이 필요합니다.</h2>
        <p>로그인 페이지로 이동해주세요.</p>
        <a href="login.jsp">로그인</a>

    <% } %>
</body>
</html>
