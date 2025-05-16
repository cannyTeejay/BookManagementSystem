<%-- 
    Document   : number_format_error
    Created on : 16 May 2025, 7:07:17 PM
    Author     : selal
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number Format Error Page</title>
    </head>
    <body>
        <h1>Error</h1>
        <%
            String error = exception.getMessage();
        %>
        <p>Error -> <%=error%></p>
        <p>Click <a href="home.jsp">here</a> to go back to home page.</p>
    </body>
</html>
