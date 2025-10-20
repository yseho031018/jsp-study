<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.time.*" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));

    Class.forName("org.mariadb.jdbc.Driver");
    try (
            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/jspdb","jsp","1234");
            Statement stmt = conn.createStatement();
        ) {
            String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0,8);

            stmt.executeUpdate(String.format("delete from board where num=" + num);
        } catch(Exception e){
            out.println(e.getMessage());
        }

        response.sendRedirect("list.jsp");
%>
