<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.time.*" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));

    String writer = request.getParameter("writer");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    if (writer != null && writer.length() > 0 &&
            title != null && title.length() > 0 &&
            content != null && content.length() > 0) {
        Class.forName("org.mariadb.jdbc.Driver");
        try (
                Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/jspdb","jsp","1234");
                Statement stmt = conn.createStatement();
        ) {
            String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0,8);

            stmt.executeUpdate(String.format("update board set writer='%s', title='%s', content='%s', regtime='%s' where num=%d",
                    writer, title, content, curTime, num));
        } catch(Exception e){
            out.println(e.getMessage());
        }

        response.sendRedirect("view.jsp?num=" + num);
        return;
    }

%>
<!-- 에러 출력 -->
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<script>
    alert('모든 항목이 빈칸 없이 입력되어야 합니다.')
    history.back();
</script>
</body>
</html>