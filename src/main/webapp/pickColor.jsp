<%--
  Created by IntelliJ IDEA.
  User: annetteiglesias
  Date: 2019-10-21
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>

<%--#### Color Page--%>
<%--​--%>
<%--A user goes to a url "/pickcolor.jsp". On the "pickcolor.jsp" page, the user is --%>
<%--prompted to enter their favorite color. Upon clicking submit, they are redirected to a page --%>
<%--with a background color of their favorite color.--%>
<%--​--%>
<%--- use a POST request on the form--%>
<%--- use two JSPs--%>
<%--- use style tags--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<form action="/pickColorRedirect.jsp" method="Post">
    <div class="container">

        <label for="faveColor"><b>Enter Your Favorite Color: </b></label>
        <input id="faveColor" type="text" placeholder="Enter your favorite color" name="faveColor" required>

        <button type="submit" class="submitbtn" onclick="">Submit</button>
    </div>
</form>
</body>
</html>
