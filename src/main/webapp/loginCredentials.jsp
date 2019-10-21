<%--
  Created by IntelliJ IDEA.
  User: annetteiglesias
  Date: 2019-10-21
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String email = (request.getParameter("email") != null) ? request.getParameter("email") : "";
    String psw = (request.getParameter("psw") != null) ? request.getParameter("psw") : "";

%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/practiceLoginForm.css">
</head>
<body>

<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>"email" parameter: <%= request.getParameter("email") %></p>
<p>"password" parameter: <%= request.getParameter("psw") %></p>




</body>
</html>
