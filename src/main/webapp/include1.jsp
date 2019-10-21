<%--
  Created by IntelliJ IDEA.
  User: annetteiglesias
  Date: 2019-10-21
  Time: 09:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Include Example</title>
    <link rel="stylesheet" href="">
    <%@include file="partials/stylesheets.html" %>
</head>
<body>

<%@include file="partials/navbar.jsp" %>

<h1>Some title</h1>

<%@include file="partials/footer.html" %>

</body>
</html>