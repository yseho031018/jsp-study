<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로그아웃 -->
<%
    session.removeAttribute("userId");
    session.removeAttribute("userName");

    response.sendRedirect("login_main.jsp");
%>