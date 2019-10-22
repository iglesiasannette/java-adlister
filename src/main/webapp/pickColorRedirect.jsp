

<%--
  Created by IntelliJ IDEA.
  User: annetteiglesias
  Date: 2019-10-21
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>

<%

    String color = request.getParameter("faveColor");


%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        body {
            background-color: <%= color %>
        }
    </style>

</head>
<body>


</body>
</html>
