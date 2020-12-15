<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Start </title>

    <script>
        function validate()
        {
            var username = document.form.username.value;
            var password = document.form.password.value;

            if (username==null || username=="")
            {
                alert("Username cannot be blank");
                return false;
            }
            else if(password==null || password=="")
            {
                alert("Password cannot be blank");
                return false;
            }
        }
    </script>
</head>
<body>
<div style="text-align:center"><h1>Norges Roforbund </h1> </div>
<br>
<form name="form" action="${pageContext.request.contextPath}\LoginServlet" method="post" onsubmit="return validate()">
    <!-- Do not use table to format fields. As a good practice use CSS -->
    <table align="center">
        <tr>
            <td>Username</td>
            <td><input type="text" name="username" /></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" /></td>
        </tr>
        <tr> <!-- refer to the video to understand request.getAttribute() -->
            <td><span style="color:#ff0000"><%=(request.getAttribute("errMessage") == null) ? ""
                    : request.getAttribute("errMessage")%></span></td>
        </tr>

        <tr>
            <a href="Register.jsp">Har ikke en bruker? Trykk her!</a>
        </tr>


        <tr>
            <td></td>
            <td><input type="submit" value="Login"></input><input
                    type="reset" value="Nullstil"></input></td>
        </tr>
    </table>
</form>


<!-- <p>Click here to send a request for a user.
    <a href="RequestUserNameFromDb">get user</a></p>>
-->



<!--<div class="container" style="background-color:#f1f1f1">
    <button type="buttn" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
-->

</body>
</html>

