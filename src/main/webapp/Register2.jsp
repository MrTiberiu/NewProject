<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<center><h2>Home Page</h2></center>
<%=request.getParameter("userName")%>
<b>User Registration Successful</b>
<br></br>
<b>Please <a href="index.jsp">log-in</a> to continue.</b>


</body>
</html>
