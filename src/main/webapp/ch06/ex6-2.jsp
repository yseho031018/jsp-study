<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<%
    Class.forName("org.mariadb.jdbc.Driver");
    try (
            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/jspdb", "jsp", "1234");
            Statement stmt = conn.createStatement();
    ) {
        String sql =
                "create table addrbook (" +
                "num int primary key, " +
                "name varchar(20), " +
                "addr varchar(80), " +
                "tel varchar(30)" +
                ")";

        stmt.executeUpdate(sql);
        out.println("주소록" + "테이블 생성 성공 !");

    } catch(Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>