<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.time.*" %>
 <%
        String writer = request.getParameter("writer");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        Class.forName("org.mariadb.jdbc.Driver");
        try (
                Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/jspdb","jsp","1234");
                Statement stmt = conn.createStatement();
        ) {
            String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0,8);
            stmt.executeUpdate(String.format("insert into board (writer, title, content, regtime, hits) values ('%s', '%s', '%s', '%s', 0)",
                    writer, title, content, curTime
            ));
    } catch(Exception e){
        out.println(e.getMessage());
    }

    response.sendRedirect("list.jsp");
%>
