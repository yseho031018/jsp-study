<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 이 부분은 JSP 주석이라 브라우저에 표시되지 않습니다. --%>

<%!
    // 선언문: 멤버 변수 선언
    int visitorCount = 0;

    // 선언문: 메서드(함수) 선언
    String getGreeting(String name ){
        visitorCount++;
        return "안녕하세요, " + name + "님!";
    }
%>

<%
    //스크립틀릿: 자바 로직을 작성합니다.
    String username = "코딩 파트너";
    String greetingMessage = getGreeting(username);
%>
<html>
<head>
    <title>JSP 기본 구조</title>
</head>
<body>
    <h1>JSP 기본 문법 예제</h1>
    <p><%= greetingMessage %></p>
    <p>이 페이지의 누적 방문 횟수: <%= visitorCount %></p>
</body>
</html>
