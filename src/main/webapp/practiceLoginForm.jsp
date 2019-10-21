<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Practice </title>
    <link rel="stylesheet" href="../css/practiceLoginForm.css">
</head>
<body>
<form action="/loginCredentials.jsp" method="Post">
    <div class="container">
        <h1>Register</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>

        <label for="email"><b>Email</b></label>
        <input id="email" type="text" placeholder="Enter Email" name="email" required>

        <label for="psw"><b>Password</b></label>
        <input id= "psw" type="password" placeholder="Enter Password" name="psw" required>
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