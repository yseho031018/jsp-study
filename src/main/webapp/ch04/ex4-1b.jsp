<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int kor = Integer.parseInt(request.getParameter("kor"));
        int eng = Integer.parseInt(request.getParameter("eng"));
        int math = Integer.parseInt(request.getParameter("math"));

        int sum = kor + eng + math;
        double avg = (double) sum / 3;
    %>
    국어 : <%= kor %><br>
    영어 : <%= eng %><br>
    수학 : <%= math %><br>
    총점 : <%= sum %><br>
    평균 : <%= String.format("%.2f", avg) %><br>
</body>
</html>
