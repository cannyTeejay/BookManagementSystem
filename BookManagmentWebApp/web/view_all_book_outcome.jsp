<%-- 
    Document   : view_all_book_outcome
    Created on : 12 May 2025, 11:12:46 PM
    Author     : selal
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Page</title>
    </head>
    <body>
        <h1>View All Books</h1>
        <table>
            <th>ID</th>
            <th>Author</th>
            <th>Title</th>
            <th>Year</th>
            <%
            List<Book> books = (List<Book>)request.getAttribute("books");
            
            for(int i=0;i<books.size();i++){   
                Long id = books.get(i).getId();
                String author = books.get(i).getAuthor();
                String title = books.get(i).getTitle();
                Integer year = books.get(i).getYear();
                                 
            %>  
            
            <tr>
                <td><%=id%></td>
                <td><%=author%></td>
                <td><%=title%></td>
                <td><%=year%></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
