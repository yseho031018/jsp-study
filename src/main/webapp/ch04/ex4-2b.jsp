<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%  double radius = Double.parseDouble(request.getParameter("radius")); %>
    원의 반지름 : <%= radius %><br>
    원의 둘레 : <%= String.format("%.2f", 2 * Math.PI * radius)%><br>
    원의 넓이 : <%= String.format("%.2f", Math.PI * Math.pow(radius,2))%><br>
</body>
</html>
