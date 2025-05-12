<%-- 
    Document   : delete_book_outcome
    Created on : 12 May 2025, 10:53:56 PM
    Author     : selal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Outcome Page</title>
    </head>
    <body>
        <h1>Delete Outcome</h1>
        <%
            Long id = (Long)request.getAttribute("id");
        %>
        <p>The Book with the ID of <%=id%> has been Deleted Successfully!!.</p>
        <p>Click <a href="home.jsp">here</a> to go back to home page.</p>
    </body>
</html>
