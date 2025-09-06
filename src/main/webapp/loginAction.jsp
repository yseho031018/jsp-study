<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // request : jsp 내장 객체로 사용자의 웹 브라우저로부터 온 요청 정보를 담고 있다.
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("org.mariadb.jdbc.Driver");

        String dbURL = "jdbc:mariadb://127.0.0.1:3306/jsp_db";
        String dbUser = "root";
        String dbPassword = "mariadb";

        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        String sql = "select userPw from member where userId = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId);

        rs = pstmt.executeQuery();

        if(rs.next()){
            String dbUserPw = rs.getString("userPw");
            if(dbUserPw.equals(userPw)){
                session.setAttribute("userId", userId);
                response.sendRedirect("main.jsp");
            } else {
                response.sendRedirect("login.jsp?error=1");
            }
        } else {
            response.sendRedirect("login.jsp?error=1");
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if(rs != null) try { rs.close(); } catch (SQLException e) {}
        if(pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
        if(conn != null) try { conn.close(); } catch (SQLException e) {}
    }

%>