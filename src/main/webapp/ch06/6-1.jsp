<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Class.forName("org.mariadb.jdbc.Driver");

    try(Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/jspdb","jsp","1234");){
        out.println(" DB 접속 성공 !");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
