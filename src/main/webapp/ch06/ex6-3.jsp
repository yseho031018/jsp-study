<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<%
    Class.forName("org.mariadb.jdbc.Driver");
    try (Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/jspdb","jsp","1234");
         Statement stmt = conn.createStatement();)
    {
        String[][] addrbook = {
                {"1", "홍길동", "서울", "123-4567"},
                {"2", "이순신", "통영", "346-1234"},
                {"3", "이름3", "대전", "152-1241"},
        };

        for(int i = 0; i < addrbook.length; i++){
            String sql = String.format(
                    "insert into addrbook values (%s,'%s','%s','%s')",
                    addrbook[i][0], addrbook[i][1], addrbook[i][2], addrbook[i][3]
            );

            stmt.executeUpdate(sql);
            out.println("쿼리 실행 성공 : " + sql + "<br>");
        }
    } catch(Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>