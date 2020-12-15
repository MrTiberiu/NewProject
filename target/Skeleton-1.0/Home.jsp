<%--
  Created by IntelliJ IDEA.
  User: ramzanismailov
  Date: 13/12/2020
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>

<center><h2>Home Page</h2></center>
<div class = "w-container">Welcome <%=request.getAttribute("userName") %> </div><!-- Refer to the video to understand how this works -->
<div style="text-align: right"><a href="LogoutServlet">Logout</a></div>


<div class = "box1">
    <a href="AddData.jsp">Legg til data</a>
</div>


<div class = "box2">
    <a href="GetData.jsp">Hent data</a>
</div>



</body>
</html>
