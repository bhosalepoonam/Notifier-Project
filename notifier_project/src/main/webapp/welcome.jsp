<%@page import="notifier_project.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
         <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>
 Welcome, <%= user.getName() %></h1>
<%-- <h3>
Your Account ID: <%= user.getId() %> </h3>
<h3>
Your Email: <%= user.getEmail() %> </h3>
<h3>
Your Password: <%= user.getPassword() %></h3>--%>
<a href="notes.jsp">Note Book</a>
<div style="float:right">
<a href="index.jsp">Log Out</a>
</div>
    </body>
</html>
