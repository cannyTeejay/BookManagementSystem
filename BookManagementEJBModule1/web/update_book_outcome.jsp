<%-- 
    Document   : update_book_outcome
    Created on : 12 May 2025, 10:34:28 PM
    Author     : selal
--%>

<%@page import="za.ac.tut.entities.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Book Outcome Page</title>
    </head>
    <body>
        <h1>Update outcome</h1>
        <%
            Book b = (Book)request.getAttribute("book");
            Long bookId = b.getId();
        %>
        <p>The book with the ID of <%=bookId%> has been Updated!</p>
    </body>
</html>
