<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="model.Contact" %>
<%@ page import="model.User" %>

<%--
  Created by IntelliJ IDEA.
  User: annetteiglesias
  Date: 2019-10-21
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>


<%--Build A Login Form--%>

<%--Create two files, login.jsp and profile.jsp--%>

<%--When a user visits /login.jsp, they should see a form for logging in--%>

<%--This form should have a 'username' and 'password' field.--%>

<%--This form should submit a POST request to /login.jsp--%>

<%--Inside of login.jsp write some code to check the submmitted values. If the username --%>
<%--submitted is "admin", and the password is "password", redirect the user to the profile page;--%>
<%--otherwise, redirect back to the login form.--%>
<%



    if ("Admin".equalsIgnoreCase(request.getParameter("username")) && "password".equals(request.getParameter("password"))) {
        response.sendRedirect("/profile.jsp");
    }

%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="../css/practiceLoginForm.css">
    <link rel="stylesheet" href="../css/navbar.css">
</head>
<body>
<%@ include file="partials/navbar.jsp" %>
<form action="/login.jsp" method="Post">
    <div class="container">
        <h1>Register</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>

        <label for="username"><b>Email</b></label>
        <input id="username" type="text" placeholder="Enter username" name="username" required>

        <label for="password"><b>Password</b></label>
        <input id= "password" type="password" placeholder="Enter Password" name="password" required>
        <hr>

        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
        <button type="submit" class="registerbtn">Register</button>
    </div>

    <div class="container signin">
        <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>
</form>
</body>
</html>
