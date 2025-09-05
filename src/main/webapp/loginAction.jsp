<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // request : jsp 내장 객체로 사용자의 웹 브라우저로부터 온 요청 정보를 담고 있다.
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    // 아이디 와 비밀번호가 null이 아니고 admin, 1234인 경우에만 로그인 성공
    if (userId != null && userId.equals("admin") && userPw != null && userPw.equals("1234")){

        // session : 로그인 성공시, session 내장 객체에 사용자 아이디를 저장한다.
        session.setAttribute("userId", userId);

        // response : 사용자에게 보낼 응답 정보를 제어한다.
        response.sendRedirect("main.jsp");
    } else {
        response.sendRedirect("loginForm.jsp");
    }
%>