<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="model.Contact" %>
<%@ page import="model.User" %>


<%--
  Created by IntelliJ IDEA.
  User: annetteiglesias
  Date: 2019-10-21
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>

<%
List<Contact> contacts = Arrays.asList(
        new Contact ("annette", "210-123-4567"),
        new Contact ("joe", "210-222-2222"),
        new Contact ("diego", "210-333-3333")
);


    request.setAttribute("contacts", contacts);
    request.setAttribute("loggedInUser", new User("Annette"));



%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Contacts</title>
    <style>
        div {
            background: teal;
            color: white;
            margin: 1em 0;
            padding: 1em;
            border-radius: .2em;
        }
    </style>
</head>
<body>

<h1>Contacts</h1>

<c:forEach var="contact" items="${contacts}">

    <div>
        <h3>${contact.name}</h3>
        <h3>Phone number: ${contact.phoneNumber}</h3>
        <c:if test="${contact.name.equalsIgnoreCase(loggedInUser.name)}">
            <a href="">Edit Contact</a>
        </c:if>
    </div>


</c:forEach>



</body>
</html>
